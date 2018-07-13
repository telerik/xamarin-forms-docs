---
title: Commands
page_title: Commands
position: 4
slug: datagrid-commands-overview
---

# Commands #

The Command design-pattern is very important and widely used in the XAML and MVVM world. **RadDataGrid** strictly follows these best practices and provides an intuitive and easy-to-use set of APIs that allow different aspects of the **RadDataGrid** control’s behavior to be handled and/or completely overridden.

RadDataGrid exposes a **Commands** collection that allows you to register custom commands with each control’s instance through the RadDataGrid.Commands property:

* Commands: Gets the collection with all the custom commands registered with the CommandService. Custom commands have higher priority than the built-in (default) ones.
 
## Command Types

* **DataGridCommand**: All the default commands within RadDataGrid derive from the base DataGridCommand. Think of this command as a UI-related command as it operates over the RadDataGrid instance that owns the command.

 * **Id**: The key that relates a command instance to a particular action/routine. This value is used to associate a command with a known event within a RadDataGrid instance.
 * **Command**: Gets or sets the generic ICommand implementation that may come from the ViewModel.
 * **EnableDefaultCommand**: Gets or sets a value indicating whether the default (built-in) UI command associated with the specified Id will be executed. Default value is True.      

## DataGridCommandId Enumeration

All the predefined commands within a RadDataGrid instance are identified by a member of the **DataGridCommandId** enumeration. This is actually the key that relates a command instance to a particular action/routine within the owning grid. In order to register a custom command within a RadDataGrid instance you may either inherit the **DataGridCommand** class and override its **CanExecute** and **Execute** methods. You need to set the Id property of the new command so that it can be properly associated with the desired action/event. Following are the members of the **DataGridCommandId** enumerations:

The table below shows all commands in the RadDataGrid control and for each of the available commands there is an object which is passed as a *parameter* in its Execute method. 

| Commands | Object type |
| -------- | ---------- |
| Unknown | DataGridColumn |
| ColumnHeaderTap  | DataGridTextColumn |
| GroupHeaderTap      | GroupHeaderContext |
| GroupHeaderButtonTap      | GroupHeaderContext |
| CellTap | DataGridCellInfo |
| CellDoubleTap | DataGridCellInfo |
| GenerateColumn | GenerateColumnContext |
| DataBindingComplete | DataBindingCompleteEventArgs |
| BeginEdit | EditContext |
| CancelEdit | EditContext |
| CommitEdit | EditContext |
| ValidateCell | ValidateCellContext |
| LoadMoreData | CommandsViewModel |

## Example

Here is the definition of the DataGrid control:

<snippet id='datagrid-commands-celltap-xaml'/>

In the example the following business object is used:

<snippet id='datagrid-commands-celltap-businessobject'/>

Here is the simple data used as binding context:

<snippet id='datagrid-commands-celltap-data'/>

Let;s handle the CellTap action as a Command. First, create a class that inherits from the DataGridCommand and set its Id property accordingly.
You would also need to override CanExecute and Execute methods as demostrated in the example below:

<snippet id='datagrid-commands-celltap'/>

Then add this Command to the Commands collection of the RadDataGrid instance:

<snippet id='datagrid-commands-cetttap-add'/>

>important [SDK Samples Browser application]({%slug developer-focused-examples%}) contains an example that shows how to use the CellTap Command.

## See Also

* [DataGrid Selection]({%slug datagrid-selection-overview%})
* [DataGrid Sorting]({%slug datagrid-sorting-overview%})
