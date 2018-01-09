---
title: Load On Demand
page_title: Load on Demand
position: 3
slug: datagrid-features-loadondemand
---

# Load On Demand #

In specific cases you may need to load data in the **RadDataGrid** when the control is already loaded as this can improve the performance and save computing resources. Loading a large data set on a mobile device has its chalenges. On of the most popular approaches is using incremental data loading in the moment the items need to be visualized. 

## Modes

**RadDataGrid** offers two loading modes which are present in the **LoadOnDemandMode** enumeration:

* **Automatic**: The load on demand mechanism is activated when you scroll down near the last item present in the view port. 
 
>important You can control when the items will start loading more precisely by setting the **LoadOnDemandBufferItemsCount** property. It indicates at what point the additional items will start loading. For example, setting it to 20 will cause the new items to be loaded when you have scrolled the RadDataGrid so that only 20 of the originally loaded items are left below.

* **Manual**: A "Load More" button is present at the bottom of the RadDataGrid. Clicking it will load additional items.


## Approaches

There are three different options for using the load-on-demand feature. You can choose the most convenient for you based on your application requirements:

 * [Using the LoadOnDemand Collection](#load-on-demand-collection)
 * [Using the LoadOnDemand event](#load-on-demand-event)
 * [Using the LoadMoreData Command](#load-on-demand-command)

### LoadOnDemandCollection<T>

In order to use this approach, you should feed the RadDataGrid with a collection of type LoadOnDemandCollection. It is a generic type, so you need to point the type of objects it will contain. It extends the ObservableCollection<T> class and expects a Func<CancellationToken, IEnumerable> in the constructor. Here is a simple setup that shows how to use the collection:

<snippet id='datagrid-loadondemand-collection-csharp'/>

where the **Items** property is declared as follows:

<snippet id='datagrid-loadondemand-collection-property-csharp'/>

### LoadOnDemand Event

You can load new items by utilizing the **LoadOnDemand** event. It uses LoadOnDemandEventArgs arguments where you need to indicate when the data is loaded so that the event is correctly fired afterward. Here is an example:

<snippet id='datagrid-loadondemand-event-csharp'/>

### LoadMoreData Command

The **LoadMoreData** command is another alternative which you can use which is suitable for MVVM scenarios. Here is how you can create such command:

<snippet id='datagrid-customloadmoredatacommand-csharp'/>

Eventually, you need to add this custom command to the Commands collection of the RadDataGrid.

<snippet id='datagrid-customloadmoredatacommand-addtocollection-csharp/>

>important Invoking the **ShowLoadOnDemandLoadingIndicator** and **HideLoadOnDemandLoadingIndicators** is a noteable part as without calling these methods the BusyIndicator used for the functionality will not be visualized.

## Styling

Besides the different approaches for loading the data, we have introduced several mechanisms related to the styling of the functionality which you can use according to the approach you have chosen.

### LoadOnDemandAutoTemplate

Setting this property will modify the appearance of the load on demand indicator when the **LoadOnDemandMode** is **Automatic**.

<snippet id='datagrid-loadondemandautotemplate-xaml'/>

### LoadOnDemandRowStyle 
This property can be used to style the appearance of the row that contains the "Load More" button when the LoadOnDemandMode is Manual.

<snippet id='datagrid-loadondemandrowstyle-xaml'/>

### LoadOnDemandRowTemplate 

This property can be used to set the template of the row that contains the "Load More" button when the LoadOnDemandMode is Manual.

<snippet id='datagrid-loadondemandrowtemplate-xaml'/>


## See Also

* [DataGrid Filtering]({%slug datagrid-filtering-overview%})
* [DataGrid Grouping](%slug datagrid-grouping-overview%)
* [DataGrid Sorting](%slug datagrid-sorting-overview%)