---
title: Disable a Segment
page_title: Disable a Segment
position: 3
slug: segmentedcontrol-features-disable-segment
---

# Disable a Segment

RadSegmentedControl allows you to disable each of its segments individually. 

To disable a segment you can use the **SetSegmentEnabled** method. The method accepts two arguments **index** that determines the index of the segment. And **isEnabled** that determines whether the item is enabled or not.

You can also check if an item is enabled via the **IsSegmentEnabled** method. The method accepts a single argument - **index**.

### Setting a text color

You can set the text color of the disabled segment through the **DisabledSegmentTextColor**.

### Example

The following example shows how to disable a segment and define a color.

<snippet id='segmentcontrol-features-disablesegment-xaml'/>
<snippet id='segmentcontrol-features-disablesegment-csharp'/>

#### __Figure 1: Disabled segment__  
![SegmentedControl disable segment example](../images/segmentcontrol-features-disablesegment-0.png) 

### See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started]({% slug segmentedcontrol-getting-started %})
- [Customize Segment Colors]({%slug segmentedcontrol-features-customizesegmentcolors%})