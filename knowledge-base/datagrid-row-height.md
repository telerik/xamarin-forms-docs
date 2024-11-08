---
title: How to set row height of Xamarin DataGrid?
description: How to define the rows height through TextMargin property in Telerik DataGrid for Xamarin control
type: how-to
page_title: Is there a simple way to set the heights of the rows in Telerik DataGrid for Xamarin?
slug: set-datagrid-row-height
tags: datagrid, row, height, textmargin, xamarin, xamarin.forms
ticketid: 1427027
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>R3 2021</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>DataGrid for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

It's a common requirement to define explicitly the height of the DataGrid rows as well as the height of the column headers. DataGrid does not expose direct API, still, there are means for setting the row heights through the `TextMargin` property of the CellContentStyle and HeaderStyle properties of the columns.

## Solution

Let's have the following simple DataGrid definition:

```XAML
<telerikDataGrid:RadDataGrid x:Name="DataGrid"/>
```

Add a simple ItemsSource:

```C#
this.DataGrid.ItemsSource = new List<Data>
 {
	new Data { Country = "India", Capital = "New Delhi"},
	new Data { Country = "South Africa", Capital = "Cape Town"},
	new Data { Country = "Nigeria", Capital = "Abuja" },
	new Data { Country = "Singapore", Capital = "Singapore" } 
 };
```

where `Data` object is defined like this:

```C#
public class Data
{
	public string Country { get; set; }
	public string Capital { get; set; }
}
```

To apply different height, define manually the needed columns and set their `CellContentStyle` property to a **DataGridTextCellStyle** with `TextMargin` and `HeaderStyle` property to a **DataGridColumnHeaderStyle** again with `TextMargin`:

```XAML
<telerikDataGrid:RadDataGrid x:Name="DataGrid"
							 AutoGenerateColumns="False">
    <telerikDataGrid:RadDataGrid.Columns>
        <telerikDataGrid:DataGridTextColumn PropertyName="Country" HeaderText="Country">
            <telerikDataGrid:DataGridTextColumn.HeaderStyle>
                <telerikDataGrid:DataGridColumnHeaderStyle TextFontSize="18" 
														   TextMargin="20" />
            </telerikDataGrid:DataGridTextColumn.HeaderStyle>
            <telerikDataGrid:DataGridTextColumn.CellContentStyle>
                <telerikDataGrid:DataGridTextCellStyle FontSize="18" 
													   TextMargin="20" 
													   TextColor="DarkGreen" />

            </telerikDataGrid:DataGridTextColumn.CellContentStyle>
        </telerikDataGrid:DataGridTextColumn>
        <telerikDataGrid:DataGridTextColumn PropertyName="Capital" HeaderText="Capital">
            <telerikDataGrid:DataGridTextColumn.HeaderStyle>
                <telerikDataGrid:DataGridColumnHeaderStyle TextFontSize="18" 
														   TextMargin="20" />
            </telerikDataGrid:DataGridTextColumn.HeaderStyle>
            <telerikDataGrid:DataGridTextColumn.CellContentStyle>
                <telerikDataGrid:DataGridTextCellStyle FontSize="18" 
													   TextMargin="20" />

            </telerikDataGrid:DataGridTextColumn.CellContentStyle>
        </telerikDataGrid:DataGridTextColumn>
    </telerikDataGrid:RadDataGrid.Columns>
</telerikDataGrid:RadDataGrid>
``` 

Check the result on Android emulator below:

![](images/datagrid-row-height.png)
