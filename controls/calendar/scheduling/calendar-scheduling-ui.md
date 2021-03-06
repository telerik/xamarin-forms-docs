---
title: Scheduling UI Overview
page_title: Xamarin Calendar Documentation | Scheduling UI
description: Check our &quot;Scheduling UI&quot; documentation article for Telerik Calendar for Xamarin control.
position: 0
slug: calendar-scheduling-ui
---

# Scheduling UI #

Telerik Xamarin RadCalendar control exposes built-in UI for creation and modification of appointments, so you can provide users with the ability to directly schedule their meetings. 

This article gives an overview of the available scheduling views in Calendar &amp; Scheduling control used for managing appointments.

## Overview

In order to allow users to create and modify appointments by tapping on a time slot or an existing appointment, you would need to set **SchedulingUiEnabled** Boolean property of RadCalendar to *True* (by default it is *False*). 

<snippet id='calendar-scheduling-ui' />

>note Please note the scheduling UIs can be shown in MonthView, DayView, MultiDayView and WeekView modes. You can refer to [View Modes]({%slug calendar-features-navigation-and-view-mode%}) topic for more information on the available in RadCalendar view modes. For MonthView and WeekView Modes the scheduling UIs can be shown using the AddAppointmentButton. You will need to set the **IsAddAppointmentButtonVisible to True"**. 

>important If you have a collection of custom appointments as a source for RadCalendar, the custom appointment class should inherit from the **Telerik.XamarinForms.Input.Appointment** class. You should also make sure to add a default constructor for the custom appointment. These requirements are needed in order to properly create appointments through Scheduling UI.

* **Appointment Summary View**: When the end user taps on an appointment or use the AddAppointmentButton, the following screen appears, giving the option to edit or delete the appointment:

![Scheduling UI](../images/calendar_schedulingui_0.png)

* **Add Appointment View**: Next, you could see the edit appointment screen which is displayed with pre-selected values when "Edit" from the previous screen is tapped, or with empty fields (except "Starts" and "Ends") when the user has tapped on an empty time slot in order to create a new appointment:

![Scheduling UI](../images/calendar_schedulingui_1.png)

* **Color Picker View**: Note the "Color" field inside Add Appointment View used to apply a color to the appointment. Users can choose between any of the predefined colors:

![Scheduling UI](../images/calendar_schedulingui_8.png)

* **Repeat Appointment View**: Note the "Repeats" field which is used to set a recurrence rule to the appointment. You could choose between any of the predefined recurrences or create a custom recurrence:

![Scheduling UI](../images/calendar_schedulingui_2.png)

* **Custom Recurrence View**: If you choose to create a custom recurrence rule, the next screen is shown:

![Scheduling UI](../images/calendar_schedulingui_6.png)

* **End Repeat Appointment View**: When a recurrence rule is defined, users will have the option to choose when the recurrent appointments end:

![Scheduling UI](../images/calendar_schedulingui_7.png)

* **Save Recurring Appointment View**: If you're modifying a recurrent appointment, you'll be prompted whether the changes should be applied to the whole series or only to the current occurrence, thus making an exception of the recurrence rule:

![Scheduling UI](../images/calendar_schedulingui_4.png)

* **Delete Appointment View**: In order to delete an appointment, you would need to choose "Delete Event" option from the first screen shown after tapping an appointment. You would need to confirm the deletion as shown in the image below:

![Scheduling UI](../images/calendar_schedulingui_3.png)

* **Delete Recurring Appointment View**: If you choose to delete a recurrent appointment, you'll prompted whether the deletion operation should be applied only to the current occurrence or to the whole series:

![Scheduling UI](../images/calendar_schedulingui_5.png) 

## Prevent Scheduling UIs for concrete appointments

In addition, you can prevent the appearance of the scheduling screens for individual appointments or time slots by handling AppointmentTapped/TimeSlotTapped events respectively and setting e.Handled to *True* inside the event handler. 

Check below a quick example on how you could prevent creating an appointment before certain time.

First, subscribe to the TimeSlotTapped event:

<snippet id='calendar-schedulingui-hookevent' />

Then, add the following event handler:

<snippet id='calendar-schedulingui-timeslottappedevent' />

## API for showing Add/Edit Appointment Screens

Since R2 2020 RadCalendar provides API for manually showing the default Add/Edit Appointment views used for creating and modifying appointments. 

Below you will find a list of the exposed methods and commands related to the Scheduling UIs.

### Methods

* **ShowAddAppointmentView()**
* **ShowAddAppointmentView(DateTime appointmentStartTime, DateTime appointmentEndTime)**

	Both methods can be used to display the "New Appointment" Scheduling UI with which users can add appointments to the Calendar AppointmentSource. The second method gives you the option to define the StartTime and EndTime applied in the corresponding fields when the New Appointment view is displayed.

* **ShowEditAppointmentView(Appointment appointment)** - displays the "Edit Appointment" Scheduling UI with which users can edit or delete the appointment set as a method parameter.

### Commands

If you prefer the MVVM pattern, you can take advantage of the exposed commands which provide the same functionality as the methods:

* **ShowAddAppointmentViewCommand**: Displays the "New Appointment" view for adding appointments to the Calendar AppointmentSource. 
	
	When using the **ShowAddAppointmentViewCommand**, you would need to pass an object of type *ShowAddAppointmentViewCommandContext*  as a command parameter. Through the *ShowAddAppointmentViewCommandContext* you can define the StartDate and EndDate of the new appointment.
	
* **ShowEditAppointmentViewCommand**: Displays the "Edit Appointment" view for modifying an existing appointment.
	
	When using the **ShowEditAppointmentViewCommand**, you would need to pass an object of type *ShowEditAppointmentViewCommandContext* as a command parameter. Through the *ShowEditAppointmentViewCommandContext* you can define the Appointment that will be edited.
	
#### Example

Let's have the following Calendar instance with both **ShowAddAppointmentViewCommand** and **ShowEditAppointmentViewCommand** added to Calendar's Commands collection:

<snippet id='calendar-scheduling-commands-xaml' />

Add the following namespaces:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
xmlns:calendarCommands="clr-namespace:Telerik.XamarinForms.Input.Calendar.Commands;assembly=Telerik.XamarinForms.Input"       
```

For the purpose of the example, the commands will be called from two buttons:

<snippet id='calendar-scheduling-commands-buttons' />

Let's take a look at the ViewModel class where both *AddNewAppointmentContext* and *EditAppointmentContext* objects are defined:

<snippet id='calendar-scheduling-commands-vm' />

*AddNewAppointmentContext* sets a new 1-hour appointment from now on, while *EditAppointmentContext* specifies the first appointment from the AppointmentsSource for editing.

## See Also

* [Appointments]({%slug calendar-appointments%})
* [View Modes]({%slug calendar-features-navigation-and-view-mode%})
* [Calendar Selection]({%slug calendar-selection%})

