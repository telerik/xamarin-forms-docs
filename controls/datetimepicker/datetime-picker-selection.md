---
title: Selection
page_title: Selection
description: Check our &quot;Selection&quot; documentation article for Telerik DateTimePicker for Xamarin control.
position: 5
slug: datetime-picker-selection
---

# Selection

RadDateTimePicker control enables the app users to quickly and easily select a date value. This topic will go through the provided by the DateTimePicker API related to time selection.

## Important Properties

* **Date**(*DateTime?*): Defines the current date selection. The default value is null.

## Methods

**DateTime Picker** for Xamarin allows you to clear the selected date/time through its **ClearSelection** method

### Example

```XAML
<StackLayout>
    <Button Text="Clear Selection" Clicked="OnClearSelectionClicked"/>
    <telerikInput:RadDateTimePicker x:Name="dateTimePicker"/>
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
    this.dateTimePicker.ClearSelection();
}
```

## Events

**RadDateTime Picker** exposes a **SelectionChanged** event which is raised when the user pick the selected date/time.

## Example

```XAML
<telerikInput:RadDateTimePicker SelectionChanged="RadDateTimePicker_SelectionChanged"/>
```

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

and the **SelectionChanged** event, where the *sender* is the RadDateTimePicker control:

```C#
private void RadDateTimePicker_SelectionChanged(object sender, EventArgs e)
{
	// implement your logic here
}
```

## See Also

- [Key Features]({%slug datetime-picker-key-features%})
- [Templates]({% slug datetime-picker-templates%})
- [Commands]({% slug datetime-picker-commands%})