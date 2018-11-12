---
title: Commands
page_title: Commands
position: 12
slug: listview-features-commands
description: Describing the commands of the RadListView
tags: commands
---

# Commands

The Command design-pattern is very important and widely used in the XAML and MVVM world. RadListView strictly follows these best practices and provides an intuitive and easy-to-use set of APIs that allow different aspects of the RadListView control’s behavior to be handled.

RadListView exposes a **Commands** collection that allows you to register user commands with each control’s instance through the RadListView.Commands property:

* Commands: Gets the collection with all the custom commands registered with the CommandService. Custom commands have higher priority than the built-in (default) ones.

## CommandId Enumeration

All the predefined commands within a RadListView instance are identified by a member of the CommandId enumeration. This is actually the key that relates a command instance to a particular action/routine within the owning listview. In order to register a custom command within a RadListView instance you may either inherit from ListViewCommand class and override its CanExecute and Execute methods or use the ListViewUserCommand class and bind its Command property to a Command in your ViewModel. In both cases you need to set the Id property of the new command so that it can be properly associated with the desired action/event. Following are the members of the CommandId enumerations:

* ItemTap
* ItemSwiping
* ItemSwipeCompleted
* ItemSwipeStarting
* PullToRefreshRequested
* SelectionChanged
* LoadOnDemand
* ItemHold
* GroupHeaderTap
* ReorderStarting
* ReorderEnded

>tip These actions correspond to the exposed by RadListView events, for more details go to [Events]({%slug listview-features-events%}) topic.

For each of the available commands there is a *context* object of type [CommandId]CommandContext (for example ItemTapCommandContext, ItemHoldCommandContext, etc.) which is passed as a parameter in its Execute method. The *context* object provides information identical to the corresponding event's args.

## Inheriting from ListViewCommand

Let's, for example, handle ItemTap action as a Command. First, create a class that inherits from ListViewCommand and set its Id property accordingly. You would also need to override CanExecute and Execute methods as demonstrated in the example below:

<snippet id='listview-features-commands-listviewcommand'/>

Then add this Command to the Commands collection of the RadListView instance:

<snippet id='listview-features-commands-add'/>

## Binding ListViewUserCommand

With the second approach you could directly handle the needed commands in the ViewModel. Here is a quick example:

<snippet id='listview-features-commands-viewmodel'/>

Then ItemTapCommand should be bound through the ListViewUserCommand predefined command as shown in the next example. Again, its Id property is used to map the command to the corresponding action with the control.

<snippet id='listview-commands-listviewusercommand-xaml'/>

where telerikListViewCommands is defined like this:

###
	xmlns:telerikListViewCommands="clr-namespace:Telerik.XamarinForms.DataControls.ListView.Commands;assembly=Telerik.XamarinForms.DataControls"
	
##See Also

[Events]({%slug listview-features-events%})

[Selection]({%slug listview-features-selection%})

[Reordering]({%slug listview-features-reorder-items%})


