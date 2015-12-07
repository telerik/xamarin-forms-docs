---
title: Styling
page_title: Styling
position: 
slug: listview-features-styling
description: Describing the styling options of the RadListView
tags: style, selected, hovered, pressed, item, highlighted
---

The RadListView component provides styling mechanism for customizing the look of its items. This mechanism consists of the following properties:

1. **ItemStyle**
2. **SelectedItemStyle**
3. **PressedItemStyle**

All the properties can be **get** or **set** and their type is **ListViewItemStyle**.

# ListViewItemStyle

The properties of this object are respectively applied to the native components. The supported ones are the following:

1. **BackgroundColor** (*Color*): gets or sets the background of the item(s).
2. **BorderColor** (*Color*): gets or sets the color of the border.
3. **BorderWidth** (*double*): gets or sets the width of the borer.
4. **BorderLocation** (*Location*): gets or sets an enumeration describing where the border should be visible.



### Location

This enumeration contains the following members:

- **None** - the border should not be visualized.
- **Top** - the border should be visualized only at the top side.
- **Bottom** -the border should be visualized only at the bottom side.
- **Left** - the border should be visualized only at the left side.
- **Right** - the border should be visualized only at the right side.
- **All** (default value) - the border should be visualized all around the item.

### Example

	<telerikDataControls:RadListView ItemsSource="{Binding SourceList}">
	    <telerikDataControls:RadListView.ItemStyle>
	      <listView:ListViewItemStyle BackgroundColor="Transparent" BorderLocation="None"/>
	    </telerikDataControls:RadListView.ItemStyle>

	    <telerikDataControls:RadListView.SelectedItemStyle>
	      <listView:ListViewItemStyle BackgroundColor="#E5EDF3" BorderWidth="3" BorderLocation="Bottom"/>
	    </telerikDataControls:RadListView.SelectedItemStyle>

	    <telerikDataControls:RadListView.PressedItemStyle>
	      <listView:ListViewItemStyle BackgroundColor="#C1C1C1" BorderColor="#FF692F" BorderWidth="3" BorderLocation="Bottom"/>
	    </telerikDataControls:RadListView.PressedItemStyle>

	    <telerikDataControls:RadListView.ItemTemplate>
	      <DataTemplate>
	        <listView:ListViewTextCell Text="{Binding Title}" />
	      </DataTemplate>
	    </telerikDataControls:RadListView.ItemTemplate>
	  </telerikDataControls:RadListView>