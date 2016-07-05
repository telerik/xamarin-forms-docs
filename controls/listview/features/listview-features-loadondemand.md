---
title: Load on demand
page_title: Load on demand
position: 
slug: listview-features-loadondemand
description: Describing RadListView load on demand mechanism
tags: radlistview, lazy, incremental, loading, load, on demand
---

# Load on demand

With our 2016 R3 official release we introduced new items loading mechanism. This mechanism allows the developer to load items into the RadListView component only when the end-user wants to see more. It can serve to reduce the intial loading time by loading a few items at startup (ensuting fast loading) and add additional items at runtime (on a user request). 

# API

The LoadOnDemand API consist of:

	- IsLoadOnDemandEnabled (bool): Gets or sets a boolean value indicating if the feature is enabled or not.
	- IsLoadOnDemandActive (bool): Gets or sets a boolean value indicating if the items loading logic is currently working. This property should be set to False once the custom logic completes loading. 
	- LoadOnDemandMode (LoadOnDemandMode): Gets or sets how the end-user will be able to request additional items
		- Manual: The RadListView will visualize a button like items after the last cell of its ItemsSource. The end-user will be able to tap it in order to request additional items.
		- Automatic: The RadListView will automatically trigger the items loading logic whenever there are 5 or less available items outside the viewport of the control.
	- LoadOnDemandItemTemplate (DataTemplate): Gets or sets a description of the visual representation of the button like item.
	- LoadingOnDemandItemTemplate (DataTemplate): Gets or sets a description of the visual representation of the data loading indicator.
	- LoadOnDemand (event): triggered once when the end-user request more items.
	- ListViewLoadOnDemandCollection (ObservableCollection<object>): Gets or sets the custom item loading logic.
	

# Event reliant implementation

One of two ways to implement this feature is to subscribe to the **RadListView.LoadOnDemand** event. In its handler developers can load additional items directly into the **RadListView.ItemsSource** collection. There is no limitation or requirement of the number of items that should be loaded. This event will be triggered once, every time the end-user requests additional items. Triggering this event also changes the special view displayed as last item.

	//Example goes here

# Collection reliant implementation

This approach is an MVVM friendly implementation of the same feature. Developers are allowed to provide a special collection as ItemsSource of the RadListView component. This collection should implement the ISupportLoadOnDemand interface. It contains the following members:
	
	- LoadOnDemandAction (Func<CancellationToken, IEnumerable<object>>) - Gets the function wrapping the custom items loading logic.
	- LoadItemsOnDemand() (void) - a method that triggers the items loading logic.
	
Once a custom collection implements the interface, the RadListView will be to trigger the custom item loading logic and the developer will be able to cancel his/her async taks through the RadListView.IsLoadOnDemandActive property.