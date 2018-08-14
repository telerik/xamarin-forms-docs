---
title: Selection
page_title: Selection
position: 4
slug: calendar-selection
---

# Selection

The RadCalendar supports single selection functionality. The selected date can be changed programmatically or when the user taps on a calendar cell.

## Properties
 
- **SelectedDate** (DateTime?): Gets or sets the currently selected date.

## Events

- **SelectionChanged** (ValueChangedEventArgs<object>): Occurs when the selected date is changed programmatically or due to user interaction.

## Example

In the following code snippet the selection is set to a specific cell using the code:

	RadCalendar calendar = new RadCalendar();
	calendar.SelectedDate = new DateTime(2016, 12, 14);

The result can be seen on the picture bellow:

![Selection](images/calendar-selection.png "Selection example")
