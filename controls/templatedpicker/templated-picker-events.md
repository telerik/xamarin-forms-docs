---
title: Events
page_title: Events
position: 4
slug: templated-picker-events
---

# Events

**Templated Picker** for Xamarin exposes a **SelectionChanged** event which is raised when the user confirms the selected item.

## Example

```XAML
<telerikInput:RadTemplatedPicker SelectionChanged="RadTemplatedPicker_SelectionChanged" x:Name="picker">
    <telerikInput:RadTemplatedPicker.SelectorTemplate>
        <ControlTemplate>
            <telerikInput:RadCalendar SelectedDate="{TemplateBinding SelectedValue, Mode=TwoWay}"/>
        </ControlTemplate>
    </telerikInput:RadTemplatedPicker.SelectorTemplate>
</telerikInput:RadTemplatedPicker>
```

```C#
private void RadTemplatedPicker_SelectionChanged(object sender, System.EventArgs e)
{

}
```

## See Also

- [Commands]({%slug list-picker-commands%})
- [Methods]({%slug list-picker-methods%})
- [Templates]({% slug list-picker-templates%})