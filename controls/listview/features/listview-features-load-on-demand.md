---
title: Load on Demand
page_title: Load on Demand
position: 4
slug: listview-features-load-on-demand
---

# Load On Demand

Loading a large data set on a mobile device has its challenges. One of the most popular approaches is using incremental data loading as the items needs to be visualized. **RadListView** is capable of doing this using its load on demand functionality. The following properties are related to the **LoadOnDemand** feature:

* **IsLoadOnDemandEnabled**(*bool*) - used to enable the load on demand mechanism of RadListView;
* **IsLoadOnDemandActive** (*bool*) can be used once *IsLoadOnDemandEnabled* property is set to *true*. When the data is loading the *IsLoadOnDemandActive = "true"*, otherwhise *IsLoadOnDemandActive = false*.

RadListView offers two loading modes through its **LoadOnDemandMode** property:
 * **Automatic** - the data is requested automatically when you scroll near the end of the listview.
 * **Manual** - a button is rendered at the end of the listview. The data is requested explicitly by pressing the button.

In order to load the data Listview requires either to:
 * Subscribe to **LoadOnDemand** event and add the loaded data to the source.
 * Create **ListViewLoadOnDemandCollection** instance as source and pass it to listview ItemsSource property.

## Automatic mode
You could load the data automatically using event. In this case here is how the setup will look like:

###Define the listview in xaml

Let's have the following ListView definition:
<snippet id='listview-loadondemand-loadondemandeventauto-declaration'/>

You would also need to define the listview namespace:
 <snippet id='xmlns-telerikdatacontrols'/>

###Add the code to load the data in the LoadOnDemand event
First, set listview itemsSource in page constructor:
<snippet id='listview-loadondemand-loadondemandeventauto-bind'/>

Then add the following event handler:
<snippet id='listview-loadondemand-loadondemandeventauto-event'/>

## Manual loading mode
Alternatively you can request items only explicitely when pressing the load more button rendered at the end of the loaded items.

###Define the listview in xaml with manual loading mode

Use the following ListView definition:
<snippet id='listview-loadondemand-loadondemandeventmanual-declaration'/>

You would also need to define the listview namespace
 <snippet id='xmlns-telerikdatacontrols'/>

###Add the code to load the data in the LoadOnDemand event

First, we set listview itemsSource in page constructor:
<snippet id='listview-loadondemand-loadondemandeventmanual-bind'/>

Then, add use the following event handler:
<snippet id='listview-loadondemand-loadondemandeventmanual-event'/>

Figure 1: Manual Loading on demand

![ManualLoadOnDemand](images/listview-features-load-on-demand.png)

## Loading mode with collection
In many sceanarios you would like to control the loading of the data directly from the viewmodel. For these cases you can take advantage of our **ListViewLoadOnDemandCollection** that takes case of reqesting new items internally. It can work both in **Manual** and **Automatic** mode. Let's see the setup for Automatic loading mode using the collection.

###Define the listview in xaml
Define the listview in xaml and bind its ItemsSource to the data in the viewmodel.
<snippet id='listview-loadondemand-loadondemandcollection-declaration'/>

You would also need to define the listview namespace
 <snippet id='xmlns-telerikdatacontrols'/>

###Define the Viewmodel
Use the following snippet to define the ViewModel:
<snippet id='listview-loadondemand-loadondemandcollection-viewmodel'/>

###Bind the BindingContext 
Finally, set the ViewModel as BindingContext in the page constructor:
<snippet id='listview-loadondemand-loadondemandcollection-binding'/>

## Advanced options

###Control the number of preloaded items
This feature works in conjunction with [LoadOnDemandMode.Automatic mode of the listview]({%slug listview-features-load-on-demand%}#automatic-mode).  You can control the number of minimum items loaded ahead through listview **LoadOnDemandBufferItemsCount** property. By default it is set to 10 item. When the listview requests an item in the buffer it will trigger new loading batch.

###Change the appearance of Manual load button
This feature works in conjunction with [LoadOnDemandMode.Manual mode of the listview]({%slug listview-features-load-on-demand%}#manual-loading-mode)
You can control load more button content through the **LoadOnDemandItemTemplate** property.
<snippet id='listview-loadondemand-loadondemandcustomizations-lodbutton'/>

###Change the appearance of Manual loading indicator
This feature works in conjunction with [LoadOnDemandMode.Manual mode of the listview]({%slug listview-features-load-on-demand%}#manual-loading-mode)
You can control the loadinf indicator content through the **LoadingOnDemandItemTemplate** property.
<snippet id='listview-loadondemand-loadondemandcustomizations-loadingindicator'/>

## See Also

- [Events]({%slug listview-features-events%})
- [Selection]({%slug listview-features-selection%})
- [Reordering]({%slug listview-features-reorder-items%})
