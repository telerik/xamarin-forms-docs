---
title: Editing
page_title: Editing
description: Check our &quot;Editing&quot; documentation article for Telerik DataGrid for Xamarin control.
position: 4
slug: datagrid-editing
---

# Editing

**RadDataGrid** provides a built-in editing functionality, which allows the app users to easily edit the data presented in the grid. Depending on the column data type, a relevant editor allows end users to edit content in a friendly environment.

## Important Properties

You would need to define the **UserEditMode** property of the DataGrid control in order to enable the editing feature.

**UserEditMode** property is type of *DataGridUserSortMode* and accepts the following values:

* **None**: Editing is disabled (by default);
* **Cell**: Used to enable the editing option.

In addition, you could disable editing for concrete columns separately through the **CanUserEdit** property of the **DataGridColumn** class. For more details on this check [Columns Overview]({%slug datagrid-columns-overview%}) topic.

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
| TemplateColumn	| *not applicable	|

&#42;TemplateColumn doesn't have support for editing as that column is not bound to any property and the DataGrid has no way of knowing what type of Editor to use or what property to update after edit mode closes.

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
- [Columns Styling]({%slug datagrid-columns-styling%})