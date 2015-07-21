---
title: Sorting
page_title: Sorting
position: 
slug: listview-features-sorting
description: Describing RadListView sorting feature
tags: sort, radlistview, sorting, sortdescriptor
---

# Sorting

**RadListView** can be used to sort the visualized data. This can be achieved by adding different SortDescriptors to its **SortDescriptors** collection. There are two types of descriptors shipped with our code.

## PropertySortDescriptor 

You can sort the data by a property value from the class that defines your business items. This descriptor exposes the following properties:

- **PropertyName**: Gets or sets the string name of the property that is used to retrieve the key to sort by.
- **SortOrder**: Gets or sets the sort order to Ascending or Descending.

## DelegateSortDescriptor 

This descriptor enables you to sort by a custom key (e.g. some complex expression combining two or more properties) instead of being limited by the value of a single property. This descriptor exposes the following properties:

- **SortOrder**: Gets or sets the sort order to Ascending or Descending.
- **KeyLookup**: Gets or sets the IKeyLookup instance used to retrieve the sort key for each data item.

## See Also

[Grouping]({%slug listview-features-grouping%})

[Filtering]({%slug listview-features-filtering%})