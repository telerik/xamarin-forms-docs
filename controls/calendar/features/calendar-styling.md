---
title: Styling
page_title: Styling
position: 4
slug: calendar-styling
---

# Styling #

## DisplayMode ##

The calendar provides properties that control the visibility of its elements.

- **DayNamesDisplayMode** (DisplayMode): Gets or sets a value that specifies whether the day names will be visible.
- **WeekNumbersDisplayMode** (DisplayMode): Gets or sets a value that specifies whether the day names will be visible.

The **DisplayMode** enumeration has the following values:

- **Show**: The element will be visible.
- **Hide**: The element will not be visible.
- **Automatic**: The visibility of the element will be determined by the value defined in the platform specific resources. See the Resources section below.

#### Example ####

This example demonstrates how you can display the week numbers and hide the day names of the calendar.

    var calendar = new RadCalendar();
    calendar.WeekNumbersDisplayMode = DisplayMode.Show;
    calendar.DayNamesDisplayMode = DisplayMode.Hide;
