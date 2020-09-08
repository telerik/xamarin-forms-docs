---
title: Commands
page_title: Xamarin ComboBox Documentation | Commands
description: Check our &quot;Commands&quot; documentation article for Telerik ComboBox for Xamarin control.
position: 8
slug: combobox-commands
---

# Commands

ComboBox has the following commands:

- **SelectAllCommand** (*ICommand*): Selects all items from the source.

> SelectAll command can be used only when `SelectionMode` is `Multiple`. An exception will be thrown, if the command is invoked in `Single` `SelectionMode`.

- **ClearSelectionCommand** (*ICommand*): Sets the selection to null. If Multiple SelectionMode is used, this command will clear all selected items.

## Example

How to scenario with selectall command 

## See Also

- [Key Features]({%slug combobox-key-features%})
- [Data Binding]({%slug combobox-databinding%})
- [Editing]({%slug combobox-editing%})
- [Searching]({%slug combobox-searching%})
- [Templates]({%slug combobox-templates%})
