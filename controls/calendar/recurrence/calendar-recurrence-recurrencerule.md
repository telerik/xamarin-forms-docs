---
title: Recurrence Rule
page_title: Recurrence Rule
description: Check our &quot;Recurrence Rule&quot; documentation article for Telerik Calendar for Xamarin control.
position: 2
slug: calendar-recurrence-recurrencerule
---

# Recurrence Rule

RadCalendar includes support for recurring events on daily, weekly, monthly and yearly basis. Exceptions to the recurrence rules are also permitted. To support this recurrence behavior, the **Telerik.XamarinForms.Input.Appointment** class includes the __RecurrenceRule__ property. When an appointment is promoted into a recurring event its __RecurrenceRule__ is set with correct [RecurrencePattern]({%slug calendar-recurrence-recurrencepattern%}).     

The purpose of this tutorial is to show you:

* The main properties exposed by the __RecurrenceRule__ class:

	* [RecurrencePattern](#recurrencepattern)

	* [Exceptions](#exceptions)

* [How to create a recurrence rule and associate it with an appointment](#how-to-create-a-recurrence-rule-and-associate-it-with-an-appointment)

* [How to add exception occurrences to the recurrence rule](#how-to-add-exception-occurrences-to-the-recurrence-rule)

## RecurrenceRule Class

While the *RecurrencePattern* class carries the main information about the occurrences, the *RecurrenceRule* class is the engine for creating and evaluating recurrence rules.        

The next several sections describe which are the main properties and methods exposed by the *RecurrenceRule* class.        

## RecurrencePattern

The __RecurrenceRule__ class exposes a __RecurrencePattern__ property, which allows you to get\set the recurrence pattern associated with the current rule. For more information about creating various recurrence patterns, take a look at the [RecurrencePattern]({%slug calendar-recurrence-recurrencepattern%}) topic.  

## Exceptions

The __RecurrenceRule__ class exposes an __Exceptions__ property, which allows you to get or set all exception occurrences associated with the current rule. For more information read [How to Add Exception Occurrences to the Recurrence Rule](#how-to-add-exception-occurrences-to-the-recurrence-rule)

## How to Create a Recurrence Rule and Associate it With an Appointment

```C#
var startDate = new DateTime(2019, 01, 09, 8, 0, 0);

var fitnessAppointment = new Appointment()
{
    Title = "Fitness",
    StartDate = startDate,
    EndDate = startDate.AddHours(2),
	Color = Color.Blue
};
var recurrencePattern = new RecurrencePattern()
{
	Frequency = RecurrenceFrequency.Weekly,
	MaxOccurrences = 30,
	DaysOfWeekMask = RecurrenceDays.Monday | RecurrenceDays.Wednesday | RecurrenceDays.Friday
}; 
fitnessAppointment.RecurrenceRule = new RecurrenceRule(recurrencePattern);
calendar.AppointmentsSource = new List<Appointment> { fitnessAppointment };
```

The above example shows you how to create a recurrence pattern, then how to associate it with a recurrence rule. Finally the recurrence rule is assigned to an appointment.

## How to Add Exception Occurrences to the Recurrence Rule

RadCalendar's API permits you to add exception occurrences to the recurrence rule. You could add exceptions directly to the RecurrenceRule's Exceptions collection.

Exceptions collection contains a list of *ExceptionOccurrence* objects where each ExceptionOccurrence includes:

* **ExceptionDate**: DateTime which indicates when the exception occurs. You can set only ExceptionDate to remove the given occurrence from the recurrence.
          
* **Appointment**: Refers to the exception appointment.

One possible scenario of adding an exception to a recurrence rule is shown in the next example:

```C#
var startDate = new DateTime(2019, 01, 09, 8, 0, 0);            
var recurrencePattern = new RecurrencePattern()
{
    Frequency = RecurrenceFrequency.Weekly,
    MaxOccurrences = 30,
    DaysOfWeekMask = RecurrenceDays.Monday | RecurrenceDays.Wednesday | RecurrenceDays.Friday
};
var recurrenceRule = new RecurrenceRule(recurrencePattern);
recurrenceRule.Exceptions.Add(new ExceptionOccurrence() { ExceptionDate = startDate.AddDays(2) });
var fitnessAppointment = new Appointment()
{
    Title = "Fitness",
    StartDate = startDate,
    EndDate = startDate.AddHours(2),
    Color = Color.Blue,
    RecurrenceRule = recurrenceRule
};
calendar.AppointmentsSource = new List<Appointment> { fitnessAppointment };
```

## See Also

* [Appointments]({%slug calendar-appointments%})
* [Recurrence Overview]({%slug calendar-recurrence-overview %})
* [Recurrence Pattern]({%slug calendar-recurrence-recurrencepattern %})

