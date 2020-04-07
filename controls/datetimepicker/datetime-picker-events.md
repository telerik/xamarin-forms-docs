---
title: Events
page_title: Events
description: Check our &quot;Events&quot; documentation article for Telerik DateTimePicker for Xamarin control.
position: 5
slug: datetime-picker-events
---

# Events

**RadDateTime Picker** exposes a **SelectionChanged** event which is raised when the user pick the selected date/time.

## Example

```XAML
<telerikInput:RadDateTimePicker SelectionChanged="RadDateTimePicker_SelectionChanged"/>
```

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

and the **SelectionChanged** event, where the *sender* is the RadDateTimePicker control

```C#
private void RadDateTimePicker_SelectionChanged(object sender, EventArgs e)
{
	// implement your logic here
}
```

## See Also

- [Key Features]({%slug datetime-picker-key-features%})
- [Templates]({% slug datetime-picker-templates%})
- [Methods]({% slug datetime-picker-methods%})
- [Commands]({% slug datetime-picker-commands%})