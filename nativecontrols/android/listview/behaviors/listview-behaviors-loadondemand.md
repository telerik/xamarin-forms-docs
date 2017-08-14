---
title: Load on Demand
page_title: Load on Demand Behavior | Telerik UI for Xamarin.Android Documentation
description: A help topic about LoadOnDemandBehavior in RadListView for Android.
slug: listview-behaviors-loadondemand
tags: radlistview, behaviors, loadondemand, list, listview
publish: true
position: 3
---

# RadListView: LoadOnDemandBehavior

If your list contains a lot of items, it may not be necessary to load of them at the start. Here the **LoadOnDemandBehavior** can be useful to allow the end user to request the loading of more items if needed.
There are two modes for this behavior: manual and automatic. The manual is represented by a button at the end of the list that can be clicked to load more items. The automatic mode, as the name suggests,
automatically requests the loading of more items when the list is scrolled to a position close to the end of the currently loaded items.

## Getting Started

If you have read the [Getting Started page]({% slug listview-gettingstarted %} "Read the RadListView getting started"), you already have a project with **RadListView** which is populated with items of type **City**. In 
the [Behaviors Overview]({% slug listview-behaviors-overview %} "Read the behaviors overview page for RadListView") we introduced the behaviors and now we will go into more details about the **LoadOnDemandBehavior**.
Here's how to add the **LoadOnDemandBehavior** to your list view instance:


```C#
LoadOnDemandBehavior loadOnDemandBehavior = new LoadOnDemandBehavior ();
listView.AddBehavior (loadOnDemandBehavior);
```

This will only show a button at the end of the list, but in order to actually load items, you need to add a **LoadOnDemandListener**.

## LoadOnDemandListener

The **LoadOnDemandListener** should be used to get notification that loading is requested. Here's one simple implementation:


```C#
public class LoadListener : Java.Lang.Object, LoadOnDemandBehavior.ILoadOnDemandListener {
	private ListViewAdapter listViewAdapter;
	public LoadListener(ListViewAdapter adapter) {
		listViewAdapter = adapter;
	}
	public void OnLoadStarted ()
	{
		City city = new City("Naples", "Italy");
		listViewAdapter.Add(city);
		listViewAdapter.NotifyLoadingFinished ();
	}
	public void OnLoadFinished ()
	{
	}
}
```

That will result in addition of a new city at the end of the list every time the load more button is pressed. Note that you need to manually notify that you have finished the loading process. This can be done with either
ListViewAdapter's **notifyLoadingFinished()** method or with LoadOnDemandBehavior's **endLoad()**. The result is the same, so you can use the one that is more suitable for you. 
Now what's left to do is to add the listener to the behavior:


```C#
LoadListener loadListner = new LoadListener (cityAdapter);
loadOnDemandBehavior.AddListener (loadListner);
```

## Automatic mode

The **LoadOnDemandBehavior** also provides an automatic mode that allow loading of items in a way in which the end user may not even realize that all items were not loaded at the start. 
Here's how we can switch the mode to automatic:


```C#
loadOnDemandBehavior.Mode = LoadOnDemandBehavior.LoadOnDemandMode.Automatic;
```

What happens now is that whenever the user is near the end of the list new items are requested. What exactly is 'near the end' is defined by the max remaining items. You can get the current value with **getMaxRemainingItems()**
and set a new value with **setMaxRemainingItems(int)**. The default value is `10`. What it means 
for the behavior is that when the remaining items (the items that are not yet visible to the user) become less than the value specified by that number, new items will be requested. 
Let's add some numbers to make things more clear. Let's say the max remaining items are set to `3` and the items loaded at the beginning are `10`. When the user scrolls the list and reaches the position of the 7th item
(which means that there are 3 more items for him to see from the currently loaded list) the request is issued and more items are loaded. 
In this mode, again, you are expected to notify either the adapter or the behavior that you have finished with the loading so 
that the indicator's state can be correctly updated.

## Customization

The **LoadOnDemandBehavior** has one more constructor that allows you to use your own custom Views that will be used for indicators in both modes: **LoadOnDemandBehavior(View manualDemandView, automaticDemandView)**. 
If you add your custom views, you will need to handle manually the changes in their state (for example you can disable the button while the loading process is in progress). 
In that case you will need to use the **startLoad()** method to initiate the load (for example when the button is clicked).