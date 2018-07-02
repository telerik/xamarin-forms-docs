---
title: Styling
page_title: Styling
position: 9
slug: listview-features-styling
description: Describing the styling options of the RadListView
tags: style, selected, hovered, pressed, item, highlighted
---

# Styling

The RadListView component provides styling mechanism for customizing the look of its items. This mechanism consists of the following properties of type "ListViewItemStyle":

* **ItemStyle**
* **SelectedItemStyle**
* **PressedItemStyle**
* **ReorderItemStyle**

## ListViewItemStyle

The properties of this object are respectively applied to the native components. The supported ones are the following:

* **BackgroundColor** (*Color*): sets the background of the item(s).
* **BorderColor** (*Color*): sets the color of the border.
* **BorderWidth** (*double*): defines the width of the borer.
* **BorderLocation** (*Location*): describes an enumeration describing where the border should be visible.
* **TextCellTextColor** (*Color*): defines the text color of the ListView TextCell.


### Location

This enumeration contains the following members:

- **None** - the border should not be visualized.
- **Top** - the border should be visualized only at the top side.
- **Bottom** -the border should be visualized only at the bottom side.
- **Left** - the border should be visualized only at the left side.
- **Right** - the border should be visualized only at the right side.
- **All** (default value) - the border should be visualized all around the item.

### Example

<snippet id='listview-styling-listview-xaml'/>
<snippet id='listview-styling-listview-csharp'/>

And here is the end result:

#### Figure 1: ListView with ItemStyle and SelectedItemStyle
![](images/listview_features_itemstyle.png)

#### Figure 2: ListView with ReorderItemStyle
![](images/listview_features_reorderItemstyle.png)

>note You can find a working demo labeled **ItemStyles** in the ListView/Styling folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}). 

## ListViewItemStyle with Bindable Properties

The  **ItemStyle**, **SelectedItemStyle** and **PressedItemStyle** properties of type **ListViewitemStyle** can be used as a bindable properties.

There are examples in the ListView/Styling folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}), how you can use those properties as a bindable.  

### Figure 3: ListView with Bindable ItemStyle

![](images/listvirew-features-bindable-itemstyle.png)

### Figure 4: ListView with Bindable SelectedItemStyle

![](images/listvirew-features-bindable-selecteditemstyle.png)

##See Also

- [Selection]({%slug listview-features-selection%})
- [Reordering]({%slug listview-features-reorder-items%})
