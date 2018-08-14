---
title: Appointments
page_title: Appointments
position: 5
slug: calendar-appointments
---

# Appointments #

## Creating an Appointment ##

RadCalendar can display appointments by setting its **AppointmentsSource** property. It accepts a collection of objects, which should implement the **Telerik.XamarinForms.Input.IAppointment** interface. This interface defines 6 members:

- **StartDate** *(DateTime)*
- **EndDate** *(DateTime)*
- **Title** *(string)*
- **Detail** *(string)*
- **Color** *(Color)*
- **IsAllDay** *(bool)*

>caution In **R2 2017** we have introduced a breaking change in the **IAppointment** interface by adding the **Detail** property. 

### Appointments Example ###

<snippet id='calendar-gettingstarted-appointmentssource-csharp'/>

where **Appointment** class implements **IAppointment** interface:

<snippet id='calendar-getting-started-appointment-class'/>

#### **Figure 1: Appearance of the RadCalendar control in month view mode**
![Appointments monthview](images/monthviews.png)

#### **Figure 2: Appearance of the RadCalendar control in day view mode**
![Appointments dayview](images/dayviews.png)

## Events ##
 
**AppointmentTapped**(AppointmentTappedEventArgs): Occurs when you tap over a specific appointment when in DayView mode. It can be used to get all the information regarding the appointment.

### AppointmentTapped Example ###

First you need to set the ViewMode to Day:

<snippet id='calendar-features-setviewmode-csharp'/>

Eventually, you can utilize the event: 

<snippet id='calendar-features-appointmenttapped-csharp'/>

## See Also

* [Navigation and View Mode]({%slug calendar-features-navigation-and-view-mode%})
* [Calendar Selection]({%slug calendar-selection%})

