---
title: Events
page_title: Xamarin Calendar Documentation | Appointments
description: Check our &quot;Scheduling&quot; documentation article for Telerik Calendar for Xamarin control.
position: 4
slug: calendar-scheduling-events
---

# Scheduling Events

Since R3 2021 Service Pack Calendar Scheduling UIs for Xamarin exposes events for appointments changes:
 
* **AppointmentAdded**(AppointmentChangedEventAgrs): Occurs when appointment is added throught the Scheduling UI.
	* The `sender` argument which is of type *object*, but can be cast to the *RadCalendar* type.
		* An `AppointmentChangedEventAgrs` object which provides the following properties:
		* `Appointment` property of type *IAppointment* and could be cast to the appointment implementation that is used in RadCalendar.
		* `Occurrence` property of type *IExceptionOccurrence* which gets the occurance.
		* `OccurrenceAction` property of type *OccurrenceAction* which gets the action performed over the occurrence.
		
* **AppointmentUpdated**(AppointmentChangedEventAgrs): Occurs when y
	* The `sende`r argument which is of type *object*, but can be cast to the *RadCalendar* type.
		* An `AppointmentChangedEventAgrs` object which provides the following properties:
		* `Appointment` property of type *IAppointment* and could be cast to the appointment implementation that is used in RadCalendar.
		* `Occurrence` property of type *IExceptionOccurrence* which gets the occurance.
		* `OccurrenceAction` property of type *OccurrenceAction* which gets the action performed over the occurrence.
		
* **AppointmentDeleted**(AppointmentChangedEventAgrs): Occurs when appointment is deleted.
	* The `sender` argument which is of type *object*, but can be cast to the *RadCalendar* type.
	* An `AppointmentChangedEventAgrs` object which provides the following properties:
		* `Appointment` property of type *IAppointment* and could be cast to the appointment implementation that is used in RadCalendar.
		* `Occurrence` property of type *IExceptionOccurrence* which gets the occurance.
		* `OccurrenceAction` property of type *OccurrenceAction* which gets the action performed over the occurrence.

>important In order to use these events, set `SchedulingUiEnabled` to `True`.

## Example

This example demonstrates a sample usage of appointment added, updated and deleted events. The ViewMode is MultiDayView.

Calendar definition in XAML:

<snippet id='calendar-scheduling-ui-events'/>

Events:

<snippet id='calendar-schedulingui-events-handlers'/>

## See Also

* [View Modes]({%slug calendar-features-navigation-and-view-mode%})
* [Day View]({%slug calendar-dayview%})
* [MultiDay View]({%slug calendar-multidayview%})
* [Agenda View]({%slug calendar-agendaview%})
* [Recurrence]({%slug calendar-recurrence-overview %})
* [Calendar Selection]({%slug calendar-selection%})
