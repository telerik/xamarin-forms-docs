---
title: Commands
page_title: Commands
position: 2
slug: treeview-commands
---

# Commands #

The Command design-pattern is very important and widely used in the XAML and MVVM world. **RadTreeView** strictly follows these best practices and provides an intuitive and easy-to-use set of APIs that allow different aspects of the **RadTreeView** control’s behavior to be handled and/or completely overridden.

**RadDataGrid** exposes a **Commands** collection that allows you to register custom commands with each control’s instance through the RadDataGrid.Commands property:

* **Commands**: Gets the collection with all the custom commands registered with the CommandService. Custom commands have higher priority than the built-in (default) ones.
 
## Command Types

There are two types of commands:

* **TreeViewCommand**: All the default commands within RadTreeView derive from the base TreeViewCommand. Think of this command as a UI-related command as it operates over the RadTreeView instance that owns the command.
* **TreeViewUserCommand**: This specific command type provides the RadTreeView of the UI-related commands (that all the built-in commands are) over a stateless and UI-agnostic generic command implementation. The command exposes the following properties:

 * **Id**: Gets or sets the CommandId member this command is associated with.
 * **Command**: Gets or sets the generic ICommand implementation that may come from the ViewModel.
 * **SuppressDefaultCommand**: Gets or sets a value indicating whether the default (built-in) UI command associated with the specified Id will be executed. Default value is True.      

## TreeViewCommandId Enumeration

All the predefined commands within a RadDataGrid instance are identified by a member of the **DataGridCommandId** enumeration. This is actually the key that relates a command instance to a particular action/routine within the owning grid. In order to register a custom command within a RadDataGrid instance you may either inherit the **DataGridCommand** class and override its **CanExecute** and **Execute** methods or instantiate a **DataGridUserCommand** instance and set its **Command** property. In both cases you need to set the Id property of the new command so that it can be properly associated with the desired action/event. Following are the members of the DataGridCommandId enumerations:

* **ItemTap**
* **ItemHold**
* **ItemCollapse**
* **ItemExpand**
* **ItemChecked**
* **ItemUnchecked**
* **ContextMenuDelete**
* **Unknown**

## Custom Command Example

->code snippet

->pics

## See Also

* [Expand/Collapse]({%slug treeview-expand-collapse-api%})
* [CheckBoxes]({%slug treeview-checkboxes%})
* [Theming]({%slug treeview-theming%})