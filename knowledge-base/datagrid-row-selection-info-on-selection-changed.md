---
title: Access DataGrid Row info on selection changed
description: Access DataGrid Row info on selection changed when DataGrid Selection Unit is Row
type: how-to
page_title: Access DataGrid Row info on selection changed 
slug: datagrid-row-selection-info-on-selection-changed
position: 
tags: datagrid, xamarin, row, info, selection, selectionchanged
ticketid: 1506891
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

This help article will show you how to access the DataGrid Row info on SelectionChanged event.

## Solution

Inside the SelectionChanged event handler, you're receiving a DataGridSelectionChangedEventArgs object which provides information on the selected item/items depending on the SelectionUnit and SelectionMode.

- AddedItems - gets a list of the added items to the SelectedItems collection.

In the concrete case, SelectionUnit is "Row" and for example "SelectionMode is "Single" as these are the default values. So,  inside the SelectionChanged event handler you can receive the data item of type Person(for example) presented in the selected row like this:

Here is the DataGrid definition:

```XAML
<datagrid:RadDataGrid x:Name="dataGrid" 
                          ItemsSource="{Binding GridSource}" 
                          Grid.Row="4" 
                          Grid.ColumnSpan="4" 
                          SelectionChanged="dataGrid_SelectionChanged"
                          SelectionMode="Single"
                          SelectionUnit="Row" />
```

and the namespace used:

```XAML
xmlns:datagrid="clr-namespace:Telerik.XamarinForms.DataGrid;assembly=Telerik.XamarinForms.DataGrid"
```

The SelectionChanged event:

```C#
private void dataGrid_SelectionChanged(object sender, Telerik.XamarinForms.DataGrid.DataGridSelectionChangedEventArgs e)
{
	if (e.AddedItems.Count() > 0)
	{
		var selectedItem = e.AddedItems.First() as Person;

		Application.Current.MainPage.DisplayAlert("Info for selected row", $"{selectedItem.Age}, {selectedItem.Name}, {selectedItem.Department}", "OK");
	}
}

```

and the used business model and ViewModel:

```C#
public class ViewModel
{

	public ViewModel()
	{
		this.GridSource = new ObservableCollection<Person>()
		{
			new Person { Name = "Kiko", Age = 23, Department = "Production" },
			new Person { Name = "Jerry", Age = 23, Department = "Accounting & Finance"},
			new Person { Name = "Ethan", Age = 51, Department = "Marketing" },
			new Person { Name = "Isabella", Age = 25, Department = "Marketing" },
			new Person { Name = "Joshua", Age = 45, Department = "Production" },
			new Person { Name = "Logan", Age = 26, Department = "Production"},
			new Person { Name = "Aaron", Age = 32, Department = "Production" },
			new Person { Name = "Elena", Age = 37, Department = "Accounting & Finance"},
			new Person { Name = "Ross", Age = 30, Department = "Marketing" }
		};

	}

	public ObservableCollection<Person> GridSource { get; set; }

   
}
public class Person
{
	public string Name { get; set; }
	public int Age { get; set; }
	public string Department { get; set; }
}

```