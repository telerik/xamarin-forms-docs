---
title: Load on Demand
page_title: Xamarin ListView Documentation | Load on Demand
description: Check our &quot;Load on Demand&quot; documentation article for Telerik ListView for Xamarin control.
position: 8
slug: listview-features-load-on-demand
---

# Load on Demand

Loading a large data set on a mobile device has its challenges. One of the most popular approaches is using incremental data loading when the items need to be visualized. **RadListView** does this by using its load-on-demand functionality.

## Configuration

The following properties control the **LoadOnDemand** feature:

* **IsLoadOnDemandEnabled**(*bool*) - used to enable the load on demand mechanism of RadListView.
* **IsLoadOnDemandActive** (*bool*) - used to control the loading indicator that is rendered when the data is retrieved asynchronously. Set it to `True` when an async operation is running and items are loading. Set it to `False` when the items are loaded.
* **LoadOnDemandMode** - used to set the loading mode. You can select between:
  * **Automatic** - the data is requested automatically when you scroll near the end of the ListView.
  * **Manual** - a button is rendered at the end of the ListView. The data is requested explicitly by pressing the button.

## Methods to Load Data on Demand

There are three ways to load the data on demand, regardless of whether you use the **Automatic** or **Manual** loading mode:

* [Create a **ListViewLoadOnDemandCollection** instance as a source and pass it to the ListView ItemsSource property](#using-loadondemandcollection).
* [Subscribe to the **LoadOnDemand event** and add the loaded data to the source](#using-loadondemand-event).
* [Use the **LoadOnDemand UserCommand** and add the loaded data to the source](#using-loadondemand-command).

>note All three approaches for loading items on demand in ListView work with both Automatic and Manual LoadOnDemandMode.

### Using LoadOnDemandCollection

To load items on demand, you can utilize the **ListViewLoadOnDemandCollection** and set it as ItemsSource for ListView. The ListViewLoadOnDemandCollection accepts an action in the constructor and this action is later executed by the ListView in a non-UI thread when new items are requested.

The example below demonstrates how to use LoadOnDemandCollection:

1. Define a sample ViewModel class with *Source* property of type ListViewLoadOnDemandCollection:

    <snippet id='listview-loadondemand-loadondemandcollection-viewmodel'/>

2. Define RadListView instance and bind its ItemsSource to the data in the viewmodel:

    <snippet id='listview-loadondemand-loadondemandcollection-declaration'/>

3. Define the ListView namespace:

    <snippet id='xmlns-telerikdatacontrols'/>

4. Set the ViewModel as BindingContext in the page constructor:

    <snippet id='listview-loadondemand-loadondemandcollection-binding'/>

### Using LoadOnDemand Event

Another way to handle loading more items is to use the **LoadOnDemand** event. This event is being raised on a UI thread, so in the event handler you can add items right away or asynchronously:

* In case the data is available right away, add the items to the ListView ItemsSource in the LoadOnDemand event handler.
* In case you require an async operation, set the **IsLoadOnDemandActive** property of the ListView to `True`. This notifies the ListView that it must display the loading indicator. Then an async call can be initiated to get the data. When the new items are ready, you must set the **IsLoadOnDemandActive** property to `False` again to notify the ListView that the load-on-demand operation is completed.

The example below demonstrates how to use the LoadOnDemand event:

1. Define ListView:

    <snippet id='listview-loadondemand-loadondemandeventauto-declaration'/>

2. Define the ListView namespace:

    <snippet id='xmlns-telerikdatacontrols'/>

3. Set ListView itemsSource in page constructor:

    <snippet id='listview-loadondemand-loadondemandeventauto-bind'/>

4. Add the following event handler:

<snippet id='listview-loadondemand-loadondemandeventauto-event'/>

### Using LoadOnDemand Command

This approach is similar to [using the LoadOnDemand event](#using-loadondemand-event), but in this case, the load-on-demand is handled in the ViewModel through the **LoadOnDemandUserCommand** exposed by RadListView. In the Execute method of the command, you can add items right away or asynchronously:

* In case the data is available right away, add the items to the ListView ItemsSource in the LoadOnDemand command Execute method.
* In case you require an async operation, set the **IsLoadOnDemandActive** property of the ListView to `True`. This notifies the ListView that it must display the loading indicator. Then an async call can be initiated to get the data. When the new items are ready, you must set the **IsLoadOnDemandActive** property to `False` again to notify the ListView that the load-on-demand operation is completed. You can control the behavior of **IsLoadOnDemandActive** through a binding to a boolean property in the ViewModel class.

The example below demonstrates how to use the LoadOnDemand command:

1. Create a ViewModel class with a LoadItemsCommand as well as IsLoadingMoreItems bool property:

    <snippet id='listview-loadondemand-loadondemandcommand-viewmodel' />

2. Define the RadListView instance in XAML with the ListViewUserCommand defined as well as the **IsLoadOnDemandActive** property bound to the boolean property in the ViewModel:

    <snippet id='listview-loadondemand-loadondemandcommand-declaration'/>

3. Define the following namespaces:

```XAML
xmlns:telerikDataControls="clr-namespace:Telerik.XamarinForms.DataControls;assembly=Telerik.XamarinForms.DataControls"
xmlns:telerikListViewCommands="clr-namespace:Telerik.XamarinForms.DataControls.ListView.Commands;assembly=Telerik.XamarinForms.DataControls"
```

4. Set the ViewModel as BindingContext in the page constructor:

<snippet id='listview-loadondemand-loadondemandcommand-binding'/>

## Advanced Options

### Control the Number of Preloaded Items

This feature works in conjunction with the [LoadOnDemandMode.Automatic mode of the ListView]({%slug listview-features-load-on-demand%}#automatic-mode). You can control the minimum number of items loaded ahead through ListView's **LoadOnDemandBufferItemsCount** property. By default, it is set to 10 items. When ListView requests an item in the buffer, it will trigger a new loading batch.

### Change the Appearance of the Manual Load Button

This feature works in conjunction with the [LoadOnDemandMode.Manual mode of the ListView]({%slug listview-features-load-on-demand%}#manual-loading-mode). You can control the content of the Load More Button through the **LoadOnDemandItemTemplate** property.

<snippet id='listview-loadondemand-loadondemandcustomizations-lodbutton'/>

### Change the Appearance of the Manual Loading Indicator

This feature works in conjunction with the [LoadOnDemandMode.Manual mode of the ListView]({%slug listview-features-load-on-demand%}#manual-loading-mode).
You can control the content of the Loading Indicator through the **LoadingOnDemandItemTemplate** property.

<snippet id='listview-loadondemand-loadondemandcustomizations-loadingindicator'/>

## See Also

- [Events]({%slug listview-features-events%})
- [Selection]({%slug listview-features-selection%})
- [Reordering]({%slug listview-features-reorder-items%})
