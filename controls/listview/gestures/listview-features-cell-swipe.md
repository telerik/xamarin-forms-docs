---
title: Cell Swipe
page_title: Cell Swipe
position: 
slug: listview-features-cell-swipe
---

# Cell Swipe

The cell swipe feature allows end-users to use swipe gesture on cells. When the user swipes, the content view moves revealing a designated swipe background view where you can place custom views ready for interaction e.g. buttons, images etc.

## Properties

The following RadListView properties are related to the sell swiping feature:

- **IsItemSwipeEnabled** (bool): Turns on or off the feature. It's default value is false.
- **SwipeThreshhold** (double): Gets or sets the length (in pixels) of the swipe gesture which is required to trigger the feature. Any shorter swipe will not be respected. It's default value is 0.
- **SwipeOffset** (Thickness): Gets or sets how much the swiped cell will be moved to the side and stick there. It's default value is 100.
- **ItemSwipeContentTemplate** (DataTemplate): Gets or sets the content that will be visualized when users swipe a cell.

To enable this feature in a project the **IsItemSwipeEnabled** property of the RadListView should be set to **True**. 

In *Android* it is enough to set this property. It will force the swiped item to stick to the corresponding side. Visualizing the underlying SwipeContent.

In *iOS* however, the **SwipeThreshhold** property should be set to force the items to stick to the swiped side. This property represents the length of the swipe gesture in pixels that will visualize the DataTemplate defined as **ItemSwipeContentTemplate**. Any swipe less than this value will not trigger the Cell Swipe.

## Methods

The following RadListView methods are related to the sell swiping feature:

- void **EndItemSwipe**(bool *isAnimated*): Moves the swiped item to its default position.

## Events

The following RadListView events are related to the sell swiping feature:

- **ItemSwipeStarting**: Occurs when the user has initiated swipe gesture. The event arguments are of type **ItemSwipeStartingEventArgs**, that provides the following properties:
 - **Item** (object): The item that will be swiped.
 - **Cancel** (bool): If you set this value to `false`, the swiping will be canceled.
- **ItemSwiping**: Occurs while the user is swiping the item. The event arguments are of type **ItemSwipingEventArgs**, that provides the following properties:
 - **Item** (object): The item that is being swiped.
 - **Offset** (double): The current swipe offset.
- **ItemSwipeCompleted**: Occurs when the user finishes the swipe gesture. The event arguments are of type **ItemSwipeCompletedEventArgs**, that provides the following properties:
 - **Item** (object): The item that has been swiped.
 - **Offset** (double): The swipe offset at which the item has been dropped.

## Example

The following example demonstrates how to add a delete button as swipe content.

![CellSwipe](../images/listview-gestures-cell-swipe.png)

View model:

<snippet id='listview-gestures-cell-swipe-view-model'/>

ListView:

<snippet id='listview-gestures-cell-swipe-listview'/>

Where:

<snippet id='xmlns-teleriklistview'/>

Delete:

<snippet id='listview-gestures-cell-swipe-delete-item'/>

## See Also
