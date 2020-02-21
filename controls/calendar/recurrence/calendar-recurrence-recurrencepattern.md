---
title: Recurrence Pattern
page_title: Recurrence Pattern
description: Check our &quot;Recurrence Pattern&quot; documentation article for Telerik Calendar for Xamarin control.
position: 1
slug: calendar-recurrence-recurrencepattern
---

# Recurrence Pattern

Calendar &amp; Scheduling  component includes support for recurring events on daily, weekly, monthly and yearly basis. [Exceptions](#Exceptions) to the recurrence rules are also permitted. To support this recurrence behavior, the **Telerik.XamarinForms.Input.Appointment** class includes the __RecurrenceRule__ property. When an appointment is promoted into a recurring event its __RecurrenceRule__ is set with correct __RecurrencePattern__.

The RecurrenceRule class is the engine for creating and evaluating recurrence rules. It has a mandatory property __Pattern__ of type __RecurrencePattern__.

The purpose of this tutorial is to show you:

* The main properties exposed by the __RecurrencePattern__ class:

	* [Frequency](#frequency)

	* [DaysOfWeekMask](#daysofweekmask)

	* [Interval](#interval)

	* [DayOfMonth](#dayofmonth)

	* [DayOrdinal](#dayordinal)

	* [MonthOfYear](#monthofyear)

	* [MaxOccurrences](#maxoccurrences)
	
	* [RepeatUntil](#repeatuntil)
	
## RecurrencePattern Class

While the **RecurrenceRule** class is the engine for creating and evaluating recurrence rules, the *Telerik.XamarinForms.Input.RecurrencePattern* class carries the main information about the occurrence.        

The next several sections describe the main properties and methods exposed by the __RecurrencePattern__ class.        

## Frequency

If you want to set the __frequency__ of the recurrence, you need to set the __RecurrencePattern__'s __Frequency__ property. Its values are predefined in the *RecurrenceFrequency* enumeration, which exposes the following values:        

* **Daily**: Use it whenever you want the appointment to occur every day.
* **Weekly**: Use it whenever you want the appointment to occur every week.
* **Monthly**: Use it whenever you want the appointment to occur every month.
* **Yearly**: Use it whenever you want the appointment to occur every year.

## DaysOfWeekMask

When you want to set the days of the week of the recurrence, you need to set the __RecurrencePattern__'s __DaysOfWeekMask__ property. Its values are predefined in the *RecurrenceDays* enumeration, which exposes the following values:

* __Sunday__
* __Monday__
* __Tuesday__
* __Wednesday__
* __Thursday__
* __Friday__
* __WeekDays__
* __Saturday__
* __WeekendDays__
* __EveryDay__

>tip__RecurrenceDays.WeekDays__ is equivalent to __RecurrenceDays.Monday | RecurrenceDays.Tuesday | RecurrenceDays.Wednesday | RecurrenceDays.Thursday | RecurrenceDays.Friday__.

>tip__RecurrenceDays.WeekendDays__ is equivalent to __RecurrenceDays.Saturday | RecurrenceDays.Sunday.__

>tip__RecurrenceDays.EveryDay__ is equivalent to __RecurrenceDays.Monday | RecurrenceDays.Tuesday | RecurrenceDays.Wednesday | RecurrenceDays.Thursday | RecurrenceDays.Friday | RecurrenceDays.Saturday | RecurrenceDays.Sunday__.

>tip__Enum__ members are often used in logical operation to create a combination of values. Often you would need to set more than one value of the __DaysOfWeekMask__ property.

## Interval

If you want to set the number of days between each recurrence, you need to specify the __RecurrencePattern__'s __Interval__ property.

>tipThe default value of the __RecurrencePattern__'s __Interval__ property is 1.

>tipCombining the __Interval__ property with the __DaysOfWeekMask__ and __Frequency__ pattern gives you even more flexibility when creating recurring appointments.

## DayOfMonth

When you want to specify on which day of the month the appointment occurs, you need to set the __DayOfMonth__ property.

## DayOrdinal

When you want to specify the day ordinal (first, second, third, fourth, etc.), you need to set the __DayOrdinal__ property. For example, you may want to create an appointment that occurs on every second Monday of every third month. 

## MonthOfYear

When you want to specify on which month of the year the appointment occurs, you need to set the __MonthOfYear__ property. This property is used mainly in the __Yearly__ appointments. 

## MaxOccurrences

When you want to specify a limit of the occurrences for the appointment, then you need to set the __MaxOccurrences__ property. 

## RepeatUntil

When you want to specify the end date of the appointment's occurrences, then you need to set the __RepatUntil__ property. 

## See Also

* [Appointments]({%slug calendar-appointments%})
* [Recurrence Overview]({%slug calendar-recurrence-overview %})
