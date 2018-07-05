---
title: Navigation and View Mode
page_title: Navigation and View Mode
position: 1
slug: calendar-features-navigation-and-view-mode
---

# Navigation and View Mode

## Navigation

### Properties:

 - **DisplayDate** (DateTime): A date in the current view. 
 - **MinDate** (DateTime): Gets or sets the min date that could be displayed or selected. 
 - **MaxDate** (DateTime): Gets or sets the max date that can be displayed or selected. 

### Events:

* **DisplayDateChanged** (ValueChangedEventArgs&lt;object&gt;): Occurs when the selected date is changed. The __DisplayDateChanged__ event handler receives two parameters: 
	* The sender argument which is of type object, but can be cast to the __RadCalendar__ type.
	* A __ValueChangedEventArgs&lt;object&gt;__ object which provides both old and new values of the __DisplayDate__ property. The values are of type object, but can be cast to the DateTime type.

### Example

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

## ViewMode

### Properties:

 - **ViewMode** (CalendarViewMode): Gets the current view mode of the calendar (use the **TrySetViewMode** method to set the current view).  
Here are listed the supported view modes for each platform:

<table>
<tbody>
	<tr>
		<th>View Mode</th>
		<th>iOS</th>
		<th>Android</th>
		<th>UWP</th>
	</tr>
	<tr>
		<td>Month</td>
		<td>&#x2714;</td>
		<td>&#x2714;</td>
		<td>&#x2714;</td>
	</tr>
	<tr>
		<td>Day</td>
		<td>&#x2714;</td>
		<td>&#x2714;</td>
		<td>&#x2714;</td>
	</tr>
	<tr>
		<td>Year</td>
		<td>&#x2714;</td>
		<td>&#x2714;</td>
		<td>-</td>
	</tr>
	<tr>
		<td>Week</td>
		<td>&#x2714;</td>
		<td>&#x2714;</td>
		<td>-</td>
	</tr>
	<tr>
		<td>MonthNames</td>
		<td>&#x2714;</td>
		<td>-</td>
		<td>&#x2714;</td>
	</tr>
	<tr>
		<td>YearNumbers</td>
		<td>&#x2714;</td>
		<td>-</td>
		<td>&#x2714;</td>
	</tr>
	<tr>
		<td>Flow</td>
		<td>&#x2714;</td>
		<td>-</td>
		<td>-</td>
	</tr>
</tbody>
</table>

### Events:

- **ViewChanged** (ValueChangedEventArgs&lt;CalendarViewMode&gt;): Occurs when the calendar view mode is changed. 

### Methods:

> **Important**: All calendar navigation methods should be called after the native element has been loaded. Here are the events that you can use:
> 
> - **NativeControlLoaded** (EventArgs): Occurs when the renderer has finished preparing the native control.
> - **NativeControlUnloaded** (EventArgs): Occurs when the native control is in invalid state.

 - bool **TrySetViewMode**(CalendarViewMode *view*, bool *isAnimated* = true): Tries to set the view mode of the calendar to the specified value. If the view mode is supported, the method returns `true`, otherwise returns `false`.
 - bool **TryNavigateToUpperView** (bool *isAnimated* = true): Navigates to upper view if possible. Returns `true` if navigation has been successful, `false` otherwise. 
   - **iOS**: `Month` > `MonthNames` > `YearNumbers`
  - **Android**: `Month` > `Year`
  - **UWP**: `Month` > `MonthNames` > `YearNumbers`
 - bool **TryNavigateToLowerView** (bool isAnimated = true): Navigates to lower view if possible. Returns `true` if navigation has been successful, `false` otherwise. 
  - **iOS**: `YearNumbers` > `MonthNames` > `Month`
  - **Android**: `Year` > `Month`
  - **UWP**: `YearNumbers` > `MonthNames` > `Month`

### Example

You need to attach to the **NativeControlLoaded** event:

	var calendar = new RadCalendar();
	calendar.NativeControlLoaded += CalendarLoaded;
	
When the control is loaded, you can change the view mode.  
	
	private void CalendarLoaded(object sender, EventArgs args)
	{
	    (sender as RadCalendar).TrySetViewMode(CalendarViewMode.Year);
	}
