---
title: Commands
page_title: Xamarin CheckBox Documentation | Commands
description: Check our &quot;Commands&quot; documentation article for Telerik CheckBox for Xamarin control.
position: 3
slug: checkbox-commands
---

# Commands

RadCheckBox exposes a Commands collection that allows you to register custom commands with each control’s instance through the **Commands** property:

* **Commands**: Gets the collection with all the custom commands registered with the CommandService.

## Command Type

There are two types of commands:

* **CheckBoxCommand**: All the default commands within RadCheckBox derive from the base RadCheckBoxCommand. Think of this command as a UI-related command as it operates over the RadCheckBox instance that owns the command.
* **CheckBoxUserCommand**: This type of command should be used when you would like to modify the behavior of the control on any of the available actions. It exposes the following properties:
	* **Id**: The key that relates a command instance to a particular action/routine.
	* **Command**: Gets or sets the generic **ICommand** implementation.
	* **SuppressDefaultCommand**: Gets or sets a value indicating whether the default(built-in) UI command associated with the specified **Id** will be executed.

## Example

Here is an example how to create a sample **CheckBoxUserCommand**.

Add the RadCheckBox control and bound the IsCheckedChangedCommand through the CheckBoxUserCommand predefined command. Use the Id property to map the command to the corresponding action with the control. In the following example we set the Id property to the *IsCheckedChanged* CommandId Enumeration.

<snippet id='checkbox-commands-xaml'/>

use the following namespace:

```XAML
	xmlns:checkBoxComamnds="clr-namespace:Telerik.XamarinForms.Primitives.CheckBox.Commands;assembly=Telerik.XamarinForms.Primitives"
```

And lets handle the needed command in a sample ViewModel class - define the IsCheckedChangedCommand and create methods for CanExecute and Execute:

<snippet id='checkbox-commands-viewmodel' />
 
The last step is to set the ViewModel class as a BindingContext of the page:

<snippet id='checkbox-commands-csharp'/>

## See Also

- [Key Features]({%slug checkbox-key-features%})
