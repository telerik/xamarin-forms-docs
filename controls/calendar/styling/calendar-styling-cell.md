---
title: Cell Styling
page_title: Cell Styling
position: 3
slug: calendar-styling-cell
---

## Cell Styling
 
This article describes the APIs used to customize the look of the calendar cells. The RadCalendar component exposes a property which enables you to provide a custom style for each cell.

- **SetStyleForCell** (Func&lt;CalendarCell, CalendarCellStyle&gt;): This property should be assigned to a method that returns a CalendarCellStyle object. The method will be called for each calendar cell and the returned style will be applied. If the return value is null, the default style of the cell will be used.
 
The only parameter passed to this method is an object of type CalendarCell which helps to identify the cell. The CalendarCell is the base class for all calendar cells and it has the following properties:

**CalendarCell**

- **Text** (string): Gets the text displayed in the cell.
- **Type** (CalendarCellType): Gets the type of the cell.

There are several other cells which are delivered from the **CalendarCell**:

**CalendarDateCell**

- **IsEnabled** (bool): Gets a value that specifies whether the cell is enabled (inside the calendar MinDate and MaxDate range).
- **IsSelected** (bool): Gets a value that specifies whether the cell is currently selected.
- **Date** (DateTime): Gets the date that corresponds to the cell.

>**Type**: The only allowed type of CalendarDateCell is `Date`.

**CalendarDayCell**

- **IsFromCurrentMonth** (bool): Gets a value that specifies whether the cell is from the current month in month view.
- **IsToday** (bool): Gets a value that specifies whether the cell date is today.

>**Type**: The only allowed type of CalendarDayCell is `Date`.

**CalendarTextCell**

>**Type**: The only allowed types of CalendarTextCell are `WeekNumber` and `DayName`.

 
Here are all properties defined in the **CalendarCellStyle** class:

 - **BackgroundColor** (Color)
 - **BorderColor** (Color)
 - **BorderThickness** (Thickness)
 - **FontSize** (double)
 - **FontWeight** (FontWeight): Bold or Normal.
 - **ForegroundColor** (Color)

#### Example ####

This example demonstrates how you can change the style of the cells which type is DayName and the cell containing a specific date:

<snippet id='calendar-features-cellstyling-setstyleforcell'/>

And this is the method:

<snippet id='calendar-features-cellstyling-evaluatecellstyle'/>

Here is the result:

![Cell Styling](images/calendar-cell-styling.png "Cell styling example")
