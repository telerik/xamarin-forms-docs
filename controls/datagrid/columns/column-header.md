---
title: Column Headers
page_title: Xamarin DataGrid Documentation - Columns Header
description: Check our &quot;Columns Header&quot; documentation article for Telerik DataGrid for Xamarin.
position: 2
slug: datagrid-column-header
---

# Column Headers

This article will guide you through the usage of the column headers, their customization as well through performing different data operations. Column headers are always visible and cannot be hidden.

![DataGrid Column Header](../images/column-header.png)

## Changing the text in the header

To customize text inside the header you have to use the `HeaderText` property. The property is per column. If `HeaderText` is not set, the text inside the `PropertyName` is displayed.

```XAML
<telerikDataGrid:RadDataGrid x:Name="dataGrid" 
					         AutoGenerateColumns="False">
	<telerikDataGrid:RadDataGrid.Columns>
		<telerikDataGrid:DataGridTextColumn PropertyName="Capital" 
									HeaderText="Capital Header"/>
		<telerikDataGrid:DataGridTextColumn PropertyName="Country" 
									HeaderText="Country Header"/>
	</telerikDataGrid:RadDataGrid.Columns>
</telerikDataGrid:RadDataGrid>
```

## Sorting

You can easily sort a particular column tapping ot its header. When the data is sorted by a column, its header changes its appearance and shows the sort direction via an indicator.

![.NET MAUI DataGrid Column Header Sorting indicator](../images/column-header-sorting.png)

To learn more about the sorting functionality take a look at the [Sorting]({%slug datagrid-sorting-overview%}) article.

## Filtering

The header of the column hosts the built-in filtering mechanism (the filter indicator which opens the Filtering UI), which allows you to filter the data by the columns' values.

![Xamarin DataGrid Column Header filter indicator](../images/column-header-filtering.png)

To learn more about the filtering functionality take a look at the [Filtering]({%slug datagrid-filtering-overview%}) article.

## Styling 

Use the `HeaderStyle` property in order to style the DataGridColumn header.

Check the [Xamarin DataGrid Column Header Styling]({%slug datagrid-columns-styling%}#headerstyle) topic for more information about the styling options you can use. 

## Header Content Customization

You can easily customize the content of the Header using the `HeaderContentTemplate`(`DataTemplate`) property.

## See Also

- [Text Column]({%slug datagrid-columns-text-column%})
- [Picker Column]({%slug datagrid-columns-picker-column%})
- [Template Column]({%slug datagrid-columns-template-column%})