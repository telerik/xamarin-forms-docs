---
title: Commands
page_title: Commands
description: Check our &quot;Commands&quot; documentation article for Telerik DatePicker for Xamarin control.
position: 7
slug: date-picker-commands
---

# Commands

RadDate Picker exposes the following commands:

* **ToggleCommand**(*ICommand*): Allows you to open and close the dialog
* **ClearCommand**(*ICommand*): Allows you to clear the displayed date.

The SelectorSettings property of the RadPickerBase class, allows you to add a custom logic for the Accept and Cancel commands which are executed when Ok and Cancel button are pressed. 

* **AcceptCommand**(*ICommand*): Defines the command which propagates the current selection of the picker and closes the popup 
* **CancelCommand**(*ICommand*): Defines the command which rejects the current selection of the picker and closes the popup.

## Example for ToggleCommand and ClearCommand

```XAML
<StackLayout>
	<Button Text="Toggle Command" Command="{Binding Source={x:Reference dateTimePicker}, Path=ToggleCommand}"/>
	<Button Text="Clear Command" Command="{Binding Source={x:Reference dateTimePicker}, Path=ClearCommand}"/>
	<telerikInput:RadDatePicker x:Name="dateTimePicker" />
</StackLayout>
```

## Example for AcceptCommand and CancelCommand

```XAML
<StackLayout>
    <telerikInput:RadDatePicker>
        <telerikInput:RadDatePicker.SelectorSettings>
            <telerikInput:PickerPopupSelectorSettings AcceptCommand="{Binding Accept}" 
                                                      CancelCommand="{Binding Cancel}"/>
        </telerikInput:RadDatePicker.SelectorSettings>
            <telerikInput:RadDatePicker.BindingContext>
                <local:ViewModel/>
            </telerikInput:RadDatePicker.BindingContext>
    </telerikInput:RadDatePicker>
</StackLayout>
```

and the ViewModel

```C#
public class ViewModel
{
    public ICommand Accept { get; set; }
    public ICommand Cancel { get; set; }
	
    public ViewModel()
    {
        this.Accept = new Command(this.OnAccept);
        this.Cancel = new Command(this.OnCancel);
    }
	
    private void OnAccept(object obj)
    {
        // implement your custom logic here
    }
	
    private void OnCancel(object obj)
    {
        // implement your custom logic here
    }
}
```

also you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## See Also

- [Key Features]({%slug date-picker-key-features%})
- [Templates]({%slug date-picker-templates%})
- [Events]({%slug date-picker-events%})
- [Methods]({%slug date-picker-methods%})