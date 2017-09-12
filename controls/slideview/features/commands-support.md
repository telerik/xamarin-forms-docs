---
title: Commands Support
page_title: Commands Support
position: 1
slug: sideview-commands-support
---

# Commands Support

RadSideView allows you to attach commands that will be executed when the slide actions occurs. To do this you can use the **Commands** collection and add a custom SlideViewCommand for each custom action you want to execute. There is support for the SlidingToIndex and SlidedToIndex actions.

### Example

This example shows how to add a custom command for the SlidingToIndex action.

#### CS
    public class CustomSlideViewCommand : SlideViewCommand
    {
        public CustomSlideViewCommand()
        {
            this.Id = SlideViewCommandId.SlidedToIndex;
        }

        public override bool CanExecute(object parameter)
        {
            return true;
        }

        public override void Execute(object parameter)
        {
        }
    }
	
#### XAML
	 <telerikPrimitives:RadSlideView x:Name="slideView" />
	 
#### CS
	 this.slideView.Commands.Add(new CustomSlideViewCommand());

#### __Figure 1: Disabled segment__  
![SegmentedControl disable segment example](../images/segmentcontrol-features-disablesegment-0.png) 

### See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started]({% slug slideview-getting-started %})
