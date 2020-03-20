---
title: Selection
page_title: Selection
description: Check our &quot;Selection&quot; documentation article for Telerik DataGrid for Xamarin control.
position: 3
slug: datagrid-selection-overview
---

# Selection #

**RadDataGrid** exposes a selection feature - you can select a cell or a row by tapping on it. The control provides single as well as multiple selection.

You can unselect by a tap on already selected cell/row.

This article will show the basic properties and methods RadDataGrid provides for working with selection.

## Important Properties

RadDataGrid supports different selection modes that can be modified by the following properties. First, you can choose the Unit that you will be allowed to select and then the Selection Mode:

* **SelectionUnit** property (type of *Telerik.XamarinForms.DataGrid.DataGridSelectionUnit*):
 * **Row**: The unit to select is a grid row (by default).
 * **Cell**: The unit to select is a cell within a grid row.
 
>note To define a Cell when using a selection you can use the DataGridCellInfo class, that holds all the information about it. To define a Row when using a selection you can use your data object.

Check below how you can set **SelectionUnit** in XAML and code-behind:

```XAML
<telerikDataGrid:RadDataGrid x:Name="dataGrid"
							 SelectionUnit="Cell" />
```
```C#
var dataGrid = new RadDataGrid();
dataGrid.SelectionUnit = Telerik.XamarinForms.DataGrid.DataGridSelectionUnit.Cell;
```

* **SelectionMode** property (type of *Telerik.XamarinForms.DataGrid.DataGridSelectionMode*):
  * **Single**: Single unit may be selected(by default).
  * **Multiple**: Multiple units may be selected.
  * **None**: No selection is allowed.
  
```XAML
<telerikDataGrid:RadDataGrid x:Name="dataGrid"
							 SelectionMode="Multiple" />
```
```C#
var dataGrid = new RadDataGrid();
dataGrid.SelectionMode = Telerik.XamarinForms.DataGrid.DataGridSelectionMode.Multiple;
```
  
Once you make a selection, you can get or modify a collection with the selected Items by using:

* **SelectedItems** property (type of *ObservableCollection&lt;object&gt;*): Gets or Modifies an ObservableCollection of the currently selected Items(their type depends on the applied SelectionUnit, that is, DataGridCellInfo for Cell and Data Item for Row).

>note You can listen to the CollectionChanged event of the SelectedItems directly.

## Methods

Additional functionalities for programmatic selecting and deselecting items are exposed by RadDataGrid as methods. They also depend on the applied **SelectionUnit**.

#### Methods for programmatic selection when SelectionUnit is "Row":

* **SelectItem**(object item): Selects the specified data item and adds it in the SelectedItems collection.
* **DeselectItem**(object item): Removes the selection for the specified data item and removes it from the SelectedItems collection.

#### Methods for programmatic selection when SelectionUnit is "Cell":

* **SelectCell**(DataGridCellInfo item): Selects the grid cell as defined by the specified cell info.
* **DeselectCell**(DataGridCellInfo item): Removes the selection for the grid cell defined by the specified cell info.

#### Methods for programmatic selection of all items

* **SelectAll**(): Selects all the items as defined when SelectionMode is "Multiple".
* **DeselectAll**(): Clears the current selected items as defined by the SelectionUnit property.

### Example
In order to illustrate how these methods can be used, let's have the following example:

First, add a sample business object:

<snippet id='datagrid-selection-object' />

And a ViewModel with a list of "Person" objects:

<snippet id='datagrid-grouping-propertygroupdescriptor-viewmodel' />

Here is the RadDataGrid definition:

```XAML
<telerikDataGrid:RadDataGrid x:Name="dataGrid"
							 ItemsSource="{Binding People}" />
```

Lastly, set the ViewModel class as a BindingContext:

<snippet id='datagrid-selection-setvm' />

For example, you can select the first employee from Marketing department as shown in the snippets below.

In the case of Row selection use SelectItem method:

<snippet id='datagrid-selection-selectitem' />

For Cell selection use SelectCell method - it takes as a parameter a **DataGridCellInfo** object. DataGridCellInfo object can be easily created using the needed data item (of type Person in our case) and setting the column corresponding to the cell you'd need to select.

<snippet id='datagrid-selection-selectcell' />

Lastly, you call SelectAll/DeselectAll method like this:

<snippet id='datagrid-selection-selectall' />

>important A sample Programmatic Selection example is available in DataGrid -> Selection folder of the [SDK Browser application]({%slug developer-focused-examples%}#sdk-browser-application).
>
>You can directly explore the code in the [SDKBrowser Examples repository on GitHub](https://github.com/telerik/xamarin-forms-sdk/tree/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/DataGridControl/SelectionCategory/ProgrammaticSelectionExample).

## See Also

* [DataGrid Sorting]({%slug datagrid-sorting-overview%})
* [DataGrid Commands]({%slug datagrid-commands-overview%})