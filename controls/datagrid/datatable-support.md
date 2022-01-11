---
title: DataTable Support
page_title: Xamarin DataGrid Documentation | DataTable Support
description: Check our &quot;DataGrid DataTable Support&quot; documentation article for Telerik DataGrid for Xamarin control.
position: 6
slug: datagrid-datatable-support
---

# DataTable Support

With R1 2022 Release of Telerik UI for Xamarin, **DataGrid** fully supports binding to a `DataTable`. 

All DataGrid features work with DataTable. You can add, remove, select, edit item(s) and update the DataGrid's ItemsSource. In addition, all available commands and operations like filtering, sorting, grouping, selection work when the DataGrid is binded to a DataTable. 

## Bind to DataTable

1. DataGrid definition:

 <snippet id='datagrid-datatable-binding'/>


1. Add the namespace:

 ```XAML
xmlns:telerikDataGrid="clr-namespace:Telerik.XamarinForms.DataGrid;assembly=Telerik.XamarinForms.DataGrid"
 ```

1. The ViewModel used: 

 <snippet id='datagrid-datatable-view-model'/>
 

Where the DataTable namespace is `using System.Data;`

>important A sample Bind to DataTable example can be found in the DataGrid/DataTable folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## Filtering, Sorting, Grouping

When using DataTable you can filter, group, sort the data inside the DataGrid through the UI or programatically.  

## CRUD Operations with DataTable

All operations like add, remove, update data inside the DataGrid is supported when the Source is from DataTable.

DataGrid definition:

<snippet id='datagrid-datatable-crud'/>

### Add row

<snippet id='datagrid-datatable-add-row'/>

### Delete row

<snippet id='datagrid-datatable-delete-data'/>

### Update data

<snippet id='datagrid-datatable-update-data'/>

### SelectionChanged

<snippet id='datagrid-datatable-selection'/>

>important A sample CRUD Operations example can be found in the DataGrid/DataTable folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## DataGrid Commands with DataTable

DataGrid definition:

<snippet id='datagrid-datatable-binding'/>

CellTapUserCommand implementation:

<snippet id='datagrid-commands-celltap'/>

The ViewModel used:

<snippet id='datagrid-datatable-view-model'/>

>important A sample Commands example can be found in the DataGrid/DataTable folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Filtering]({%slug datagrid-filtering-overview%})
- [Grouping]({%slug datagrid-grouping-overview%})
- [Selection]({%slug datagrid-selection-overview%})