---
title: Calendar Cell Types
page_title: Calendar Cell Types
position: 6
slug: calendar-cell-types
---

# Calendar Cell Types #

![Calendar Cell Types](calendar-cell-types-diagram.png "Calendar Cell Types")

## CalendarCell ##

- **Text** (string): Gets the text displayed in the cell.
- **Type** (CalendarCellType): Gets the type of the cell.

## CalendarDateCell ##

- **IsEnabled** (bool): Gets a value that specifies whether the cell is enabled (inside the calendar MinDate and MaxDate range).
- **IsSelected** (bool): Gets a value that specifies whether the cell is currently selected.
- **Date** (DateTime): Gets the date that corresponds to the cell.

>**Type**: The only allowed type of CalendarDateCell is `Date`.

## CalendarDayCell ##

- **IsFromCurrentMonth** (bool): Gets a value that specifies whether the cell is from the current month in month view.
- **IsToday** (bool): Gets a value that specifies whether the cell date is today.

>**Type**: The only allowed type of CalendarDayCell is `Date`.

## CalendarTextCell ##

>**Type**: The only allowed types of CalendarDayCell are `WeekNumber` and `DayName`.
