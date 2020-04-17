---
title: Events
page_title: Events
description: Check our &quot;Events&quot; documentation article for Telerik DatePicker for Xamarin control.
position: 5
slug: date-picker-events
---

# Events

**Date Picker** exposes a **SelectionChanged** event which is raised when the user pick the selected date.

## Example

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
- [Templates]({% slug date-picker-templates%})
- [Methods]({% slug date-picker-methods%})
- [Commands]({% slug date-picker-commands%})