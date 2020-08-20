---
title: Multi-Level Grouping
page_title: Xamarin ListView Documentation | Grouping
description: Check our &quot;Multi-Level Grouping&quot; documentation article for Telerik ListView for Xamarin control.
position: 2
slug: listview-grouping-multilevel
description: Describing RadListView grouping feature
tags: group, radlistview, groupdescriptor, multilevel
---

# Multi-Level Grouping

This article provides an overview on how you could enable multi-level grouping in RadListView. 

>note Before proceeding please go through [Grouping Overview]({%slug listview-features-grouping%}) topic.

First, let's create the following business object:

<snippet id='listview-grouping-multilevel-businessobject' />

The next example demonstrates how RadListView could be bound to a collection of *City* objects and grouped hieararchically by *Continent* and *Country*.

To accomplish the task, create a ViewModel class as shown below:

<snippet id='listview-grouping-multilevel-viewmodel' />

Then, in order to visualize the hierarchical relation between groups, add a custom **GroupHeaderTemplate** (of type *DataTemplate*) to the Resources of your page:

<snippet id='listview-grouping-multilevel-templates' />

where LevelToMarginConverter just calculates the margin of each group header according to its Level:

<snippet id='listview-grouping-multilevel-templates' />

Lastly, add the RadListView definition with two **PropertyGroupDescriptors** as shown in the next snippet:

<snippet id='listview-grouping-multilevel-definition' />

Here is the final result:

![](../images/listview_grouping_multilevel.png)

## See Also

- [Grouping]({%slug listview-features-grouping%})
- [Filtering]({%slug listview-features-filtering%})
- [Sorting]({%slug listview-features-sorting%})