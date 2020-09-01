---
title: Appointments Overview
page_title: Xamarin Calendar Documentation | Appointments
description: Check our &quot;Appointments&quot; documentation article for Telerik Calendar for Xamarin control.
position: 0
slug: calendar-appointments
---

# Calendar Appointments Overview

RadCalendar can display appointments by setting its **AppointmentsSource** property. AppointmentsSource accepts a collection of *Telerik.XamarinForms.Input.Appointment* objects. Each Appointment defines the following members:

- **StartDate** (*DateTime*);
- **EndDate** (*DateTime*);
- **Title** (*string*): sets the subject of the appointment;
- **Detail** *(string)*: adds additional information related to the appointment;
- **Color** *(Color)*: : specifies the color marking the appointment when visualized in the timeline; 
- **IsAllDay** (*bool*): indicates whether the appointment will take all day;
- **RecurrenceRule** (*IRecurrenceRule*): defines basic properties of the recurrence rule of the appointment, for more details go to [Recurrence]({%slug calendar-recurrence-overview %}) topic.

The other alternative is to create custom appointment class that inherits from the *Telerik.XamarinForms.Input.Appointment* class. The class includes also the RecurrenceRule property. For more detals please check the [Custom Appointments]({%slug calendar-custom-appointments%}) article.
 
## Example: Creating an Appointment

Here is a quick example on how you can create Appointments collection and bind it to the **AppointmentsSource** property of RadCalendar.

First, create a ViewModel class and add "Appointments" collection inside it:

<snippet id='calendar-appointments-viewmodel'/>

Then, add the RadCalendar definition to your page:

<snippet id='calendar-appointments-example' />

#### **Figure 1: Appearance of the RadCalendar control in month view mode**

![Appointments monthview](../images/monthviews.png)

#### **Figure 2: Appearance of the RadCalendar control in day view mode**

![Appointments dayview](../images/dayviews.png)

## See Also

* [Custom Appointments]({%slug calendar-custom-appointments%})
* [Appointment Template]({%slug calendar-appointments-template%})
* [Add Appointment Button]({%slug calendar-appointments-addbutton%})
* [Events]({%slug calendar-appointments-events%})
* [Day View]({%slug calendar-dayview%})
* [MultiDay View]({%slug calendar-multidayview%})
* [Agenda View]({%slug calendar-agendaview%})
* [Recurrence]({%slug calendar-recurrence-overview %})
* [Calendar Selection]({%slug calendar-selection%})
