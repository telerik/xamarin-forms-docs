---
title: Item Reorder
page_title: Item Reorder Behavior | Telerik UI for Android Documentation
description: A help topic about ItemReorderBehavior in RadListView for Android.
slug: listview-behaviors-itemreorder
tags: radlistview, behaviors, itemreorder, list, listview
publish: true
position: 2
---

# RadListView: ItemReorderBehavior and ReorderWithHandlesBehavior

The **ItemReorderBehavior** can be used to allow the end user to reorder an item by long-pressing and dragging it. When a long-press gesture is detected, the item that lies beneath is highlighted.
Any forthcoming move gestures cause the item to be dragged around the screen and if at some point another item lies beneath the dragged item's position is changed to the position of the new item.

![TelerikUI-ListView-Reorder](/controls/listview/behaviors/images/listview-behaviors-itemreorder-1.png "Here's how the reordered item looks like.")

The **ReorderWithHandlesBehavior** can be used to allow the end user to reorder an item by simply dragging it. This behavior requires specifying a `View` which must be part of the item. It will work as a reorder handle. Dragging the item by this handle will initiate the reorder operation. The constructor of the `ReorderWithHandlesBehavior` accepts the ID of that view.

The following screenshot and code snippet demonstrate a custom reorder handle within an item:

![TelerikUI-ListView-Reorder](/controls/listview/behaviors/images/listview-behaviors-itemreorder-handles-1.png "Here's how the reordered item looks like.")

In that particular case the **ReorderWithHandlesBehavior** is instantiated with the id of the element within the item view that represents the reorder handle:

``` Java
this.reorderBehavior = new ReorderWithHandlesBehavior(R.id.imgReorder);
```
```C#
this.reorderBehavior = new ReorderWithHandlesBehavior(R.id.imgReorder);
```

## Getting Started

If you have read the [Getting Started page]({% slug listview-gettingstarted %} "Read the RadListView getting started"), you already have a project with **RadListView** which is populated with items of type **City**. In 
the [Behaviors Overview]({% slug listview-behaviors-overview %} "Read the behaviors overview page for RadListView") we introduced the behaviors and now we will go into more details about the **ItemReorderBehavior**.
All you need to do, in order to enable the reorder is to add an instance of the **ItemReorderBehavior** to your list view instance:

```Java
ItemReorderBehavior itemReorderBehavior = new ItemReorderBehavior();
listView.addBehavior(itemReorderBehavior);
```
```C#
ItemReorderBehavior itemReorderBehavior = new ItemReorderBehavior ();
listView.AddBehavior (itemReorderBehavior);
```

## ItemReorderListener

If you need to monitor the changes in the order of the items, you can use the **addListener(ItemReorderBehavior.ItemReorderListener)** method to add a new listener or **removeListener(ItemReorderBehavior.ItemReorderListener)**
to remove an existing one. The listener will be notified on the following events: **onReorderStarted(int position)**, **onReorderItem(int positionFrom, int positionTo)** and **onReorderFinished()**. 

## Additional features

## Disabling reorder for specific items

The **ListViewAdapter** class allows you to have more control on the reorder process if necessary. It has two methods which are related to the reordering functionality: **canReorder(int position)** and 
**reorderItem(int oldPosition, int newPosition)**. The first can be used to disable reordering of an item with a specific position and the second can be used for disabling specific reorder operations. Here's an example of
how we can override these methods in our custom adapter implementation:

```Java
@Override
public boolean canReorder(int position) {
	if(position == 0) {
		return false;
	}
	return true;
}

@Override
public boolean reorderItem(int oldPosition, int newPosition) {
	if(newPosition == 0) {
		return false;
	}
	return super.reorderItem(oldPosition, newPosition);
}
```
```C#
public override bool CanReorder (int position)
{
	if(position == 0) {
		return false;
	}
	return true;
}

public override bool ReorderItem (int oldPosition, int newPosition)
{
	if(newPosition == 0) {
		return false;
	}
	return base.ReorderItem (oldPosition, newPosition);
}
```

With the first method we are telling the reorder behavior that the first item on the list (the one on position `0`) can't be reordered. This means that if the user applies long press on the first item it would not be 
highlighted for reorder. With the second method we allow the reordering to continue only it the newPosition is not `0`. This means that if we have started reordering an item from the list and go above the first item, 
the reordering item will note move to the first position. Instead, it will remain at the position of its last successful reorder operation.