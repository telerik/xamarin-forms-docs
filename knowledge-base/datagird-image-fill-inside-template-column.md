---
title: Size an image inside datagrid template column
description: 
type: troubleshooting
page_title: Image can fill the available space inside datagrid template column
slug: datagird-image-fill-inside-template-column
position: 
tags: datagird, image, fill, xamarin, xamarin.forms, aspect ratio,
ticketid: 1495257
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.3.1106.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>DataGrid for Xamarin.Forms</td>
		</tr>
	</tbody>
</table>


## Description

This help article will show you how to size an image inside datagrid template column. The image can fill the available space inside the column 

## Solution

If you are using Xamarin.Forms Image control, it has a property `Aspect`(`of type Xamarin.Forms.Aspect`) which defines how an image is displayed. When etting `Aspect` property to `AspectFill` or `Fill`, this will scale the image to fill the view.

Here is hot the DataGrid Template Colum could be defined. Note that inside the DataTemplate, Xamarin.Forms Image control is used. The code uses both Aspect ratios in combination with and without WidthRequest/HeightRequest applied to the Image.

```XAML
<telerikDataGrid:RadDataGrid x:Name="DataGrid" AutoGenerateColumns="False">
    <telerikDataGrid:RadDataGrid.Columns>
        <telerikDataGrid:DataGridTemplateColumn>
            <telerikDataGrid:DataGridTemplateColumn.CellContentTemplate>
                <DataTemplate>
                    <Image Source="sampleImage.png"
                            Aspect="Fill" />
                </DataTemplate>
            </telerikDataGrid:DataGridTemplateColumn.CellContentTemplate>
        </telerikDataGrid:DataGridTemplateColumn>
        <telerikDataGrid:DataGridTemplateColumn>
            <telerikDataGrid:DataGridTemplateColumn.CellContentTemplate>
                <DataTemplate>
                    <Image Source="sampleImage.png"
                            Aspect="AspectFill" />
                </DataTemplate>
            </telerikDataGrid:DataGridTemplateColumn.CellContentTemplate>
        </telerikDataGrid:DataGridTemplateColumn>
        <telerikDataGrid:DataGridTemplateColumn>
            <telerikDataGrid:DataGridTemplateColumn.CellContentTemplate>
                <DataTemplate>
                    <Image Source="sampleImage.png"
                            HeightRequest="50"
                            WidthRequest="50"
                            Aspect="Fill" />
                </DataTemplate>
            </telerikDataGrid:DataGridTemplateColumn.CellContentTemplate>
        </telerikDataGrid:DataGridTemplateColumn>
        <telerikDataGrid:DataGridTemplateColumn>
            <telerikDataGrid:DataGridTemplateColumn.CellContentTemplate>
                <DataTemplate>
                    <Image Source="sampleImage.png"
                            HeightRequest="50"
                            WidthRequest="50"
                            Aspect="AspectFill" />
                </DataTemplate>
            </telerikDataGrid:DataGridTemplateColumn.CellContentTemplate>
        </telerikDataGrid:DataGridTemplateColumn>
    </telerikDataGrid:RadDataGrid.Columns>
</telerikDataGrid:RadDataGrid>
```

Here is the result:

![DataGrid Image Fill in Column](images/datagird-image-fill-columm.png "DataGrid Image Fill in Column")

