---
title: Navigation
page_title: Calendar Navigation
position: 6
---

# Calendar: Navigation

This document describes the options to navigate between dates in <code>TKCalendar</code> and the related notifications.

There are two methods in <code>TKCalendar</code> used to navigate forward/backward in the calendar: <code>navigateForward:</code> and <code>navigateBackward:</code>. These methods are context sensitive and the navigation period is specific to the current view mode (e.g. when using a week view the navigation period will be set to one week):

<snippet id='navigation-navigateforward'/>

<snippet id='navigation-navigateforward-swift'/>

```C#
this.CalendarView.NavigateForward(true);
```

The calendar will not allow navigating to a date outside of the allowed period, specified by the <code>minDate</code> and <code>maxDate</code> properties:

<snippet id='navigation-minmaxdate'/>

<snippet id='navigation-minmaxdate-swift'/>

```C#
this.CalendarView.MinDate = minDate;
this.CalendarView.MaxDate = maxDate;
```

The <code>navigateToDate:animated:</code> method is used to navigate to specific date within the allowed period:

<snippet id='navigation-navigate'/>

<snippet id='navigation-navigate-swift'/>

```C#
calendarView.NavigateToDate (newDate, true);
```

You can determine whether a navigation occurred by implementing <code>TKCalendarDelegate</code> protocol. 

You should implement the <code>calendar:willNavigateToDate:</code> method if you want to be notified before this action occurs and <code>calendar:didNavigateToDate:</code> method when action occured. 

