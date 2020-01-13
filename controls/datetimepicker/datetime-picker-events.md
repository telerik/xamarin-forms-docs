---
title: Events
page_title: Events
position: 4
slug: datetime-picker-events
---

# Events

**RadDateTime Picker** exposes a **SelectionChanged** event which is raised when the user pick the selected date/time.

## Example

```XAML
<telerikInput:RadDateTimePicker SelectionChanged="RadDateTimePicker_SelectionChanged"/>
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