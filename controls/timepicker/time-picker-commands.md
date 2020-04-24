---
title: Commands
page_title: Commands
description: Check our &quot;Commands&quot; documentation article for Telerik TimePicker for Xamarin control.
position: 7
slug: time-picker-commands
---

# Commands

## TimePicker Commands

RadTime Picker exposes the following commands you can use to programmatically manipulate displaying the popup as well as clearing the selected time:

* **ToggleCommand**(*ICommand*): Allows you to show/hide the popup used for selecting a time value.
* **ClearCommand**(*ICommand*): Allows you to clear the selected time.

#### Example for ToggleCommand and ClearCommand

```XAML
<StackLayout>
	 <Button Text="Toggle Popup" Command="{Binding Source={x:Reference timePicker}, Path=ToggleCommand}"/>
     <Button Text="Clear Selected Time" Command="{Binding Source={x:Reference timePicker}, Path=ClearCommand}"/>
	<telerikInput:RadTimePicker x:Name="timePicker" />
</StackLayout>
```

also you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## PopupSelector Commands

Through the popup users can pick a time. The time value should be confirmed or rejected through the OK and Cancel buttons placed on the popup. 

RadTimePicker allows you to add a custom logic for the Accept and Cancel commands which are executed when OK and Cancel buttons, respectively, are pressed. 

* **AcceptCommand**(*ICommand*): Defines the command which confirms the current selection of the picker and closes the popup. 
* **CancelCommand**(*ICommand*): Defines the command which rejects the current selection of the picker and closes the popup.

The Accept and Cancel commands can be applied using the SelectorSettings property of RadTimePicker. Here is a quick example on how they could be set:

#### Example for AcceptCommand and CancelCommand

```XAML
<telerikInput:RadTimePicker x:Name="timePicker">
	<telerikInput:RadTimePicker.SelectorSettings>
		<telerikInput:PickerPopupSelectorSettings AcceptCommand="{Binding Accept}"  
												  CancelCommand="{Binding Cancel}"/>
	</telerikInput:RadTimePicker.SelectorSettings>
</telerikInput:RadTimePicker>
```

Let's add a sample ViewModel class:

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

## See Also

- [Key Features]({%slug time-picker-key-features%})
- [Templates]({%slug time-picker-templates%})
- [Selection]({%slug time-picker-selection%})