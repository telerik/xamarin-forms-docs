---
title: Events
page_title: Events
description: Check our &quot;Events&quot; documentation article for Telerik TimeSpan Picker for Xamarin control.
position: 5
slug: timespan-picker-events
---

# Events

**TimeSpan Picker** exposes a **SelectionChanged** event which is raised when the user pick the selected date.

## Example

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
- [Methods]({% slug timespan-picker-methods%})
- [Commands]({% slug timespan-picker-commands%})