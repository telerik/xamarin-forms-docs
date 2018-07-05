---
title: Descriptors Collections
page_title: Descriptors Collections
position: 11
slug: listview-features-descriptors-collections
---

# Descriptors Collections

**RadListView** provides you with functionality to group, sort and filter its data. This can be achieved by using the already known [GroupDescriptors]({%slug listview-features-grouping%}), [SortDescriptors]({%slug listview-features-sorting%}) and [FilerDescriptors]({%slug listview-features-filtering%}) collections. Currently those descriptors of the RadListView support bingings. What's new is that now the users can control them using MVVM.

In order to control the descriptors collections through MVVM: 

 1. Add a specific using in your ViewModel class
 2. Use **OneWayToSource** binding

## Group Descriptors using MVVM

###Example

An example how to create a ListView with GroupDescriptors collection that can be controlled through MVVM can be found in the ListView/Bindable Collections folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

Figure 1: Group Descriptors using MVVM

![GroupDescriptorsMVVM](images/listview-features-descriptors-collections-group.png)

## Sort Desriptors

### Example

You can find a working demo labeled **Bindable Sort Descriptors** in the ListView/Bindable Collections folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}). 

Figure 2: Sort Descriptors using MVVM

![SortDescriptorsMVVM](images/listview-features-descriptors-collections-sort.png)

## Filter Descriptors

### Example 

[SDK Samples Browser application]({%slug developer-focused-examples%}) contais an example that shows FilterDescriptor collections in ListView controlled through MVVM. 

Figure 3: Filter Descriptors using MVVM

![FilterDescriptorsMVVM](images/listview-features-descriptors-collections-filter.png)

## See Also

- [Grouping]({%slug listview-features-grouping%})
- [Sorting]({%slug listview-features-sorting%})
- [Filtering]({%slug listview-features-filtering%})
