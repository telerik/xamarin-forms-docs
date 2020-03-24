---
title: Events
page_title: Events
description: Check our &quot;Commands&quot; documentation article for Telerik Calendar for Xamarin control.
position: 14
slug: calendar-commands
---

# Commands

The Command design-pattern is very important and widely used in the XAML and MVVM world. RadCalendar control strictly follows these best practices and provides commands support.

## CommandId Enumaration

Calendar control exposes the following commands included in the CommandId enumeration:

* **CellTap**: A command associated with the Tap event that occurs on tapping a calendar cell. 

* **AppointmentTap**: Occurs when you tap over a specific appointment when in DayView/MultiDayView mode. It can be used to get all the information regarding the appointment. This command is associated with the AppointmentTapped event

* **TimeSlotTap**: Occurs when the end-user taps on a time slot. This command is associated with the Tap event.

>important **AppointmentTap** and **TimeSlotTap** commands are available for **DayView** and **MultiDayView** modes.

| Command | Context |
| -------- | -------- |
| CellTap | Cell |
| AppointmentTap | AppointmentTapCommandContext |
| TimeSlotTap | TimeSlotTapCommandContext |

## Binding CalendarUserCommand

With this approach you could directly handle the needed commands in the ViewModel or page's code behind.

### CellTap Command Example

Here is a sample RadCalendar definition: 

<snippet id='calendar-commands-celltap-xaml' />

Then add the following namespaces:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
xmlns:commands="clr-namespace:Telerik.XamarinForms.Input.Calendar.Commands;assembly=Telerik.XamarinForms.Input"
```

How the command is defined in page's code behind:

<snippet id='calendar-commands-celltap' />

>note Sample CellTap Command example can be found in the SDK Browser application/Examples/Calendar/Commands section.

### TimeSlotTap Command Example

Sample Calendar definition:

<snippet id='calendar-commands-timeslottap-xaml' />

Then add the following namespaces:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
xmlns:commands="clr-namespace:Telerik.XamarinForms.Input.Calendar.Commands;assembly=Telerik.XamarinForms.Input"
```

How the TimeSlotTapCommand is defined in the pade's code behind:

<snippet id='calendar-commands-timeslottap' />

The following namespace is needed when TimeSlotTap Command context is used:

```C#
using Telerik.XamarinForms.Input.Calendar.Commands;
```

>note Sample TimeSlotTap Command example can be found in the SDK Browser application/Examples/Calendar/Commands section.

## Inheriting from CalendarCommands

this approach allows you to create a class that inherits from the CalendarCommand class.

Let's, for example, handle AppointmentTap action as a Command. 

### AppointmentTap Command Example

First, create a class that inherits from CalendarCommand and set its Id property accordingly. You would also need to override CanExecute and Execute methods as demonstrated in the example below:

<snippet id='calendar-commands-appointmenttappedusercommand' />

Sample RadCalendar definition:

<snippet id='calendar-commands-appointmenttap-xaml' />

Add the following namespaces:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
xmlns:commands="clr-namespace:Telerik.XamarinForms.Input.Calendar.Commands;assembly=Telerik.XamarinForms.Input"
```

Then add this Command to the Commands collection of the RadCalendar instance:

<snippet id='calendar-commands-appointmenttap-cs' />

Create a sample ViewModel with appointments:

<snippet id='calendar-commands-appointmenttap-viewmodel' />

>note Sample AppointmentTap Command example can be found in the SDK Browser application/Examples/Calendar/Commands section.

## See Also

* [Events]({%slug calendar-events %})
* [Date Properties]({%slug calendar-date-properties %})
* [View Modes]({%slug calendar-features-navigation-and-view-mode %})
* [Appointments]({%slug calendar-appointments %})
