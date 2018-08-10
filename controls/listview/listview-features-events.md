---
title: Events
page_title: Events
position: 11
slug: listview-features-events
description: Describing the events of the RadListView
tags: events
---

# Events

The RadListView component exposes the following events:

###Item events

* __ItemTapped__ - occurs when an item is tapped. The __ItemTapped__ event handler receives two parameters:
	* The sender argument which is of type object, but can be cast to the __RadListView__ type.
	* An __ItemTapEventArgs__ object which has a reference to the tapped item through its **Item** property.

* __ItemHold__ - occurs when the end user is holding on a specific item. The __ItemHold__ event handler receives two parameters:
	* The sender argument which is of type object, but can be cast to the __RadListView__ type.
	* An __ItemHoldEventArgs__ object which has a reference to the held item through its **Item** property.

###Selection events

* __SelectionChanged__ - occurs when the SelectionItems collection is updated. The __SelectionChanged__ event handler receives two parameters:
	* The sender argument which is of type object, but can be cast to the __RadListView__ type.
	* A __NotifyCollectionChangedEventArgs__ object which provides information on the collection changed event. For more details check [here](https://msdn.microsoft.com/en-us/library/system.collections.specialized.notifycollectionchangedeventargs(v=vs.110).aspx).

###Group/Reorder events

* __GroupHeaderTapped__ - occurs when a group header of a grouped ListView is tapped. The __GroupHeaderTapped__ event handler receives two parameters:
	* The sender argument which is of type object, but can be cast to the __RadListView__ type.
	* A __GroupHeaderTapEventArgs__ object which provides the following properties:
		- Key - gets the specific key for the group;
		- Items - gets the child items of the group;

* __ReorderStarting__ - occurs when a reorder operation is about to start. The __ReorderStarting__ event handler receives two parameters:
	* The sender argument which is of type object, but can be cast to the __RadListView__ type.
	* A __ReorderStartingEventArgs__ object provides the following properties:
		- Item - gets the item that is about to be dragged;
		- Cancel - boolean property which can be used to cancel the reorder operation;

* __ReorderEnded__ - occurs when a reorder operation has ended. The __ReorderEnded__ event handler receives two parameters:
	* The sender argument which is of type object, but can be cast to the __RadListView__ type.
	* A __ReorderEndedEventArgs__ object which has a reference to the item that was reordered through its **Item** property;

>You could also check the events related to the cell swiping feature [here]({%slug listview-features-cell-swipe %}).	
	
##See Also

[Selection]({%slug listview-features-selection%})

[Grouping]({%slug listview-features-grouping%})

[Reordering]({%slug listview-features-reorder-items%})


