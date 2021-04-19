---
title: Editing
page_title: Xamarin DataGrid Documentation | Editing
description: Check our &quot;Editing&quot; documentation article for Telerik DataGrid for Xamarin control.
position: 4
slug: datagrid-editing
---

# Editing

**RadDataGrid** provides a built-in editing functionality, which allows the app users to easily edit the data presented in the grid. Depending on the column data type, a relevant editor allows end users to edit content in a friendly environment. As soon as the user double-taps on a certain cell, the cell is switched to an edit mode.

## Important Properties

You would need to define the **UserEditMode** property of the DataGrid control in order to enable the editing feature.

**UserEditMode** property is type of *DataGridUserSortMode* and accepts the following values:

* **None**: Editing is disabled (by default);
* **Cell**: Used to enable the editing option.

In addition, you can disable editing for concrete columns separately through the **CanUserEdit** property of the **DataGridColumn** class. For more details on this check [Columns Overview]({%slug datagrid-columns-overview%}) topic.

## Columns' Editors

Each DataGrid column type provides different editor, so that the content could be edited in a convenient manner according to its value type. Check below the related Xamarin.Forms control for editing the values inside the DataGrid columns:

| Column Type 		| Editor 			| 
|-------------------|-------------------|
| TextColumn		| Entry				|
| NumericalColumn	| Entry				|
| BooleanColumn		| Switch			|
| DateColumn		| DatePicker		|
| TimeColumn		| TimePicker		|
| PickerColumn		| Picker			|
| TemplateColumn	| custom editor by defining CellEditTemplate |

## CellEditTemplate

In case the default editors do not suit the scenario you have, you can easily create a custom editor for each column by utilizing the **CellEditTemplate** property of the DataGridColumn. For detailed information on how the **CellEditTemplate** can be applied, go to [Columns Cell Templates]({%slug datagrid-cell-templates%}).

## Editing Commands

RadDataGrid provides a few useful commands related to the editing functionality, such as:

* **BeginEdit**: Provides an entry point just before the editing begins. 
* **CancelEdit**: Provides an entry point just before the editing is canceled.
* **CommitEdit**: Provides an entry point just before the editing is committed.

For detailed information on how to utilize any of the listed commands, go to [Editing Commands]({%slug datagrid-commands-editing%}) topic.

## Styling

You could change the visual appearance of each editor through the **CellEditorStyle** property of the DataGridColumn. You would need to apply to **CellEditorStyle** a *Xamarin.Forms.Style* with TargetType set to the corresponding to each column editor control. 

Check below a quick snippet with **CellEditorStyle** applied to **DataGridTextColumn**:

<snippet id='datagrid-columnstyle-celleditor'/>

## See Also

- [Editing Commands]({%slug datagrid-commands-editing%})
- [Columns Cell Templates]({%slug datagrid-cell-templates%})
- [Columns Styling]({%slug datagrid-columns-styling%})