---
title: Hide the three dots from DataGrid ColumnHeader
description: How to hide the three dots from DataGird ColumnHeader for disabling all filter and group functions. 
type: how-to
page_title: Hide the OptionsButton(three dots) from the DataGrid ColumnHeader
slug: hide-three-dots-from-datagrid
ticketid: 1159812, 1160949, 1177014
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2018.3.912.1</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>DataGrid for Xamarin.Forms</td>
	</tr>
	<tr>
		<td>Xamarin.Forms/Xamarin.iOS/Xamarin.Android SDK Version</td>
		<td>3.2.0.871581</td>
	</tr>
</table>


## Description

This article will show you how to hide the three dots (OptionsButton) from the RadDataGrid ColumnHeader. The OptionsButton provides the functionality for filter and group DataGrid's data. You can remove/hide it from a specific column by using the HeaderStyle property of the DataGrid Column.

## Solution

In order to make the OptionsButton hidden, you need to set the OprtionsButtonTextColor to transparent.

Here is an example how this could be achieved:

```XAML
<telerikDataGrid:DataGridTextColumn PropertyName="Country">
     <telerikDataGrid:DataGridTextColumn.HeaderStyle>
         <telerikDataGrid:DataGridColumnHeaderStyle OptionsButtonTextColor="Transparent"
		                                            OptionsButtonFontSize="0"
                                                    BorderColor="#D9D9D9"
                                                    BorderThickness="1"/>
     </telerikDataGrid:DataGridTextColumn.HeaderStyle>
</telerikDataGrid:DataGridTextColumn>
```


