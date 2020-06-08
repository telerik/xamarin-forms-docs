---
title: Validation Command
page_title: Xamarin DataGrid Documentation | Validation Command
description: Check our &quot;Validation Command&quot; documentation article for Telerik DataGrid for Xamarin control.
position: 3
slug: datagrid-commands-validation
---

# Validation Command

The RadDataGrid control provides a validation command that has an entry point for validating cells content. The execution parameter is of type *ValidateCellContext* that exposes the following properties:

* **CellInfo**: Gets the cell info associated with the operation.
* **Errors**: Gets or sets the errors (if any) that occurred during the validation.

## Example

Here is an example how the RadDataGrid ValidateCell Command works:

First, create class Data (our business object) that inherits from the **INotifyDataErrorInfo** and **INotifyPropertyChanged** interfaces.

>note We are going to do the validation through the **INotifyDataErrorInfo** interface.

<snippet id='datagrid-commands-validation-businessobject'/>

Then create a ViewModel with a collection of Data objects:

<snippet id='datagrid-commands-validation-viewmodel'/>

Then handle the CellTap action as a Command. First, create a class that inherits from the DataGridCommand and set its Id property accordingly.
You would also need to override CanExecute and Execute methods as demostrated in the example below:

<snippet id='datagrid-commands-validation-validatecell'/>

Then set the BindingContext to be the ViewModel and add this Command to the Commands collection of the RadDataGrid instance:

<snippet id='datagrid-commands-validation-binding'/>

Define the RadDataGrid in XAML:

<snippet id='datagrid-commands-validation'/>

>important [SDK Samples Browser application]({%slug developer-focused-examples%}) contains an example that shows how to use the ValidateCell Command. The Validation example is located in the DataGrid/Commands folder.

## See Also

- [CellTap Command]({%slug datagrid-commands-cell-tap%})
- [Editing Command]({%slug datagrid-commands-editing%})
- [Columns Styling]({%slug datagrid-columns-styling%})
