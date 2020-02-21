---
title: Programmatic Scrolling
page_title: Programmatic Scrolling
description: Check our &quot;Programmatic Scrolling&quot; documentation article for Telerik Calendar for Xamarin control.
position: 9
slug: calendar-scrolling
---

# Programmatic Scrolling

This article will explain how you could set up RadCalendar, so that the view is scrolled to specific time or a particular appointment in DayView and MultiDayView modes. 

## ScrollTimeIntoView method

ScrollTimeIntoView method scrolls the current View (Day or MultiDay) to the specified time. It accept a single parameter of type *TimeSpan*. The snippet below shows how the method could be used:

<snippet id='calendar-scrolltotime-code' />

![Calendar Scroll to Time](images/calendar_scrolltotime.png)

And here is the result after the method is invoked:

## ScrollAppointmentIntoView method

Through ScrollAppointmentIntoView method you could configure the current View (Day or MultiDay) to scroll down and display the specified as a parameter appointment. Check the snippet below on how this method is called:

<snippet id='calendar-scrolltoapp-code' />

The next screenshot shows the result:

![Calendar Scroll to Appointment](images/calendar_scrolltoapp.png)

>important A sample Programmatic Scrolling example can be found in the Calendar &amp; Scheduling/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

* [Date Properties]({%slug calendar-date-properties%})
* [View Modes]({%slug calendar-features-navigation-and-view-mode%})
* [Appointments]({%slug calendar-events%})