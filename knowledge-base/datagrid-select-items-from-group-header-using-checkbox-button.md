---
title: Select DataGrid items in particular group using checkbox/button in group header
description: Select DataGrid items in particular group using checkbox/button and custom group header template
type: how-to
page_title: 
slug: datagrid-select-items-from-group-header-using-checkbox-button
position: 
tags: datagrid, select items, grouping, checkbox, button, xamarin.forms
ticketid: 1499773
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

This help article will show you how to select att items inside a particular group using checkbox/button inside the group header template. This is a custom scenario which uses the [DataGird groupheader template]({%slug datagrid-grouping-overview%}).

## Solution

We can use the normal [DataGrid selection mechanism]({%slug datagrid-selection-overview%}). 

The specific here is that you need to find which items are in the group and select them. This can be accomplished by using the DataGrid's DataView.

```C#
var dataView = MyDataGrid.GetDataView();
```

You can traverse the groups and get the ChildItems in any particular group. With references to the items, you can programmatically select them.

### Example select all items from group using button

Here's a DataGrid bound to a list of People and grouped by Gender property,

```XAML
<dataGrid:RadDataGrid x:Name="DataGrid" ItemsSource="{Binding People}" SelectionUnit="Row" SelectionMode="Multiple">
    <dataGrid:RadDataGrid.GroupDescriptors>
        <data:PropertyGroupDescriptor PropertyName="Gender"/>
    </dataGrid:RadDataGrid.GroupDescriptors>
</dataGrid:RadDataGrid>
```

You can use the DataView to get a list of the groups, then find the group for Male and select the items in the Male group:

```C#
private void Button_Clicked(object sender, EventArgs e)
{
    // Get the DataView.
    var dataView = DataGrid.GetDataView();
 
    // Get all the groups in the DataView.
    var groups = dataView.GetGroups();
 
    // Get the group you want to make the selections in.
    var maleGroup = groups.FirstOrDefault(g => g.Key.ToString() == "Male");
     
    // Select all the rows in that group.
    foreach (var item in maleGroup.ChildItems)
    {
        DataGrid.SelectItem(item);
    }
}
```

### Example select all items from a group using a CheckBox

Customizing GroupHeaderTemplate

For this, you'll need to override the default header template and implement a completely custom one. When creating a GroupHeaderTemplate, you'll want to keep in mind that the BindingContext is a GroupHeaderContext object. This contains useful information, such as Group, Descriptor, etc.

For a "Select All" checkbox, the header template will need an extra UI element, here's an example with RadCheckBox

```XAML
<dataGrid:RadDataGrid.GroupHeaderTemplate>
    <DataTemplate>
        <StackLayout Orientation="Horizontal">
            <Label Text="{Binding Group.Key}" FontAttributes="Bold" VerticalOptions="Center" Margin="0,0,10,0"/>
            <primitives:RadCheckBox IsCheckedChanged="GroupHeaderCheckbox_OnIsCheckedChanged" VerticalOptions="Center" />
            <Label Text="Select All" VerticalOptions="Center" />
        </StackLayout>
    </DataTemplate>
</dataGrid:RadDataGrid.GroupHeaderTemplate>
```

The checkbox's IsCheckedChanged event handler is going to need to either select all or deselect all based on the value of the RadCheckBox:

```C#
private void GroupHeaderCheckbox_OnIsCheckedChanged(object sender, Telerik.XamarinForms.Primitives.CheckBox.IsCheckedChangedEventArgs e)
{
    if(sender is RadCheckBox cb && cb.BindingContext is GroupHeaderContext context)
    {
        foreach (var item in context.Group.ChildItems)
        {
            if (e.NewValue == true)
            {
                context.Grid.SelectItem(item);
            }
            else
            {
                context.Grid.DeselectItem(item);
            }
        }
    }
}
```