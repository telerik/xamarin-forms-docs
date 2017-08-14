---
title: Selection
page_title: Calendar Selection
position: 6
---

# Calendar: Selection

This article describes the different selection modes available in <code>TKCalendar</code>

The selection mode in <code>TKCalendar</code> can be altered by using the <code>selectionMode</code> property. The available options are:

- <code>TKCalendarSelectionModeNode</code> - No selection is allowed.
- <code>TKCalendarSelectionModeSingle</code> - A single date can be selected.
- <code>TKCalendarSelectionModeMultiple</code> - Different dates can be selected by tapping on them. A second tap will deselect the date.
- <code>TKCalendarSelectionModeRange</code> - A range between two dates on the same page can be selected.

<img src="../images/calendar-selection001.png" />

Use the <code>selectedDate</code> property to get or set the currently selected date in <code>TKCalendar</code> when the single selection mode is used.

Use the <code>selectedDates</code> property to get or set the selected dates when multiple selection mode is selected.

The <code>selectedDatesRange</code> property is used to store the date range when this selection option is used.

You can determine whether a selection is changed by adopting <code>TKCalendarDelegate</code> protocol:

<snippet id='selection-didselectdate'/>

<snippet id='selection-didselectdate-swift'/>

```C#
public override void DidSelectDate (TKCalendar calendar, NSDate date)
{
    Console.WriteLine (String.Format ("{0}", date));
}
```

You can prevent <code>TKCalendar</code> from selecting specific date by handling the <code>calendar:shouldSelectDate:</code>

<snippet id='selection-shouldselectdate'/>

<snippet id='selection-shouldselectdate-swift'/>

```C#
public override bool ShouldSelectDate (TKCalendar calendar, NSDate date)
{
    Console.WriteLine (String.Format ("Trying to select the unselectable {0}", date));

    return !TKCalendar.IsDate (main.UnselectableDate, date, NSCalendarUnit.Year | NSCalendarUnit.Month | NSCalendarUnit.Day, main.CalendarView.Calendar);
}
```

Furthermore, the <code>calendar:didDeselectDate:</code> is called when using multiple selection to notify for unselected dates:

<snippet id='selection-didselecteddate'/>

<snippet id='selection-didselecteddate-swift'/>

```C#
public override void DidDeselectedDate (TKCalendar calendar, NSDate date)
{
    Console.WriteLine (String.Format ("{0}", date));
}
```