---
title: Selection
page_title: Selection
description: Check our &quot;Selection&quot; documentation article for Telerik TimePicker for Xamarin control.
position: 5
slug: time-picker-selection
---

# Selection

**RadTimePicker** control enables the app users to quickly and easily select a time value. This topic will go through the provided by the TimePicker API related to time selection.

## Important Properties

* **Time**(*TimeSpan?*): Defines the current time selection. The default value is null.

Check below a quick example of **Time** property usage:

<snippet id='timepicker-keyfeatures-time' />

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## Methods

**RadTimePicker** allows you to cancel the selected time through its **ClearSelection** method.

```XAML
<StackLayout>
	<Button Text="Clear Selection" Clicked="OnClearSelectionClicked"/>
	<telerikInput:RadTimePicker x:Name="timePicker"/>
</StackLayout>
```

Call **ClearSelection** inside the button click event - as a result **Time** property will be updated to *null*.

```C#
private void OnClearSelectionClicked(object sender, EventArgs e)
{
    this.dateTimePicker.ClearSelection();
}
```

## Events 

**RadTime Picker** exposes a **SelectionChanged** event which is raised when the user picks a time value.

```XAML
<telerikInput:RadTimePicker x:Name="timePicker" 
                            SelectionChanged="TimePicker_SelectionChanged"/>
```

Add the **SelectionChanged** event, where the *sender* is of type *object*, but can be cast to **RadTimePicker** type:

```C#
private void TimePicker_SelectionChanged(object sender, EventArgs e)
{
	// implement your logic here
}
```

## See Also

- [Key Features]({%slug time-picker-key-features%})
- [Templates]({% slug datetime-picker-templates%})
- [Commands]({% slug time-picker-commands%})