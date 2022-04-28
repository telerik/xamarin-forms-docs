---
title: Row Height
page_title: Xamarin DataGrid Documentation | Row Height Overview
description: Check our &quot;Row Height&quot; documentation article for Telerik DataGrid for Xamarin control.
position: 3
slug: datagrid-row-height
---

# Row Height

Starting with R2 2022 release of Telerik UI for Xamarin suite DataGrid provides the option to manually set the grid row height, so you have full control over the way the content is accommodated inside the grid cells.  By default row height is calculated according to the cells content.

Apply `RowHeight` property of type `double` to the DataGrid instance to specify the row height: 


```XAML
<telerikDataGrid:RadDataGrid x:Name="dataGrid"
							RowHeight="50"
							ItemsSource="{Binding Source}" />
```

Here is the difference in the way DataGrid is rendered with and without `RowHeight` specifically set:

![Xamarin DataGrid RowHeight](images/datagrid-row-height.png)

>Take a look at the [CellContentStyle]({%slug datagrid-columns-styling%}#cellcontentstyle) topic for additional customization options related to positioning the text inside the cells, such as text margin and text alignment as this can also affect the overall row height.


## See Also

- [Columns Styling]({%slug datagrid-columns-styling%})
- [Selection]({%slug datagrid-selection-overview%})
