---
title: Editing Command
page_title: Editing Command
position: 2
slug: datagrid-commands-editing
---

# Editing Command

The RadDataGrid control provides the following commands for editing the data inside the column:

* **BeginEdit**: Provides an entry point just befor the editing begins. 
* **CancelEdit**: Provides an entry point just before the editing is canceled.
* **CommitEdit**: Provides an entry point just before the editing is commited.

The execution parameter of the **Editing Commands** is of type *EditContext* that exposes the following properties:

* **CellInfo**: Gets the cell info associated with the operation.
* **TriggerAction**: Gets the SourceTriggerAction value that triggered the operation.
* **Parameter**: Gets an optional parameter holding additional information associated with the operation.

## BeginEdit and Commitedit Commands Example

Here is an example how the RadDataGrid Editing Commands work:

First, create the needed business objects, for example type Data with the following properties:

<snippet id='datagrid-commands-editing-businessobject'/>

Then create a ViewModel with a collection of Data objects:

<snippet id='datagrid-commands-editing-viewmodel'/>

Then handle the BeginEdit action as a Command. First, create a class that inherits from the DataGridCommand and set its Id property accordingly.
You would also need to override CanExecute and Execute methods as demostrated in the example below:

<snippet id='datagrid-commands-editing-beginedit'/>

Then handle the CommitEdit action as a Command. First, create a class that inherits from the DataGridCommand and set its Id property accordingly.
You would also need to override CanExecute and Execute methods as demostrated in the example below:

<snippet id='datagrid-commands-editing-commitedit'/>

Then add this Commands to the Commands collection of the RadDataGrid instance:

<snippet id='datagrid-commands-editing-binding'/>

Define the RadDataGrid in XAML:

<snippet id='datagrid-commands-editing'/>

>important [SDK Samples Browser application]({%slug developer-focused-examples%}) contains an example that shows how to use the BeginEdit Command. The Editing example is located in the DataGrid/Commands folder.

## See Also

- [Validation]({%slug datagrid-commands-validation%})
- [DataGrid Styling]({%slug datagrid-styling%})
- [Columns Styling]({%slug datagrid-columns-styling%})
