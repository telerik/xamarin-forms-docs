---
title: Customizing Scheduling UIs
page_title: Xamarin Calendar Documentation | Scheduling UI
description: Check our &quot;Scheduling UI&quot; documentation article for Telerik Calendar for Xamarin control.
position: 1
slug: calendar-scheduling-ui-customization
---

# Customizing Scheduling UIs

With R3 2020 Release the views used within the built-in Scheduling UI control can be customized. You can edit the control templates of the different views and apply customizations.

## The following Scheduling UI Views can be customized

* **AddAppointmentView** – view that allows the user to change the main appointment properties like `Title`, `Start` and `End Date`, `Detail`, `Recurrence`, whether it will be All Day appointment.
* **AppointmentSummaryView** – view that shows brief information about the appointment.
* **ColorPickerView** – view for picking color which is applied to the appointment. 
* **DeleteAppointmentView** – view for choosing appointment deleting options.
* **SaveRecurringAppointmentView** – view for choosing recurring appointment saving options.
* **DeleteRecurringAppointmentView** – view for choosing recurring appointments deleting options.
* **RepeatAppointmentView** – view for choosing predefined repeat options like `EveryDay`, `Every Month`, `Every Year`, etc.
* **EndRepeatAppointmentView** – view for choosing when recurring appointments end.
* **CustomRecurrenceView** – view for choosing custom recurring intervals of an appointment.

>note Scheduling screens can be shown in MonthView, DayView, MultiDayView and WeekView modes. You could refer to the [View Modes]({%slug calendar-features-navigation-and-view-mode%}) topic for more information on the available in RadCalendar views. For MonthView and WeekView Modes the scheduling screens can be shown using the AddAppointmentButton. You will need to set the `IsAddAppointmentButtonVisible` `True`. 

## Partial Customization Options 

In addition, to avoid editing the whole control template, there are additional properties which you can use to customize the look of the UIs, such as SeparatorThickness, ButtonBackgroundColor, etc.  

>note These properties are different for different views. For more details which properties can be set for the concrete view refer to the articles of the separate views inside the Scheduling UI Views section.

>important These properties or the ControlTemplates can be changed by applying styles that target a specific view in the “App.xaml” file of your application. 

## See Also

* [Appointments]({%slug calendar-appointments%})
* [Custom Appointments]({%slug calendar-custom-appointments%})
* [View Modes]({%slug calendar-features-navigation-and-view-mode%})
* [Calendar Selection]({%slug calendar-selection%})
