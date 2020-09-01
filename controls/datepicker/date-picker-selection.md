---
title: Selection
page_title: Xamarin Date Picker Documentation | Selection
description: Check our &quot;Selection&quot; documentation article for Telerik DatePicker for Xamarin control.
position: 6
slug: date-picker-selection
---

# Selection

RadDatePicker control enables the app users to quickly and easily select a date value. This topic will go through the provided by the DatePicker API related to date selection.

## Important Properties

* **Date**(*DateTime?*): Defines the current date selection. The default value is null.

Check below a quick example of Time property usage:

<snippet id='datepicker-keyfeatures-date-spinnerformat' />

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## Methods

**Date Picker** for Xamarin allows you to clear the selected date through its **ClearSelection** method

### Example

```XAML
<StackLayout>
    <Button Text="Clear Selection" Clicked="OnClearSelectionClicked"/>
    <telerikInput:RadDatePicker x:Name="datePicker"/>
</StackLayout>
```

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

Call ClearSelection inside the button click event - as a result Date property will be updated to null.

```C#
private void OnClearSelectionClicked(object sender, EventArgs e)
{
    this.datePicker.ClearSelection();
}
```

## Events

RadTime Picker exposes a SelectionChanged event which is raised when the user picks a time value.

### Example

```XAML
<telerikInput:RadDatePicker SelectionChanged="RadDatePicker_SelectionChanged"/>
```

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

and the **SelectionChanged** event, where the *sender* is the RadDatePicker control

```C#
private void RadDatePicker_SelectionChanged(object sender, EventArgs e)
{
	// implement your logic here
}
```

## See Also

- [Key Features]({%slug date-picker-key-features%})
- [Commands]({% slug date-picker-commands%})
- [Templates]({% slug date-picker-templates%})
