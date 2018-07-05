---
title: Sorting
page_title: Sorting Overview
position: 3
slug: datagrid-sorting-overview
---

# Sorting #

**RadDataGrid** provides you with a built-in sorting functionality, which allows the user to easily sort the data. **Figure 1** shows how the control looks when sorting is applied:

#### Figure 1: Sorted RadDataGrid
![](../images/datagrid_sorting.png)

**RadDataGrid** provides two ways of programmatic sorting:

* by Property - using a **PropertySortDescriptor**
* by custom key - using a **DelegateSortDescriptor**

## PropertySortDescriptor

You can sort the data in a DataGrid by pointing a property  from the class that defines your objects. This can be achieved with a **PropertySortDescriptor** and setting its **PropertyName** property. The descriptor exposes the following important properties:

* **PropertyName:** Gets or sets the name of the property that is used to retrieve the key to sort by.
* **SortOrder:** Gets or sets the order of the sorting. It can be Ascending or Descending.

#### PropertySortDescriptor Example

<snippet id='datagrid-propertysortdescriptor-xaml'/>

			<grid:RadDataGrid.SortDescriptors>
                <common:PropertySortDescriptor PropertyName="Name"/>
            </grid:RadDataGrid.SortDescriptors>

## DelegateSortDescriptor

The difference between the **DelegateSortDescriptor** and the **PropertySortDescriptor** is that DelegateSortDescriptor sorts data by a custom Key, while the PropertySortDescriptor sorts by a defined Key, which is a property from our model. It exposes the following properties:

* **KeyLookup**: Gets or sets the **IKeyLookup** instance that is used to retrieve the sort key for each data item.
* **SortOrder:** Gets or sets the order of the sorting. It can be Ascending or Descending.

To use a DelegateSortDescriptor, you need to create a class that implements the IKeyLookup interface which will return the Key you want to sort by. Then you need to add DelegateSortDescriptor to the RadDataGrid.SortDescriptors collection and set its KeyLookUp property.

#### DelegateSortDescriptor Example

The Custom **IKeyLookup** implementation

<snippet id='datagrid-delegatesortdescriptor-ikeylookup'/>
	
	    public class CustomIKeyLookup : IKeyLookup
        {
            public object GetKey(object instance)
            {
                return (instance as Club).Name.Length;
            }
        }

Adding it to the **GroupDescriptors** collection of the RadDataGrid:

<snippet id='datagrid-delegatesortdescriptor-csharp'/>

	 this.grid.SortDescriptors.Add(new DelegateSortDescriptor() { KeyLookup = new CustomIKeyLookup()});

## See Also

* [DataGrid Filtering]({%slug datagrid-filtering-overview%})
* [DataGrid Grouping](%slug datagrid-grouping-overview%)
