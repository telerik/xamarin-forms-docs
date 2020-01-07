---
title: DateTime Format Strings
page_title: DateTime Format Strings
position: 2
slug: datetime-picker-format-string
---


# Pre-defined String Format

Date and Time Picker for Xamarin allows you to set a standard date and time format string through the **SpinnerFormatString** property. You can create a date picker, time picker or combination of both.

* **SpinnerFormatString**(*string*): Defines the string format which can be used for the date time picker.

The available Standard Date and Time format strings that can be set to the SpinnerFormatString property are described in the table above:

| Supported Standar Date and Time Format String |
| -------- |
| "g" |
| "d" |
| "dd" |
| "h" |
| "hh" |
| "H" |
| "HH" |
| "m" |
| "mm" |
| "M" |
| "MM" |
| "MMM" |
| "MMMM" |
| "s" |
| "ss" |
| "t" |
| "tt" |
| "y" |
| "yyy" |
| "yyyy" |
| "MM/dd/yyyy HH:mm" |
| "MM/dd/yyyy hh:mm tt" |
| "MM/dd/yyyy H:mm" |
| "MM/dd/yyyy HH:mm:ss" |
| "MMMM dd" |
| "HH:mm" |
| "hh:mm t" |
| "yyyy/MMM/dd" |
| "mm:HH" |

>important You can set only short [Standard Date and Time format strings](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings) to the DateTime Picker control.

## See Also

- [Custom Templates]({%slug datetime-picker-templates%})
- [Styling]({%slug datetime-picker-styling%})
- [Events]({%slug datetime-picker-events%})
