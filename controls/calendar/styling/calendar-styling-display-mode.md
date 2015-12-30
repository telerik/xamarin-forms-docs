---
title: Calendar Display Mode
page_title: Calendar Display Mode
position: 1
slug: calendar-styling-display-mode
---

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

#### Grid Lines ####

- **GridLinesDisplayMode** (DisplayMode): Gets or sets a value that specifies whether the grid lines will be visible.
- **GridLinesColor** (Color): Gets or sets the color of the grid lines.
- **GridLinesWidth** (double): Gets or sets the width of the grid lines.

#### Example ####

This example demonstrates how you can customize the calendar grid lines.

    var calendar = new RadCalendar();
    calendar.GridLinesDisplayMode = DisplayMode.Show;
    calendar.GridLinesColor = Color.FromRgb(229, 173, 241);
    calendar.GridLinesWidth = 3;

This is the result:

![Grid Lines Example](images/calendar-grid-lines.png "Grid lines customization example")