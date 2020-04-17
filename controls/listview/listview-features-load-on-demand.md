---
title: Load on Demand
page_title: Load on Demand
description: Check our &quot;Load on Demand&quot; documentation article for Telerik ListView for Xamarin control.
position: 8
slug: listview-features-load-on-demand
---

# Load On Demand

Loading a large data set on a mobile device has its challenges. One of the most popular approaches is using incremental data loading as the items needs to be visualized. **RadListView** is capable of doing this using its load on demand functionality. 

## Configuration

The following properties are related to the **LoadOnDemand** feature:

* **IsLoadOnDemandEnabled**(*bool*) - used to enable the load on demand mechanism of RadListView;
* **IsLoadOnDemandActive** (*bool*) - this flag should be used when the data is retrieved asynchronously. It should be set to "True" when an async operation is started, to notify the ListView to show loading indicator and to "False" when items are loaded. 

RadListView offers two loading modes through its **LoadOnDemandMode** property:

 * **Automatic** - the data is requested automatically when you scroll near the end of the listview.
 * **Manual** - a button is rendered at the end of the listview. The data is requested explicitly by pressing the button.

There are three ways to load the data on demand, regardless of the loading mode you've chosen:

* Create a **ListViewLoadOnDemandCollection** instance as source and pass it to the ListView ItemsSource property.
* Subscribe to **LoadOnDemand event** and add the loaded data to the source.
* Use the **LoadOnDemand UserCommand** and add the loaded data to the source.

>note Either of the three approaches for loading items on demand in ListView works with both Automatic and Manual LoadOnDemandMode.

## Using LoadOnDemandCollection

One possible approach to load items on demand is by utilizing the **ListViewLoadOnDemandCollection** which should be set as ItemsSource of the ListView. The ListViewLoadOnDemandCollection accepts an action in the constructor and this action is later executed  by the ListView in a non-UI thread when new items are requested.

ListViewLoadOnDemandCollection can work both in **Manual** and **Automatic** mode. Below you can find an example with loading on demand through LoadOnDemandCollection.

First, let's define a sample ViewModel class with *Source* property of type ListViewLoadOnDemandCollection:

<snippet id='listview-loadondemand-loadondemandcollection-viewmodel'/>

Then, define RadListView instance and bind its ItemsSource to the data in the viewmodel:

<snippet id='listview-loadondemand-loadondemandcollection-declaration'/>

You would also need to define the listview namespace:

<snippet id='xmlns-telerikdatacontrols'/>

Finally, set the ViewModel as BindingContext in the page constructor:

<snippet id='listview-loadondemand-loadondemandcollection-binding'/>

## Using LoadOnDemand Event

Another way to handle loading more items is via the **LoadOnDemand** event. This event is being raised on a UI thread, so in the event handler you can add items right away or get the data asynchronously:

* In case data is available right away, you just need to add the items to the ListView ItemsSource in the LoadOnDemand event handler;

* In case an async operation is required, you need to notify the ListView that the loading indicator should be displayed by setting the **IsLoadOnDemandActive** property of the ListView to true. Then an async call can be initiated to get the data. When the new items are ready, you'd need to set the **IsLoadOnDemandActive** property to False, again to notify the ListView that load-on-demand operation is completed.

Again, this approach works with both **Automatic** and **Manual** loading modes.

Let's have the following ListView definition:

<snippet id='listview-loadondemand-loadondemandeventauto-declaration'/>

You would also need to define the listview namespace:

<snippet id='xmlns-telerikdatacontrols'/>

Set ListView itemsSource in page constructor:

<snippet id='listview-loadondemand-loadondemandeventauto-bind'/>

Then add the following event handler:

<snippet id='listview-loadondemand-loadondemandeventauto-event'/>

## Using LoadOnDemand Command

This approach is similar to the one with using the LoadOnDemand event, just in this case the load-on-demand is handled in the ViewModel through the exposed by RadListView **LoadOnDemandUserCommand**. In the Execute method of the command you can add items right away or get the data asynchronously.

* In case data is available right away, you just need to add the items to the ListView ItemsSource in the LoadOnDemand command Execute method;

* In case an async operation is required, you need to notify the ListView that the loading indicator should be displayed by setting the **IsLoadOnDemandActive** property of the ListView to true. Then an async call can be initiated to get the data. When the new items are ready, you'd need to set the **IsLoadOnDemandActive** property to False, again to notify the ListView that load-on-demand operation is completed. You can control the behavior of **IsLoadOnDemandActive** through a binding to a boolean property in the ViewModel class.

You can use **LoadOnDemandUserCommand** with both "Automatic" and "Manual" loading mode depending on the concrete requirements.

First, let's create a ViewModel class with a LoadItemsCommand as well as IsLoadingMoreItems bool property:

<snippet id='listview-loadondemand-loadondemandcommand-viewmodel' />

Define the RadListView instance in XAML with the ListViewUserCommand defined as well as the **IsLoadOnDemandActive** property bound to the boolean property in the ViewModel:

<snippet id='listview-loadondemand-loadondemandcommand-declaration'/>

You would also need to define the following namespaces:

```XAML
xmlns:telerikDataControls="clr-namespace:Telerik.XamarinForms.DataControls;assembly=Telerik.XamarinForms.DataControls"
xmlns:telerikListViewCommands="clr-namespace:Telerik.XamarinForms.DataControls.ListView.Commands;assembly=Telerik.XamarinForms.DataControls"
```

Finally, set the ViewModel as BindingContext in the page constructor:

<snippet id='listview-loadondemand-loadondemandcommand-binding'/>

## Advanced options

### Control the number of preloaded items
This feature works in conjunction with [LoadOnDemandMode.Automatic mode of the listview]({%slug listview-features-load-on-demand%}#automatic-mode).  You can control the number of minimum items loaded ahead through listview **LoadOnDemandBufferItemsCount** property. By default it is set to 10 item. When the listview requests an item in the buffer it will trigger new loading batch.

### Change the appearance of Manual load button
This feature works in conjunction with [LoadOnDemandMode.Manual mode of the listview]({%slug listview-features-load-on-demand%}#manual-loading-mode)
You can control load more button content through the **LoadOnDemandItemTemplate** property.

<snippet id='listview-loadondemand-loadondemandcustomizations-lodbutton'/>

### Change the appearance of Manual loading indicator
This feature works in conjunction with [LoadOnDemandMode.Manual mode of the listview]({%slug listview-features-load-on-demand%}#manual-loading-mode)
You can control the loading indicator content through the **LoadingOnDemandItemTemplate** property.

<snippet id='listview-loadondemand-loadondemandcustomizations-loadingindicator'/>

## See Also

- [Events]({%slug listview-features-events%})
- [Selection]({%slug listview-features-selection%})
- [Reordering]({%slug listview-features-reorder-items%})
