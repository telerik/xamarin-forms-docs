---
title: Date Format Strings
page_title: Date Format Strings
description: Check our &quot;Date Format Strings&quot; documentation article for Telerik Date Picker for Xamarin control.
position: 2
slug: date-picker-format-string
---

# String Format

Date Picker for Xamarin allows you to use standard or custom date format strings through the SpinnerFormat property. Depending on what format is set, the picker visualizes spinner controls with prepopulated values to be picked.

* **SpinnerFormat**(*string*): Defines the string format for the spinners. The default format is **"g"**.

## Standard Date Format Strings

The available Standard Date Format Strings which can be set to the SpinnerFormat property are described in the table below:

| Supported Standard Date Format String | Description |
| -------- || -------- |
| "d" | Short Date Format. Invariant culture format is MM/dd/yyyy |
| "G" | Short Date "d" and Long Time "T" |
| "g" | Short Date "d" and Short Time "t" |
| "M" | Month Format Specifier |
| "m" | Month Format specifier |
| "Y" | Year Month Format Specifier |
| "y" | Year Month Format Specifier |

## Custom Date Format Strings

The available Custom Date Format Strings which can be set to the SpiinerFormat property are described in the table below:

| Supported Custom Date Format Strings|
| -------- |
| "d" |
| "dd" |
| "M" |
| "MM" |
| "MMM" |
| "MMMM" |
| "y" |
| "yyy" |
| "yyyy" |

>important You can set only short [Standard Date Format Strings](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings) to the Date Picker control.
## Supported Separators

When SpinnerFormatString is set and the device culture is changed, the separators used for the format string won't be changed:

| Supported Format Separators |
| -------- |
| "-" |
| "." |
| "," |
| " " |
| ":" |
| "/" |

## Examples

### SpinnerFormat="MMMM dd"

```XAML
<telerikInput:RadDatePicker SpinnerFormat="MMMM dd" />
```

And the result:

![](images/datepicker-string-format-mmmm-dd.png)

### SpinnerFormat="dd"

```XAML
<telerikInput:RadDatePicker SpinnerFormat="dd" />
```

And the result:

![](images/datepicker-string-format-dd.png)

### SpinnerFormat="MMM yyyy"

```XAML
<telerikInput:RadDatePicker SpinnerFormat="MMM yyyy" />
```

And the result:

![](images/datetimepicker-string-format-mmm-yyyy.png)

### SpinnerFormat="yyyy/dd/MMM"

```XAML
<telerikInput:RadDatePicker SpinnerFormat="yyyy/dd/MMM" />
```

And the result:

![](images/datetimepicker-string-format-yyyy-dd-MMM.png)

## See Also

- [Templates]({%slug date-picker-templates%})
- [Styling]({%slug date-picker-styling%})
- [Selection]({%slug date-picker-selection%})
- [Commands]({%slug date-picker-commands%})
