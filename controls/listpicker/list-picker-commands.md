---
title: Commands
page_title: Commands
description: Check our &quot;Commands&quot; documentation article for Telerik ListPicker for Xamarin control.
position: 7
slug: list-picker-commands
---

# Commands

List Picker exposes the following commands:

* **ToggleCommand**(*ICommand*): Allows you to open and close the dialog
* **ClearCommand**(*ICommand*): Allows you to clear the displayed date/time.

The SelectorSettings property of the RadPickerBase class, allows you to add a custom logic for the Accept and Cancel commands which are executed when Ok and Cancel button are pressed. 

* **AcceptCommand**(*ICommand*): Defines the command which propagates the current selection of the picker. 
* **CancelCommand**(*ICommand*): Defines the command which rejects the current selection of the picker and closes the popup.

## Example

Here is the List Picker definition:

```XAML
<StackLayout>
    <Button Text="Toggle Command" Command="{Binding Source={x:Reference listPicker}, Path=ToggleCommand}"/>
    <Button Text="Clear Command" Command="{Binding Source={x:Reference listPicker}, Path=ClearCommand}"/>
    <telerikInput:RadListPicker Placeholder="Pick a name!" 
                                x:Name="listPicker"
                                ItemsSource="{Binding Items}" 
                                DisplayMemberPath="FullName">
        <telerikInput:RadListPicker.SelectorSettings>
            <telerikInput:PickerPopupSelectorSettings AcceptCommand="{Binding Accept}"
                                                        CancelCommand="{Binding Cancel}" />
        </telerikInput:RadListPicker.SelectorSettings>
        <telerikInput:RadListPicker.BindingContext>
            <local:ViewModel/>
        </telerikInput:RadListPicker.BindingContext>
    </telerikInput:RadListPicker>
</StackLayout>
```

a sample ViewModel:

```C#
public class ViewModel
{
    public ViewModel()
    {
        this.Items = new ObservableCollection<Person>()
        {
            new Person("Freda","Curtis"),
            new Person("Jeffery","Francis"),
            new Person("Ema","Lawson"),
            new Person("Niki","Samaniego"),
            new Person("Jenny","Santos"),
            new Person("Eric","Wheeler"),
            new Person("Emmett","Fuller"),
            new Person("Brian","Johnas"),
        };

        this.Accept = new Command(this.OnAccept);
        this.Accept = new Command(this.OnCancel);
    }

    private void OnAccept(object obj)
    {
        // implement your custom logic here
    }

    private void OnCancel(object obj)
    {
        // implement your custom logic here
    }

    public ObservableCollection<Person> Items { get; set; }
    public ICommand Accept { get; set; }
    public ICommand Cancel { get; set; }
}
```

and the Business model:

<snippet id='listpicker-getting-started-business-model' />

also you will need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## See Also

- [Events]({%slug list-picker-events%})
- [Templates]({%slug list-picker-templates%})