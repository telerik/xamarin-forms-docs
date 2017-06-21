---
title: Selection
page_title: Selection
description: Selection
slug: tabview-features-selection
tags: selection
position: 2
---

# Selection

Changing the selection will highlight the corresponding item and show its content under the tab strip area.

The **RadTabView** control exposes a few useful properties which can help you work with the items selection. 

## Setting the Selected Item 

The tabview control has a **SelectedItem** property which you can use to set up the selection. The property is of type **TabViewItem** and it can be assigned to any item from the Items collection of RadTabView. 

You can also select a TabViewItem by setting its **IsSelected** property.

Note that if the item assigned to the SelectedItem property is not added in the Items collection the control, the selection will be lost.

### Example

This example shows how to set the selection manually.

<snippet id='tabview-features-selection-csharp'/>

#### __Figure 1: Selection example__  
![TabView selection example](../images/tabview-features-selection-0.png) 

## Customizing the Selected Item

In order to customize the appearance of the selected item, you can modify the control template of the TabViewHeaderItem. More information can be found in the [TabViewHeader Custom Template]({%slug tabview-features-tabviewheader%}#tabviewheader-custom-template) topic.

## See Also
- [Getting Started]({%slug tabview-getting-started%})
- [TabViewHeaderItem]({%slug tabview-features-tabviewitem%})
- [TabViewHeader]({%slug tabview-features-tabviewheader%})