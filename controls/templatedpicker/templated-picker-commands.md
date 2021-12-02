---
title: Commands
page_title: Xamarin Templated Picker Documentation | Commands
description: Check our &quot;Commands&quot; documentation article for Telerik TemplatedPicker for Xamarin control.
position: 7
slug: templated-picker-commands
---

# Commands

## TemplatedPicker Commands

TemplatedPicker for Xamarin exposes the following commands you can use to programmatically manipulate displaying the popup as well as clearing the selected item:

* **ToggleCommand**(*ICommand*): Allows you to show/hide the popup used for selecting an item from the custom picker.
* **ClearCommand**(*ICommand*): Allows you to clear the displayed item.

## PopupSelector Commands

Through the popup users can pick an item. The value should be confirmed or rejected through the OK and Cancel buttons placed on the popup.

TemplatedPicker allows you to add a custom logic for the Accept and Cancel commands which are executed when OK and Cancel buttons, respectively, are pressed.

* **AcceptCommand**(*ICommand*): Defines the command which confirms the current selection of the picker and closes the popup. **AcceptCommandParameter** can be used to pass a parameter to the command execute method. 
* **CancelCommand**(*ICommand*): Defines the command which rejects the current selection of the picker and closes the popup. **CancelCommandParameter** can be used to pass a parameter to the command execute method.

The Accept and Cancel commands can be applied using the SelectorSettings property of RadTemplatedPicker. In addition, you can pass command parameters through the `AcceptCommandParameter` and `CancelCommandParameter` properties of the TemplatedPicker SelectorSettings.

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
		<telerikInput:RadTemplatedPicker.SelectorSettings>
                <telerikInput:PickerPopupSelectorSettings AcceptCommand="{Binding Accept}"
                                                          AcceptCommandParameter="{Binding SelectedValue, Source={x:Reference picker}}"
                                                          CancelCommand="{Binding Cancel}"
                                                          CancelCommandParameter="{Binding SelectedValue, Source={x:Reference picker}}"/>
          </telerikInput:RadTemplatedPicker.SelectorSettings>
          <telerikInput:RadTemplatedPicker.BindingContext>
              <local:ViewModel/>
          </telerikInput:RadTemplatedPicker.BindingContext>
    </telerikInput:RadTemplatedPicker>
</StackLayout>
```

a sample ViewModel:

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

    private void OnAccept(object param)
    {
        Application.Current.MainPage.DisplayAlert("Value selected", String.Format("New Value: {0:d}", (DateTime)param), "OK");
        // implement your custom logic here
    }

    private void OnCancel(object param)
    {
        var message = param != null ? String.Format("Current value: {0:d}", (DateTime)param) : "Currently no value is selected";
        Application.Current.MainPage.DisplayAlert("Value Selection Canceled", message, "OK");
        // implement your custom logic here
    }
}
```

also you will need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## See Also

- [Events]({%slug templated-picker-events%})
- [Templates]({%slug templated-picker-templates%})