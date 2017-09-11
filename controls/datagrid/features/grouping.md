---
title: Grouping
page_title: Grouping Overview
position: 1
slug: datagrid-grouping-overview
---

# Grouping #

The **RadDataGrid** control provides programmatic approach for grouping. You can achieve the functionality by utilizing the control's **GroupDescriptors** collection. You can choose one of the following approaches to achieve the grouping:

* Add a **PropertyGroupDescriptor**: using a property from the model as a group key.
* Add a **DelegateGroupDescriptor**: create a custom group key which you can use.

## PropertyGroupDescriptor ##

The PropertyGroupDescriptor is used to group the data in a DataGrid by property from the class that defines your objects.

To use the PropertyGroupDescriptor you have to set its property PropertyName.

* **PropertyName (string):** Gets or sets the name of the property that is used to retrieve the key to group by.

>note You can easily sort the groups in ascending or descending order using the **SortOrder** property.

#### PropertyGroupDescriptor Example

<snippet id='datagrid-propertygroupdescriptor-xaml'/>

## DelegateGroupDescriptor ##

The difference between the **DelegateGroupDescriptor** and the **PropertyGroupDescriptor** is that DelegateGroupDescriptor groups data by a custom Key while the PropertyGroupDescriptor groups by a defined Key which is a property from our model.

You have to set the following property of the DelegateGroupDescriptor:

 * **KeyLookup**: Gets or sets the **IKeyLookup** instance that is used to retrieve the group key for each data item.

>note You can easily sort the groups in ascending or descending order using the **SortOrder** property.

You have to create a class that implements the **IKeyLookup** interface which will return the Key you want to group by. Then you need to add the **DelegateGroupDescriptor** to the RadDataGrid.GroupDescriptors collection and set its **KeyLookUp** property.

#### PropertyGroupDescriptor Example

The Custom **IKeyLookup** implementation

<snippet id='datagrid-delegategroupdescriptor-csharp'/>

Adding it to the **GroupDescriptors** collection of the **RadDataGrid**:

<snippet id='datagrid-delegategroupdescriptor-csharp'/>

## See Also

* [DataGrid Filtering]({%slug datagrid-filtering-overview%})
* [DataGrid Sorting](%slug datagrid-sorting-overview%)