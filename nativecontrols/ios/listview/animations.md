---
title: Animations
page_title: ListView Animations
slug: ios-listview-animations
position: 7
---

# ListView for Xamarin.iOS: Animations

TKListView supports the following predefined animations: 

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


## Accessing the Animations API

The animations can be controlled from the animations-related properties of the Telerik ListView layouts. These properties are exposed at the TKListViewLinearLayout which is the base layout for the TKListViewGridLayout and TKListViewStaggeredLayout. So, in order to apply some animation settings to that layout, you can take it like this:

```C#
TKListViewLinearLayout layout = (TKListViewLinearLayout)listView.Layout;
```

## Appear Animations

Those animations are applied when scrolling the list view. You can add a scroll animation by setting the <code>ItemAppearAnimation</code> property of <code>TKListViewLinearLayout</code>:

```C#
layout.ItemAppearAnimation = TKListViewItemAnimation.Scale;
```

## Add/Remove animations

To animate an item on insert set the <code>ItemInsertAnimation</code> property:

```C#
layout.ItemInsertAnimation = TKListViewItemAnimation.Scale;
```

To animate an item on delete set the <code>ItemDeleteAnimation</code> property:

```C#
layout.ItemDeleteAnimation = TKListViewItemAnimation.Slide;
```

Be sure to update your data source before triggering item insert/delete methods in TKListView.


## Animations Duration

Animations are controlled by setting properties of <code>TKListViewLinearLayout</code> class. The animation duration is controlled by setting the <code>AnimationDuration</code> property:

```C#
layout.AnimationDuration = 0.4f;
```

> A sample ListView Animations example can be found in our [Native Xamarin.iOS examples]({%slug developer-focused-examples%}#native-only-examples).
