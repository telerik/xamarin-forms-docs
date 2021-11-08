---
title: Events
page_title: Xamarin Calendar Documentation | Scheduling Events
description: Check our &quot;Scheduling&quot; documentation article for Telerik Calendar for Xamarin control.
position: 4
slug: calendar-scheduling-events
---

# Scheduling UI Events

Since R3 2021 Service Pack Calendar's Scheduling UIs for Xamarin exposes events for appointments changes:
 
* **AppointmentAdded**(AppointmentChangedEventAgrs): Occurs when appointment is added throught the Scheduling UI.
	* The `sender` argument which is of type *object*, but can be cast to the *RadCalendar* type.
		* An `AppointmentChangedEventAgrs` object which provides the following properties:
		* `Appointment` property of type *IAppointment* and could be cast to the appointment implementation that is used in RadCalendar.
		* `Occurrence` property of type *IExceptionOccurrence* which gets the occurance. If the appointment is not recurrent, the value is null.
		* `OccurrenceAction` property of type *OccurrenceAction* which gets the action performed over the occurrence.
		
* **AppointmentUpdated**(AppointmentChangedEventAgrs): Occurs when appointment is updated. The event is also raised for recurrent appointment when there is an action over the exception occurence - add/delete/update. 
	* The `sende`r argument which is of type *object*, but can be cast to the *RadCalendar* type.
		* An `AppointmentChangedEventAgrs` object which provides the following properties:
		* `Appointment` property of type *IAppointment* and could be cast to the appointment implementation that is used in RadCalendar.
		* `Occurrence` property of type *IExceptionOccurrence* which gets the occurance. If the appointment is not recurrent, the value is null.
		* `OccurrenceAction` property of type *OccurrenceAction* which gets the action performed over the occurrence. 
		
The `OccurrenceAction` enumeration specifies an action performed over an exception occurrence. The actions are:
* `None`: No action is performed over the exception occurrence of the recurrent appointment.
* `Add`: When an exception occurence of the recurrent appointment is added.
* `Update`: When an exception occurence of the recurrent appointment is updated.
* `Delete`: When an exception occurence of the recurrent appointment is deleted.
		
* **AppointmentDeleted**(AppointmentChangedEventAgrs): Occurs when appointment is deleted.
	* The `sender` argument which is of type *object*, but can be cast to the *RadCalendar* type.
	* An `AppointmentChangedEventAgrs` object which provides the following properties:
		* `Appointment` property of type *IAppointment* and could be cast to the appointment implementation that is used in RadCalendar.
		* `Occurrence` property of type *IExceptionOccurrence* which gets the occurance. If the appointment is not recurrent, the value is null.
		* `OccurrenceAction`  of type *OccurrenceAction* which gets the action performed over the occurrence. 

>important In order to use these events, set `SchedulingUiEnabled` to `True`.

## Example

This example demonstrates a sample usage of appointment added, appointment updated and appointment deleted events. The ViewMode is set to MultiDayView.

Calendar definition in XAML:

<snippet id='calendar-scheduling-ui-events'/>

Events:

<snippet id='calendar-schedulingui-events-handlers'/>

![Scheduling UI Events](../images/scheduling-events.gif)

## See Also

* [View Modes]({%slug calendar-features-navigation-and-view-mode%})
* [Day View]({%slug calendar-dayview%})
* [MultiDay View]({%slug calendar-multidayview%})
* [Agenda View]({%slug calendar-agendaview%})
* [Recurrence]({%slug calendar-recurrence-overview %})
* [Calendar Selection]({%slug calendar-selection%})
