---
title: Filtering
page_title: Filtering
position: 
slug: listview-features-filtering
description: Describing RadListView filtering feature
tags: filter, radlistview, filterdescriptor
---

# Filtering

**RadListView** provides you with the functionality to programmatically filter its data at runtime. This can be achieved through adding FilterDescriptors to the **RadListView.FilterDescriptors** collection. Here are the available filter descriptors shipped with our code.

## TextFilterDescriptor 

- **PropertyName**: Gets or sets the property used to retrieve the value to filter by.
- **Operator**:  Gets or sets the TextOperator value which defines how the Value member is compared with each value from the **RadListView.ItemsSource**.
- **Value**: Gets or sets the string value used in the comparisons. This is the right operand of the comparison.
- **IsCaseSensitive**: Gets or sets a boolean value determining whether the text comparisons will be case-sensitive. Default value is true.

## BooleanFilterDescriptor 

- **PropertyName**: Gets or sets the property used to retrieve the value to filter by.
- **Value**: Gets or sets the boolean value used in the comparisons. This is the right operand of the comparison.

## NumericalFilterDescriptor 

- **PropertyName**: Gets or sets the property used to retrieve the value to filter by.
- **Value**: Gets or sets the numerical value used in the comparisons. This is the right operand of the comparison.
- **Operator**: Gets or sets the NumericalOperator value which defines the logic behind the left and right operand comparison.

## DateTimeFilterDescriptor 

- **PropertyName**: Gets or sets the property used to retrieve the value to filter by.
- **Value**: Gets or sets the DateTimeOperator value which defines the logic behind the left and right operand comparison.
- **Operator**: Gets or sets the DateTime value used in the comparisons. This is the right operand of the comparison.

## DelegateFilterDescriptor 

- **Filter**: Gets or sets the **IFilter** interface implementation used to check whether a data item passes the filter or not.

## See Also

[Grouping]({%slug listview-features-grouping%})

[Sorting]({%slug listview-features-sorting%})