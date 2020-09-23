---
title: Add Appointment Button
page_title: Xamarin Calendar Documentation | Appointments
description: Check our &quot;Appointments&quot; documentation article for Telerik Calendar for Xamarin control.
position: 3
slug: calendar-appointments-addbutton
---

# Add Appointment Button

With R2 2020 Release of Telerik UI for Xamarin RadCalendar control provides you the option to add appointments using the calendar's **Add Appointment Button**. By default the add appointment button is not visible. In order to display it on the screen you need to use the following porperty:

* **IsAddAppointmentVisible**(*bool*): Specifies whether the add appointment button will be visible. If you want to add appointments using the button you need to set the **IsAddAppointmentVisible** to **True**.

<snippet id='calendar-appointments-example'/>

* In addition the add appointment button has an event **AddAppointmentButtonClicked** which occurs when the Button within the Calendar is tapped. Telerik.XamarinForms.Input.IsAddAppointmentButtonVisible controls the visibility of the button.

<snippet id='calendar-appointment-button-click-event'/>

The image below shows where is the button position when IsAddAppointmentVisible="True":

![Appointment Button](../images/add-appointment-button.png)

## See Also

* [View Modes]({%slug calendar-features-navigation-and-view-mode%})
* [Day View]({%slug calendar-dayview%})
* [MultiDay View]({%slug calendar-multidayview%})
* [Agenda View]({%slug calendar-agendaview%})
* [Recurrence]({%slug calendar-recurrence-overview %})
* [Calendar Selection]({%slug calendar-selection%})

