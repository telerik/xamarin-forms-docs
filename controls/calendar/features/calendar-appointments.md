---
title: Appointments
page_title: Appointments
position: 3
slug: calendar-appointments
---

# Appointments #

RadCalendar can display appointments in its month view by using its **AppointmentsSource** property. It accepts a collection of objects, which implement the **Telerik.XamarinForms.IAppointment** interface. This interface defines 6 members:

- **StartDate** *(DateTime)*
- **EndDate** *(DateTime)*
- **Title** *(string)*
- **Detail** *(string)*
- **Color** *(Color)*
- **IsAllDay** *(bool)*

> In **R2 2017** we have introduced a breaking change in the **IAppointment** interface by adding the **Detail** property. 

## Example ##

<snippet id='calendar-gettingstarted-appointmentssource-csharp'/>

where **Appointment** class implements **IAppointment** interface:

<snippet id='calendar-getting-started-appointment-class'/>

![Appointments](images/calendar-appointments.png)

## See Also

