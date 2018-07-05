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

	<telerikDataControls:RadListView x:Name="listView" ItemsSource="{Binding Source}" IsItemsReorderEnabled="True">
		<telerikDataControls:RadListView.ItemTemplate>
			<DataTemplate>
				<telerikListView:ListViewTextCell Text="{Binding Name}" />
			</DataTemplate>
		</telerikDataControls:RadListView.ItemTemplate>
		<telerikDataControls:RadListView.ItemStyle>
			<telerikListView:ListViewItemStyle BackgroundColor="#1263E5"
											TextCellTextColor="#AAC7F6"
											BorderColor="#0A3A82"                                                
											BorderWidth="2"
											BorderLocation="All" />
		</telerikDataControls:RadListView.ItemStyle>
		<telerikDataControls:RadListView.SelectedItemStyle>
			<telerikListView:ListViewItemStyle BackgroundColor="#83A9E2"
											TextCellTextColor="#AAC7F6"
											BorderColor="#0A3A82"
											BorderWidth="2" 
											BorderLocation="Bottom"/>
		</telerikDataControls:RadListView.SelectedItemStyle>
		<telerikDataControls:RadListView.PressedItemStyle>
			<telerikListView:ListViewItemStyle BackgroundColor="#C1C1C1" 
											TextCellTextColor="#AAC7F6"
											BorderColor="#0B3D89" 
											BorderWidth="2" 
											BorderLocation="Bottom"/>
		</telerikDataControls:RadListView.PressedItemStyle>
		<telerikDataControls:RadListView.ReorderItemStyle>
			<telerikListView:ListViewItemStyle BackgroundColor="#0B3D89"
											TextCellTextColor="#AAC7F6"
											BorderColor="Black"
											BorderWidth="2"
											BorderLocation="All" />
		</telerikDataControls:RadListView.ReorderItemStyle>
	</telerikDataControls:RadListView>

And here is the end result:

#### Figure 1: ListView with ItemStyle and SelectedItemStyle
![](images/listview_features_itemstyle.png)

#### Figure 2: ListView with ReorderItemStyle
![](images/listview_features_reorderItemstyle.png)

>note You can find a working demo labeled **ItemStyles** in the ListView/Styling folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}). 

##See Also

[Selection]({%slug listview-features-selection%})

[Reordering]({%slug listview-features-reorder-items%})