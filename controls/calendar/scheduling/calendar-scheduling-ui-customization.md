---
title: Customizable Scheduling UIs
page_title: Xamarin Calendar Documentation | Scheduling UI
description: Check our &quot;Scheduling UI&quot; documentation article for Telerik Calendar for Xamarin control.
position: 1
slug: calendar-scheduling-ui-customization
---

# Customizable Scheduling UIs

With R3 2020 Release the views used within the built-in Scheduling UI control can be customized. You can edit the control templates of the different views and apply customizations.

## The following Scheduling UI Views can be customized

* **AddAppointmentView** –view for adding appointments 
* **AppointmentSummaryView** –view for editing appointments 
* **ColorPickerView** – view for picking color which is applied to the appointment  
* **DeleteAppointmentView** –view for deleting appointments 
* **RecurrenceView** – view for recurrence appointments 
* **SaveRecurringAppointmentView** – view for saving the recurring appointment 
* **DeleteRecurringAppointmentView** – view for deleting the recurring appointments 
* **CalendarMonthlyPickerView** – view for monthly custom recurrence 
* **CalendarWeeklyPickerView** - view for weekly custom recurrence 
* **CalendarYearlyPickerView** - view for yearly custom recurrence 
* **RepeatAppointmentView** – view for repeating appointments 
* **EndRepeatAppointmentView** – view for end repeat appointments 

>note Please note that scheduling screens can be shown in MonthView, DayView, MultiDayView and WeekView modes. You could refer to the [View Modes]({%slug calendar-features-navigation-and-view-mode%}) topic for more information on the available in RadCalendar views. For MonthView and WeekView Modes the scheduling screens can be shown using the AddAppointmentButton. You will need to set the **IsAddAppointmentButtonVisible to True"**. 

## Partially customization options 

In addition, to avoid editing the whole control template, there are additional properties which you can use to customize the look of the UIs, such as SeparatorThickness, ButtonBackgroundColor, etc.  

>note These properties are different for different views. For more details which properties can be set for the concrete view refer to the articles of the separate views inside the Scheduling UI Views section.

>important These properties or the ControlTemplates can be changed by applying styles that target a specific view in the “App.xaml” file of your application. 

## See Also

* [Appointments]({%slug calendar-appointments%})
* [View Modes]({%slug calendar-features-navigation-and-view-mode%})
* [Calendar Selection]({%slug calendar-selection%})

