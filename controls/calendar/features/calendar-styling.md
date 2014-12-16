---
title: Calendar Styling
page_title: Calendar Styling
position:  
slug: calendar-styling
---

### Elements ###

- **DayNamesDisplayMode** (DisplayMode): Gets or sets a value that specifies whether the day names will be visible.
- **WeekNumbersDisplayMode** (DisplayMode): Gets or sets a value that specifies whether the day names will be visible.

#### DisplayMode ####

- **Show**: The element will be visible.
- **Hide**: The element will not be visible.
- **Automatic**: The visibility of the element will be determined by the value defined in the platform specific resources. [see the resources]()

#### Example ####

	var calendar = new RadCalendar();
	calendar.WeekNumbersDisplayMode = DisplayMode.Show;
	calendar.DayNamesDisplayMode = DisplayMode.Show;

### Grid Lines ###

- **GridLinesDisplayMode** (DisplayMode): Gets or sets a value that specifies whether the grid lines will be visible.
- **GridLinesColor** (Color): Gets or sets the color of the grid lines.
- **GridLinesWidth** (double): Gets or sets the width of the grid lines.

#### Example ####

![Grid Lines Example]()

### Cell Styling ###
 
- **SetStyleForCell** (Func<CalendarCell, CalendarCellStyle>):

#### Example ####



### Resources ###

#### CalendarResources ####

- static **Instance** (CalendarResources):     
- **DisplayWeekNumbers** (bool):
- **DisplayDayNames** (bool):
- **GridLinesColor** (Color):
- **GridLinesWidth** (double):
- **DisplayGridLines** (bool):
- void **Load**():


### User resources ###
