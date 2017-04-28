---
title: Selection
page_title: Selection
description: Selection
slug: segmentcontrol-features-selection
tags: selection
position: 0
---

# Selection

The **RadSegmentControl** control exposes few useful properties which can help you work with the items selection. 

### Setting the selected segment 

The segment control has a **SelectedIndex** property which you can use to set the selected item.

### Setting selection colors

You can define custom colors for the text and the background of the selected segment. You can do that via the the following properties of **RadSegmentControl**:

- **SelectedSegmentBackgroundColor**
- **SelectedSegmentTextColor**

### Selection changed

RadSegmentControl exposes a **SelectionChanged event** which is fired when the selected item is changed.

### Example

This example shows how to set the selection manually.

<snippet id='segmetncontrol-features-selection-xaml'/>

#### __Figure 1: Selection example__  
![SegmentControl selection example](../images/segmentcontrol-features-selection-0.png) 

### See Also
- [Getting Started]({%slug segmentcontrol-getting-started%})
- [Customize Segment Colors]({%slug segmentcontrol-features-customizesegmentcolors%})