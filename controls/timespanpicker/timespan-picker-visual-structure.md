---
title: Selection
page_title: Selection
description: Check our &quot;Selection&quot; documentation article for Telerik TimeSpan Picker for Xamarin control.
position: 5
slug: timespan-picker-visual-structure
---

# Selection

RadTimeSpanPicker control enables the app users to quickly and easily select a time interval. This topic will go through the provided by the DatePicker API related to time interval selection.

## Important Properties

* **Time**(*TimeSpan?*): Defines the current selection of time interval. The default value is null.

### Example 

<snippet id='timespanpicker-keyfeatures-time' />

and add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## Methods

**TimeSpan Picker** for Xamarin allows you to clear the selected date through its **ClearSelection** method

### Example

```XAML
<StackLayout>
    <Button Text="Clear Selection" Clicked="OnClearSelectionClicked"/>
    <telerikInput:RadTimeSpanPicker x:Name="timeSpanPicker"/>
</StackLayout>
```

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

Call ClearSelection inside the button click event - as a result Time property will be updated to null.

```C#
private void OnClearSelectionClicked(object sender, EventArgs e)
{
    this.timeSpanPicker.ClearSelection();
}
```

## Events

**TimeSpan Picker** exposes a **SelectionChanged** event which is raised when the user pick the selected date.

### Example

```XAML
<telerikInput:RadTimeSpanPicker SelectionChanged="RadTimeSpanPicker_SelectionChanged"/>
```

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

and the **SelectionChanged** event, where the *sender* is the RadTimeSpanPicker control

```C#
private void RadTimeSpanPicker_SelectionChanged(object sender, EventArgs e)
{
	// implement your logic here
}
```

## See Also

- [Key Features]({%slug timespan-picker-key-features%})
- [Templates]({% slug timespan-picker-templates%})
- [Commands]({% slug timespan-picker-commands%})