---
title: Sorting remote data for DataGrid when using Load On Demand.
description: How to applying DataGrid's SortDescriptors on the remote data source while using load on demand so that it only loads the next set of sorted items.
type: how-to
page_title: Sorting remote data for DataGrid when using Load On Demand.
slug: sorting-remote-data-datagrid-when-using-lod
position: 
tags: datagrid, filtering, sorting, filter, sort, data, datasource, Xamarin, XamarinForms, Android, UWP
ticketid: 
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product</td>
		<td>DataGrid for Xamarin</td>
	</tr>
</table>


## Description

The DataGrid's Load On Demand feature gets smaller sets of items incrementally. When using sorting in this scenario, the DataGrid can only sort the items it has because it is not aware of the rest of the items in the incrementally loaded data source.

When sorting is applied, the DataGrid will automatically sort the new items as they are loaded. For example, if a TextColumn was being sorted, you would see:

`ABCDEFGHIJ`

When Load On Demand is invoked and the next items are loaded, you would see the following after the SortDescriptor is reapplied:

`AABBBCCDEEEFGGHHHIJ`

Those items are properly sorted according to all of the items in the DataGrid's ItemsSource. However, what if you wanted the result to load everything presorted in the batches like this:

`AAAAAAAAAAAAAAAAAA`

You need a way to tell the data source to presort those items, then give you the next set of items. Then, you can add the presorted items to the DataGrid.

## Solution

The solution to this is to look at the `SortDescriptor` that is currently applied to the DataGrid and then tell the data source to sort the items before giving you the next set. To do this, you can look at the `DataGrid.SortDescriptors` collection and use that descriptor to build the LINQ or SQL statement.

### Example

