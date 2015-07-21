---
title: Grouping
page_title: Grouping
position: 
slug: listview-features-grouping
description: Describing RadListView grouping feature
tags: group, radlistview, groupdescriptor
---

# Grouping

**RadListView** provides you with the functionality to programmatically group its data at runtime. This can be achieved through adding groupdescriptors to the **RadListView.GroupDescriptors** collection.

## PropertyGroupDescriptor 

You can group the data by a property value from the class that defines your items. This descriptor exposes the following properties:

- **PropertyName**: Gets or sets the string name of the property you want to group by.
- **SortOrder**: Gets or sets the sort order in each group to Ascending or Descending.

## DelegateGroupDescriptor 

This descriptor enables you to group by a custom key (e.g. some complex expression combining two or more properties) instead of being limited by the value of a single property. This descriptor exposes the following properties:

- **KeyLookup**: Gets or sets the IKeyLookup instance used to retrieve the group key for each data item.
- **SortOrder**:  Gets or sets the sort order in each group to Ascending or Descending.

## See Also

[Filtering]({%slug listview-features-filtering%})

[Sorting]({%slug listview-features-sorting%})