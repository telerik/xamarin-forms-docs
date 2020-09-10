---
title: Overview
page_title: RadListView Behaviors  | Telerik UI for Xamarin.Android Documentation
description: A page about the behaviors in RadListView for Android. This article explains how to use the behaviors supported in RadListView.
slug: listview-behaviors-overview
tags: radlistview, behaviors, overview, list, listview
publish: true
position: 0
---

## ListView for Xamarin.Android: Behaviors

If you have already read the [Getting Started page]({% slug listview-gettingstarted %} "Read the RadListView getting started"), you know how to add **RadListView** instance to your project and populate it with data.
This section will demonstrate how to add different behaviors to the list view instance that we have created.

## Getting Started

The list view behaviors can be used for efficient handling of gestures by **RadListView**. Each behavior handles different gestures in order to provide intuitive response. For example, when the long press gesture is 
detected, **SelectionBehavior** will select the item that was long pressed. 
A behavior can be added to a list view instance through the **addBehavior(ListViewBehavior)** method and removed through **removeBehavior(ListViewBehavior)**. Additionally you can remove all
currently added behaviors with **clearBehaviors()**. Here's an example of adding the **LoadOnDemandBehavior** to a list view instance:


```C#
LoadOnDemandBehavior loadOnDemandBehavior = new LoadOnDemandBehavior ();
listView.AddBehavior (loadOnDemandBehavior);
```

For now, what this will do, is to add a button at the end of the list that can be used by the end user to request loading of more items. You can have a look at the
dedicated page for the [LoadOnDemandBehavior]({% slug listview-behaviors-loadondemand %} "Read more about LoadOnDemandBehavior") to see how to actually load more items when the button is clicked.
Here's the list of the behaviors that are currently available:

* [Selection]({% slug listview-behaviors-selection %} "Read more about SelectionBehavior"): This behavior allows the end users to select items in the list.
* [Item Reorder]({% slug listview-behaviors-itemreorder %} "Read more about ItemReorderBehavior"): This behavior allows the end users to change the order of the items in the list.
* [Load on Demand]({% slug listview-behaviors-loadondemand %} "Read more about LoadOnDemandBehavior"): This behavior allows you to load a few items at first and load more only if necessary.
* [Swipe to Refresh]({% slug listview-behaviors-swiperefresh %} "Read more about SwipeRefreshBehavior"): This behavior allows the end users to reload the items in the list to see if the information is updated.
* [Swipe to Execute]({% slug listview-behaviors-swipeexecute %} "Read more about SwipeExecuteBehavior"): This behavior allows the end users to swipe an item and remove it from the list or execute another predefined command.
* [Sticky Headers]({% slug listview-behaviors-stickyheaders %} "Read more about StickyHeaderBehavior"): This behavior can be used when grouping is enabled to force the header of the first item to remain visible after it is scrolled away.
* [Collapsible Groups]({% slug listview-behaviors-collapsiblegroups %} "Read more about CollapsibleGroupsBehavior"): This behavior can be used when grouping is enabled to allow the users to collapse or expand the groups by tapping on their header.
