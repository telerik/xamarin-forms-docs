---
title: Datagrid does not show some languages properly
description: Some languages are not properly rendered by SkiaSharp elements
type: troubleshooting
page_title: Datagrid does not show some languages properly
slug: datagrid-languages-not-rendered-properly-skia
position: 
tags: datagrid, Chinese, Korean, Thai, celltext, groupheadertext, text, headertext, column, Xamarin, XamarinForms, Android, UWP 
ticketid: 
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product</td>
		<td>DataGrid for Xamarin</td>
	</tr>
</table>


## Description

DataGrid doesn't display some languages properly on Android and UWP. For example: 

When you set the HeaderText, GroupHeaderText, CellText to the DataGrid column to Chinese, Korean, Thai the content is not properly displayed.

This issue is related to the following issues in SkiaSharp library:

[](https://github.com/mono/SkiaSharp/issues/232)
[](https://github.com/mono/SkiaSharp/issues/283)

## Solution

In order to workaround this you can use one of the following approaches:

1. DataGrid Template column. For example, using a CellContentTemplate with a Label inside it.

```XAML
<telerikDataGrid:DataGridTemplateColumn HeaderText="Name" >
    <telerikDataGrid:DataGridTemplateColumn.CellContentTemplate>
        <DataTemplate>
            <Label Text="{Binding Name}" InputTransparent="True"/>
        </DataTemplate>
    </telerikDataGrid:DataGridTemplateColumn.CellContentTemplate>
</telerikDataGrid:DataGridTemplateColumn>
```

2. Alternatively, if you know the data source in advance, you can simply set the respective FontFamily to the corresponding TextCell.

```XAML
<telerikDataGrid:DataGridTextColumn>
    <telerikDataGrid:DataGridTextColumn.HeaderStyle>
        <telerikDataGrid:DataGridColumnHeaderStyle TextFontFamily="..."/>
    </telerikDataGrid:DataGridTextColumn.HeaderStyle>
    <telerikDataGrid:DataGridTextColumn.CellContentStyle>
        <telerikDataGrid:DataGridTextCellStyle FontFamily="..." />
    </telerikDataGrid:DataGridTextColumn.CellContentStyle>
</telerikDataGrid:DataGridTextColumn>
```

Keep in mind if the data source of the DataGrid is dynamic, setting the FontFamily in advance may not be appropriate and you should use the first approach.