As example, assume we have a DataGrid to show a list of Products using the LoadOnDemand event. Visit the [Load On Demand](https://docs.telerik.com/devtools/xamarin/controls/datagrid/load_on_demand) documentation to understand how this is setup.

The user has sorted the **ProductName** column and wants all the "A" products from the database first. 

```csharp
private void DataGrid_OnLoadOnDemand(object sender, LoadOnDemandEventArgs e)
{
    IEnumerable<Product> nextProducts = null;

    // If there is a SortDescriptor
    if (DataGrid.SortDescriptors.Any())
    {
        // Get the sort descriptor (use foreach DataGrid.SortDescriptors for a more robust version of this)
        SortDescriptorBase descriptor = DataGrid.SortDescriptors.First();

        // If it is a PropertySortDescriptor, you can check for the property name
        if (descriptor is PropertySortDescriptor propertyDescriptor)
        {
            // you can check for the property name
            if (propertyDescriptor.PropertyName == "ProductName")
            {
                // check if it is ascending or descending
                if (propertyDescriptor.SortOrder == SortOrder.Ascending)
                {
                    nextProducts = ProductsDataBase
                        .OrderBy(p => p.ProductName, (IComparer<string>)propertyDescriptor.Comparer)
                        .Skip(currentCount)
                        .Take(lodBatchCount);
                }
                else
                {
                    nextProducts = ProductsDataBase
                        .OrderByDescending(p => p.ProductName, (IComparer<string>)propertyDescriptor.Comparer)
                        .Skip(currentCount)
                        .Take(lodBatchCount);
                }
            }
        }

        // If there is a DelegateSortDescriptor, you can directly pass the KeySelector and Comparer without needing any property names
        if (descriptor is DelegateSortDescriptor delegateDescriptor)
        {
            if (delegateDescriptor.SortOrder == SortOrder.Ascending)
            {
                nextProducts = ProductsDataBase
                    .OrderBy(p => delegateDescriptor.KeyLookup.GetKey(p), (IComparer<object>)delegateDescriptor.Comparer)
                    .Skip(currentCount)
                    .Take(lodBatchCount);
            }
            else
            {
                nextProducts = ProductsDataBase
                    .OrderByDescending(p => delegateDescriptor.KeyLookup.GetKey(p), (IComparer<object>)delegateDescriptor.Comparer)
                    .Skip(currentCount)
                    .Take(lodBatchCount);
            }
        }


    }
    else
    {
        // NORMAL
        // There was no filtering applied, go about things like you normally would
        nextProducts = ProductsDataBase
            .Skip(currentCount)
            .Take(lodBatchCount);
    }

    // Invoke the statement by calling toList (this is not needed, but recommended while building a multi-stage query from multiple descriptors)
    var result = nextProducts?.ToList();

    // Now add the fetched items to the DataGrid
    foreach (var product in result)
    {
        DataGridItems.Add(product);
    }

    // normal LoD logic
    currentCount += lodBatchCount;
    e.IsDataLoaded = true;

    // If there are no more items, unsubscribe from the event.
    if (currentCount >= ProductsDataBase.Count)
    {
        DataGrid.LoadOnDemand -= DataGrid_OnLoadOnDemand;
    }
}
```

The last thing to consider in this scenario is when the user adds/removes a FilterDescriptor. If they were getting  sorted data, then the sort was removed, you can just keep adding unsorted data because there will eventually be a conflict from loading the same item.

To handle this, you can subscribe to the SortDescriptors.CollectionChanged event handler. In there, Clear all the existing items and then continue on with whatever approach the user has set.

Here's what that looks like for the example. Take notice that in order to keep user experience good, we fetch the same number of items from the database the `currentCount`. This way the user isn't starting all over when they sort.

```csharp
private void SortDescriptors_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
{
    // You need to start over so that unsorted items aren't mixed with sorted items
    DataGridItems.Clear();

    IEnumerable<Product> nextProducts = null;

    // If the sort descriptor was removed, get all the items that were previously loaded, but unsorted.
    if (DataGrid.SortDescriptors.Count == 0)
    {
        foreach (var product in ProductsDataBase.Take(currentCount))
        {
            DataGridItems.Add(product);
        }

        return;
    }

    // If a sort descriptor was added, presort but fetch the currentCount without skipping
    if (e.NewItems?.Count > 0)
    {
        SortDescriptorBase descriptor = e.NewItems[0] as SortDescriptorBase;

        // PropertySortDescriptor approach
        if (descriptor is PropertySortDescriptor propertyDescriptor)
        {
            if (propertyDescriptor.PropertyName == "ProductName")
            {
                // check if it is ascending or descending
                if (propertyDescriptor.SortOrder == SortOrder.Ascending)
                {
                    //
                    nextProducts = ProductsDataBase
                        .OrderBy(p => p.ProductName, (IComparer<string>)propertyDescriptor.Comparer)
                        .Take(currentCount);
                }
                else
                {
                    nextProducts = ProductsDataBase
                        .OrderByDescending(p => p.ProductName, (IComparer<string>)propertyDescriptor.Comparer)
                        .Take(currentCount);
                }
            }
        }

        // DelegateSortDescriptor approach
        if (descriptor is DelegateSortDescriptor delegateDescriptor)
        {
            if (delegateDescriptor.SortOrder == SortOrder.Ascending)
            {
                nextProducts = ProductsDataBase
                    .OrderBy(p => delegateDescriptor.KeyLookup.GetKey(p), (IComparer<object>)delegateDescriptor.Comparer)
                    .Take(currentCount);
            }
            else
            {
                nextProducts = ProductsDataBase
                    .OrderByDescending(p => delegateDescriptor.KeyLookup.GetKey(p), (IComparer<object>)delegateDescriptor.Comparer)
                    .Take(currentCount);
            }
        }
    }

    var result = nextProducts?.ToList();

    foreach (var product in result)
    {
        DataGridItems.Add(product);
    }
}
```

> This approach can also be used for **FilterDescriptors**. Use the same concept with the `DataGrid.FilterDescriptors` collection and write the custom logic accordingly.
