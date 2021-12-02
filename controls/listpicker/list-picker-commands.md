---
title: Commands
page_title: Xamarin List Picker Documentation | Commands
description: Check our &quot;Commands&quot; documentation article for Telerik ListPicker for Xamarin control.
position: 7
slug: list-picker-commands
---

# Commands

## ListPicker Commands

List Picker for Xamarin exposes the following commands you can use to programmatically manipulate displaying the popup as well as clearing the selected item:

* **ToggleCommand**(*ICommand*): Allows you to show/hide the popup used for selecting an item from a list of items.
* **ClearCommand**(*ICommand*): Allows you to clear the displayed item.

## PopupSelector Commands

Through the popup users can pick an item. The date value should be confirmed or rejected through the OK and Cancel buttons placed on the popup.

ListPicker allows you to add a custom logic for the Accept and Cancel commands which are executed when OK and Cancel buttons, respectively, are pressed.

* **AcceptCommand**(*ICommand*): Defines the command which confirms the current selection of the picker and closes the popup. **AcceptCommandParameter** can be used to pass a parameter to the command execute method.
* **CancelCommand**(*ICommand*): Defines the command which rejects the current selection of the picker and closes the popup. **CancelCommandParameter** can be used to pass a parameter to the command execute method.

The Accept and Cancel commands can be applied using the SelectorSettings property of RadListPicker. In addition, you can pass command parameters through the `AcceptCommandParameter` and `CancelCommandParameter` properties of the ListPicker SelectorSettings.


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
													  AcceptCommandParameter="{Binding SelectedItem, Source={x:Reference listPicker}}"
													  CancelCommand="{Binding Cancel}"
													  CancelCommandParameter="{Binding SelectedItem, Source={x:Reference listPicker}}" />
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
    public ICommand Accept { get; set; }
    public ICommand Cancel { get; set; }

        public ObservableCollection<Person> Items { get; set; }
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
        this.Cancel = new Command(this.OnCancel);
    }

    private void OnAccept(object param)
    {
            Application.Current.MainPage.DisplayAlert("Item selected", "New Item: " + (param as Person).FullName, "OK");
        // implement your custom logic here
    }

    private void OnCancel(object param)
    {
        var message = param != null ? "Current item" + (param as Person).FullName : "Currently no item is selected";
        Application.Current.MainPage.DisplayAlert("Item Selection Canceled", message, "OK");
        // implement your custom logic here
    }
}
```

and the Business model:

<snippet id='listpicker-getting-started-business-model' />

also you will need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## See Also

- [Selection]({%slug list-picker-selection%})
- [Templates]({%slug list-picker-templates%})