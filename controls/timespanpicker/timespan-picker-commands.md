---
title: Commands
page_title: Xamarin TimeSpan Picker Documentation | Commands
description: Check our &quot;Commands&quot; documentation article for Telerik TimeSpan Picker for Xamarin control.
position: 7
slug: timespan-picker-commands
---

# Commands

## TimeSpanPicker Commands

TimeSpan Picker for Xamarin exposes the following commands you can use to programmatically manipulate displaying the popup as well as clearing the selected time interval:

* **ToggleCommand**(*ICommand*): Allows you to show/hide the popup used for selecting a time interval.
* **ClearCommand**(*ICommand*): Allows you to clear the displayed time interval.

## Example for ToggleCommand and ClearCommand

```XAML
<StackLayout>
	<Button Text="Toggle Command" Command="{Binding Source={x:Reference timeSpanPicker}, Path=ToggleCommand}"/>
	<Button Text="Clear Command" Command="{Binding Source={x:Reference timeSpanPicker}, Path=ClearCommand}"/>
	<telerikInput:RadTimePicker x:Name="timeSpanPicker" />
</StackLayout>
```

also you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## PopupSelector Commands

Through the popup users can pick a time interval. The time interval value should be confirmed or rejected through the OK and Cancel buttons placed on the popup.

TimeSpan Picker allows you to add a custom logic for the Accept and Cancel commands which are executed when OK and Cancel buttons, respectively, are pressed.

* **AcceptCommand**(*ICommand*): Defines the command which confirms the current selection of the picker and closes the popup.
* **CancelCommand**(*ICommand*): Defines the command which rejects the current selection of the picker and closes the popup.

The Accept and Cancel commands can be applied using the SelectorSettings property of RadTimeSpanPicker. Here is a quick example on how they could be set:

## Example for AcceptCommand and CancelCommand

```XAML
<StackLayout>
    <telerikInput:RadTimeSpanPicker>
        <telerikInput:RadTimeSpanPicker.SelectorSettings>
            <telerikInput:PickerPopupSelectorSettings AcceptCommand="{Binding Accept}" 
                                                      CancelCommand="{Binding Cancel}"/>
        </telerikInput:RadTimeSpanPicker.SelectorSettings>
            <telerikInput:RadTimeSpanPicker.BindingContext>
                <local:ViewModel/>
            </telerikInput:RadTimeSpanPicker.BindingContext>
    </telerikInput:RadTimeSpanPicker>
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

- [Key Features]({%slug timespan-picker-key-features%})
- [Templates]({%slug timespan-picker-templates%})
- [Selection]({%slug timespan-picker-selection%})