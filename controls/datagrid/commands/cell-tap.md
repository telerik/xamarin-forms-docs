---
title: CellTap Command
page_title: Xamarin DataGrid Documentation | CellTap Command
description: Check our &quot;CellTap Command&quot; documentation article for Telerik DataGrid for Xamarin control.
position: 1
slug: datagrid-commands-cell-tap
---

# CellTap Command

The DataGrid CellTap Command handles the Tap gesture over a grid cell, that is, the intersection of a data row and a column.

## Example

Here is an example how the RadDataGrid CellTap Command works:

First, create the needed business objects, for example type Country with the following properties:

<snippet id='datagrid-commands-celltap-businessobject'/>

Here is the simple data used as binding context:

<snippet id='datagrid-commands-celltap-data'/>

Then handle the CellTap action as a Command. First, create a class that inherits from the DataGridCommand and set its Id property accordingly.
You would also need to override CanExecute and Execute methods as demostrated in the example below:

<snippet id='datagrid-commands-celltap'/>

Then add this Command to the Commands collection of the RadDataGrid instance:

<snippet id='datagrid-commands-cetttap-add'/>

Define the RadDataGrid in XAML:

<snippet id='datagrid-commands-celltap-xaml'/>

>important [SDK Samples Browser application]({%slug developer-focused-examples%}) contains an example that shows how to use the CellTap Command. The Commands example is located in the DataGrid/Commands folder.

## See Also

- [Editing]({%slug datagrid-commands-editing%})
- [Validation]({%slug datagrid-commands-validation%})
