---
title: Commands
page_title: Commands
description: Check our &quot;Commands&quot; documentation article for Telerik TemplatedPicker for Xamarin control.
position: 7
slug: templated-picker-commands
---

# Commands

Templated Picker exposes the following commands:

* **ToggleCommand**(*ICommand*): Allows you to open and close the dialog
* **ClearCommand**(*ICommand*): Allows you to clear the displayed date/time.

## Example

Here is the Templated Picker definition:

```XAML
<StackLayout>
    <Button Text="Toggle Command" Command="{Binding Source={x:Reference picker}, Path=ToggleCommand}"/>
    <Button Text="Clear Command" Command="{Binding Source={x:Reference picker}, Path=ClearCommand}"/>
    <telerikInput:RadTemplatedPicker x:Name="picker">
        <telerikInput:RadTemplatedPicker.SelectorTemplate>
            <ControlTemplate>
                <telerikInput:RadCalendar SelectedDate="{TemplateBinding SelectedValue, Mode=TwoWay}"/>
            </ControlTemplate>
        </telerikInput:RadTemplatedPicker.SelectorTemplate>
    </telerikInput:RadTemplatedPicker>
</StackLayout>
```

also you will need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## See Also

- [Events]({%slug templated-picker-events%})
- [Templates]({%slug templated-picker-templates%})