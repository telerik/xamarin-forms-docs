---
title: Special Slots
page_title: TKCalendar page which explains how to integrate Special Slots in TKCalendar for iOS.
slug: ios-calendar-specialslots
tags: tkcalendar, calendar, special slots
position: 4
publish: true
---

# TKCalendar for Xamarin.iOS: Special Slots

With R3 2019 release of Telerik UI for Xamarin TKCalendar for Xamarin.iOS provides the option to define a collection of special and restricted time slots in order to make them noticeable across the timeline of the Day and MultiDay views. 

Every SpecialSlot has the following properties:

* **StartDate**(*NSDate*)
* **EndDate**(*NSDate*)
* **IsReadOnly**(*bool*) When set to **True** the slot is disabled (restricted), meaning the end user wouldn't be able to create or modify appointments at that slot;
* **Style**(*TKCalendarSpecialSlotStyle*): Defines the BackgroundColor of the Special Slot
* **Location**(*NSString*)

## Example

**TKCalendarDataSource** protocol should be implemnted in order to bind TKCalendar with data. This is easy because this protocol contains a single method EventsForDate. The adopter should provide the events specific for the provided date.
In addition to add a Special Slots you have to override the SpecialSlotsForDate method



Below you can find a quick example how to create special slots.

```C#
public override TKCalendarSpecialSlotProtocol[] SpecialSlotsForDate(TKCalendar calendar, NSDate date)
{
    var specialslot = new TKCalendarSpecialSlot()
    {
        StartDate= //add start date here,
        EndDate= //add end date here,
        IsReadOnly = true,
    };
}
```
