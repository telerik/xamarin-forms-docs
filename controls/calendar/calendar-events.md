---
title: Events
page_title: Xamarin Calendar Documentation | Events
description: Check our &quot;Events&quot; documentation article for Telerik Calendar for Xamarin control.
position: 13
slug: calendar-events
---

# Events

The RadCalendar component exposes the following events:

* **DisplayDateChanged**: Occurs when the current display date is changed. The DisplayDateChanged event handler receives two parameters: 
	* The sender argument which is of type *object*, but can be cast to the *RadCalendar* type.
	* A __ValueChangedEventArgs&lt;object&gt;__ object which provides both old and new values of the __DisplayDate__ property. The values are of type *object*, but can be cast to the *DateTime* type.

* **ViewChanged**: Occurs when the calendar view mode is changed. The ViewChanged event handler receives two parameters:
	* The sender argument which is of type *object*, but can be cast to the *RadCalendar* type.
	* A __ValueChangedEventArgs&lt;CalendarViewMode&gt;__ object which provides both old and new value of the __ViewMode__ property. The values are of type *CalendarViewMode*.

* **SelectionChanged**: Occurs when the selected date is changed programmatically or due to user interaction. The SelectionChanged event handler receives two parameters:
	* The sender argument which is of type *object*, but can be cast to the *RadCalendar* type.
	* A __ValueChangedEventArgs&lt;object&gt;__ object which provides old and new value of the __SelectedDate__. The values are of type *object*, but can be cast to the *DateTime* type.

* **MonthChanged**: Occurs when the calendar month is changed in **Month** ViewMode.
	* The `sender` argument which is of type *object*, but can be cast to the *RadCalendar* type.
	* A __ValueChangedEventArgs&lt;object&gt;__ object which provides both `NewValue` and `PreviousValue`. The values are of type *object*.

* **TimeSlotTapped**: Occurs when the end-user taps on a time slot.
	* The sender argument which is of type *object*, but can be cast to the *RadCalendar* type.
	* A __TimeSlotTapEventArgs__ object which provides StartTime and EndTime properties of type *DateTime* that define the time slot.

* **AppointmentTapped**: Occurs when you tap over a specific appointment when in DayView/MultiDayView mode. It can be used to get all the information regarding the appointment. 
	* The sender argument which is of type *object*, but can be cast to the *RadCalendar* type.
	* An __AppointmentTappedEventArgs__ object which provides Appointment property. The Appointment is of type *IAppointment* and could be cast to the appointment implementation that is used in RadCalendar.
		
In addition, RadCalendar provides the following eventa relating to the native Calendar control renderer:
	
* **NativeControlLoaded** : Occurs when the renderer has finished preparing the native control.
* **NativeControlUnloaded** : Occurs when the native control is in invalid state. 

Both event handlers receives two parameters:
* The sender argument which is of type *object*, but can be cast to the *RadCalendar* type.
* A **System.EventArgs** object.

> Scheduling UIs exposes events for appointments changes : `AppointmentAdded`, `AppointmentUpdated` and `AppointmentDeleted` events. For more details check the [SchedulingUI Events]({%slug calendar-scheduling-events%}) article.

## See Also

* [Date Properties]({%slug calendar-date-properties %})
* [View Modes]({%slug calendar-features-navigation-and-view-mode %})
* [Appointments]({%slug calendar-appointments %})

