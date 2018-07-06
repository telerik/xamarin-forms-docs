---
title: Commands
page_title: Commands
position: 7
slug: slideview-commands-support
---

# Commands

RadSlideView allows you to attach commands that will be executed when the slide actions occurs. To do this you can use the **Commands** collection and add a custom SlideViewCommand for each custom action you want to execute.

## CommandId Enumeration

All the predefined commands within a RadSlideView instance are identified by a member of the SlideViewCommandId enumeration. This is actually the key that relates a command instance to a particular action/routine within the owning slideview. In order to register a custom command within a RadSlideView instance you need to inherit from SlideViewCommand class and override its CanExecute and Execute methods. Following are the members of the CommandId enumerations:

* SlidingToIndex
* SlidedToIndex

For each of the available commands there is a context object of type [CommandId]CommandContext (namely SlideViewSlidingToIndexCommandContext and SlideViewSlidedToIndexCommandContext) which is passed as a parameter in its Execute method. The context object provides information identical to the corresponding event's args.

### Example

This example shows how to add a custom command for the SlidingToIndex action. 

First, create a class that inherits from SlideViewCommand and set its Id property accordingly. You would also need to override CanExecute and Execute methods as demonstrated in the example below:

<snippet id='slideview-commands-customcommand' />

Then add this Command to the Commands collection of the RadSlideView instance:	

<snippet id='slideview-commands-add' />

### See Also

- [Events]({% slug slideview-events %})
