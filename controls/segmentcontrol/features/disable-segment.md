---
title: Disable a Segment
page_title: Disable a Segment
position: 1
slug: segmentcontrol-features-disable-segment
---

# Disable a Segment

RadSegmentControl allows you to disable each of its segments individually. 

To disable a segment you can use the **SetSegmentEnabled** method. The method accepts two arguments **index** that determines the index of the segment. And **isEnabled** that determines whether the item is enabled or not.

You can also check if an item is enabled via the **IsSegmentEnabled** method. The method accepts a single argument - **index**.

### Setting a text color

You can set the text color of the disabled segment through the **DisabledSegmentTextColor**.

### Example

The following example shows how to disable a segment and define a color.

<snippet id='segmentcontrol-features-disable-segment-xaml'/>
<snippet id='segmentcontrol-features-disable-segment-csharp'/>

#### __Figure 1: Disabled segment__  
![SegmentControl disable segment example](../images/segmentcontrol-features-disablesegment-0.png) 

### See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started]({% slug segmentcontrol-getting-started %})
- [Customize Segment Colors]({%slug segmentcontrol-features-customizesegmentcolors%})