---
title: Navigation
page_title: Calendar Navigation
slug: ios-calendar-navigation
position: 6
---

# Calendar for Xamarin.iOS: Navigation

This document describes the options to navigate between dates in <code>TKCalendar</code> and the related notifications.

There are two methods in <code>TKCalendar</code> used to navigate forward/backward in the calendar: <code>NavigateForward</code> and <code>NavigateBackward:</code>. These methods are context sensitive and the navigation period is specific to the current view mode (e.g. when using a week view the navigation period will be set to one week):

```C#
this.CalendarView.NavigateForward(true);
```

The calendar will not allow navigating to a date outside of the allowed period, specified by the <code>MinDate</code> and <code>MaxDate</code> properties:

```C#
this.CalendarView.MinDate = minDate;
this.CalendarView.MaxDate = maxDate;
```

The <code>NavigateToDate</code> method is used to navigate to specific date within the allowed period:

```C#
NSDate date = NSDate.Now;
TkCalendar calendarView = new TKCalendar();
calendarView.NavigateToDate(newDate, true);
```

You can determine whether a navigation occurred by implementing <code>TKCalendarDelegate</code> protocol. 

You should implement the `WillNavigateToDate` method if you want to be notified before this action occurs and `DidNavigateToDate` method when action occured.

```C#
public override void DidNavigateToDate(TKCalendar calendar, NSDate date)
{
    base.DidNavigateToDate(calendar, date);
}
public override void WillNavigateToDate(TKCalendar calendar, NSDate date)
{
    base.WillNavigateToDate(calendar, date);
}
```
