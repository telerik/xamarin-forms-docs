---
title: Animations
page_title: ListView Animations
position: 7
---

# ListView: Animations

TKListView supports three predefined item animations: 

<table>

<tr>
<th>Animation Type</th>
<th>Figures</th>
</tr>

<tr>
<td>Fade-in</td>
<td><img src="../images/listview-animations001.gif"/></td>
</tr>

<tr>
<td>Scale-in</td>
<td><img src="../images/listview-animations002.gif"/></td>
</tr>

<tr>
<td>Slide-in</td>
<td><img src="../images/listview-animations003.gif"/></td>
</tr>

</table>

> The animated images above are just for illustration purposes. They are missing some fps quality because of the image processing software used to create these images. In order to get a real understanding of how the animations look and feel, check the Demo application that ships with the UI for Xamarin suite.

These animations can be applied when items enter different states. The following list contains all states where animations can be applied:

- when an item appears when scrolling
- when adding/inserting an item
- when removing an item


## Accessing the animations API

The animations can be controlled from the animations-related properties of the Telerik ListView layouts. These properties are exposed at the TKListViewLinearLayout which is the base layout for the TKListViewGridLayout and TKListViewStaggeredLayout. So, in order to apply some animation settings to that layout, you can take it like this:

<snippet id='listview-layout'/>

<snippet id='listview-layout-swift'/>

```C#
TKListViewLinearLayout layout = (TKListViewLinearLayout)listView.Layout;
```

## Appear animations

Those animations are applied when scrolling the list view. You can add a scroll animation by setting the <code>itemAppearAnimation</code> property of <code>TKListViewLinearLayout</code>:

<snippet id='listview-appear'/>

<snippet id='listview-appear-swift'/>

```C#
layout.ItemAppearAnimation = TKListViewItemAnimation.Scale;
```

## Add/Remove animations

To animate an item on insert set the <code>itemInsertAnimation</code> property:


<snippet id='listview-insert'/>

<snippet id='listview-insert-swift'/>

```C#
layout.ItemInsertAnimation = TKListViewItemAnimation.Scale;
```

Use the <code>insertItemsAtIndexPaths:</code> method to insert an item with animation:

<snippet id='listview-insert-item'/>

<snippet id='listview-insert-item-swift'/>

```C#
this.listView.InsertItems (new NSIndexPath[] { NSIndexPath.FromItemSection ((nint)(this.items.Count - 1), 0) });
```

To animate an item on delete set the <code>itemDeleteAnimation</code> property:

<snippet id='listview-delete'/>

<snippet id='listview-delete-swift'/>

```C#
layout.ItemDeleteAnimation = TKListViewItemAnimation.Slide;
```

Use the <code>deleteItemsAtIndexPaths:</code> method to delete an item with animation:

<snippet id='listview-delete-item'/>

<snippet id='listview-delete-item-swift'/>

```C#
this.listView.DeleteItems(selectedItemsPaths);
```

Be sure to update your data source before triggering item insert/delete methods in TKListView.


## Animations duration

Animations are controlled by setting properties of <code>TKListViewLinearLayout</code> class. The animation duration is controlled by setting the <code>animationDuration</code> property:

<snippet id='listview-animation-duration'/>

<snippet id='listview-animation-duration-swift'/>

```C#
layout.AnimationDuration = 0.4f;
```