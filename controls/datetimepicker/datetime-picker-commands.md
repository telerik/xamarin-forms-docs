---
title: Commands
page_title: Commands
position: 6
slug: datetime-picker-commands
---

# Commands

RadDateTime Picker exposes the following commands:

* **ToggleCommand**(*ICommand*): Allows you to open and close the dialog
* **ClearCommand**(*ICommand*): Allows you to clear the displayed date/time.

## Example

```XAML
<StackLayout>
	<Button Text="Toggle Command" Command="{Binding Source={x:Reference dateTimePicker}, Path=ToggleCommand}"/>
	<Button Text="Clear Command" Command="{Binding Source={x:Reference dateTimePicker}, Path=ClearCommand}"/>
	<telerikInput:RadDateTimePicker x:Name="dateTimePicker" />
</StackLayout>
```

also you will need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## See Also

- [Key Features]({%slug datetime-picker-key-features%})
- [Templates]({%slug datetime-picker-templates%})
- [Events]({%slug datetime-picker-events%})
- [Methods]({%slug datetime-picker-methods%})