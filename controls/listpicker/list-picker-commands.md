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

## Example

Here is the List Picker definition:

```XAML
<StackLayout>
    <Button Text="Toggle Command" Command="{Binding Source={x:Reference listPicker}, Path=ToggleCommand}"/>
    <Button Text="Clear Command" Command="{Binding Source={x:Reference listPicker}, Path=ClearCommand}"/>
    <telerikInput:RadListPicker x:Name="listPicker"
                                Placeholder="Pick a name!" 
                                ItemsSource="{Binding Items}" 
                                DisplayMemberPath="FullName">
        <telerikInput:RadListPicker.BindingContext>
            <local:ViewModel/>
        </telerikInput:RadListPicker.BindingContext>
        <telerikInput:RadListPicker.ItemTemplate>
            <DataTemplate>
                <Label Text="{Binding Name}" 
                        HorizontalTextAlignment="Center" 
                        VerticalTextAlignment="Center"/>
            </DataTemplate>
        </telerikInput:RadListPicker.ItemTemplate>
    </telerikInput:RadListPicker>
</StackLayout>
```

a sample ViewModel:

<snippet id='listpicker-getting-started-viewmodel' />

and the Business model:

<snippet id='listpicker-getting-started-business-model' />

also you will need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## See Also

- [Events]({%slug list-picker-events%})
- [Templates]({%slug list-picker-templates%})