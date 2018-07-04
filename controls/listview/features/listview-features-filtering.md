---
title: Filtering
page_title: Filtering
position: 3
slug: listview-features-filtering
description: Describing RadListView filtering feature
tags: filter, radlistview, filterdescriptor
---

# Filtering

**RadListView** provides you with the functionality to programmatically filter its data at runtime. This can be achieved through adding filter descriptors that implement the IFilter interface to the **RadListView.FilterDescriptors** collection. You can use our **DelegateFilterDescriptor** implementation.

## DelegateFilterDescriptor 

- **Filter**: Gets or sets the function used to check whether a data item passes the filter or not.

## Example

Define the ListView in XAML:

<snippet id='listview-features-filtering-xaml'/>

Add the following code to the Filtering class:

<snippet id='listview-features-filtering-agefilter'/>

Here is the ViewModel class:

<snippet id='listview-features-filtering-viewmodel'/>
    
And here is the data class:

<snippet id='listview-features-filtering-data-class'/>	

Here is the result after the data is filtered:

![Filtering](images/listview-features-filtering.png "Filtering")

>important A sample example how to create ListView with FilterDescriptor can be found in the ListView/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).
 
## See Also

- [Grouping]({%slug listview-features-grouping%})
- [Sorting]({%slug listview-features-sorting%})
- [Selection]({%slug listview-features-selection%})
