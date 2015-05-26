---
title: Navigation and View Mode
page_title: Navigation and View Mode
position: 1
slug: calendar-features-navigation-and-view-mode
---

# Navigation and View Mode #

## Navigation ##

### Properties: ###

 - **DisplayDate** (DateTime): A date in the current view. 
 - **MinDate** (DateTime): Gets or sets the min date that could be displayed or selected. 
 - **MaxDate** (DateTime): Gets or sets the max date that can be displayed or selected. 

### Events: ###

 - **DisplayDateChanged** (ValueChangedEventArgs&lt;object&gt;): Occurs when the selected date is changed. 

### Example ###

First you have to create a RadCalendar control:

	<telerikInput:RadCalendar x:Name="calendar"/>

Where:

	xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"

Or in code:
            
	var calendar = new RadCalendar();

Then you can set the properties:
 
	calendar.MinDate = DateTime.Today.AddMonths(-1);
	calendar.MaxDate = DateTime.Today.AddMonths(5);
	calendar.DisplayDate = DateTime.Today.AddMonths(2);     

Or subscribe to the **DisplayDateChanged** event:

	calendar.DisplayDateChanged += (s,e) =>
	{
	    // do something  
	};

## ViewMode ##

### Properties: ###

 - **ViewMode** (CalendarViewMode): Gets the current view mode of the calendar (use the TryChangeViewMode method to set the current view).  
Here are listed the supported view modes for each platform:
![Calendar View Modes](images/calendar-view-mode-support.png "Supported view modes")

### Events: ###

 - **ViewChanged** (ValueChangedEventArgs&lt;CalendarViewMode&gt;): Occurs when the calendar view mode is changed. 

### Methods: ###

> **Important**: All calendar methods should be called after the native element has been loaded.
 
 - bool **TrySetViewMode**(CalendarViewMode *view*, bool *isAnimated* = true): Tries to set the view mode of the calendar to the specified value. If the view mode is supported, the method returns `true`, otherwise returns `false`.
 - bool **TryNavigateToUpperView** (bool *isAnimated* = true): Navigates to upper view if possible. Returns `true` if navigation has been successful, `false` otherwise. 
  - **Windows Phone**: Since only one view mode is supported, this method always returns `false`.
  - **iOS**: `Month` > `MonthNames` > `YearNumbers`
  - **Android**: `Month` > `Year` 
 - bool **TryNavigateToLowerView** (bool isAnimated = true): Navigates to lower view if possible. Returns `true` if navigation has been successful, `false` otherwise. 
  - **Windows Phone**: Since only one view mode is supported, this method always returns `false`.
  - **iOS**: `YearNumbers` > `MonthNames` > `Month` 
  - **Android**: `Year` > `Month` 


