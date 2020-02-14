---
title: Methods
page_title: Methods
position: 6
slug: list-picker-methods
---

# Methods

**List Picker** for Xamarin allows you to clear the selected date/time through its **ClearSelection** method

## Example

```XAML
<StackLayout>
    <Button Text="Clear Selection" Clicked="OnClearSelectionClicked"/>
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

and we can clear the selection inside the button click event:

```C#
private void OnClearSelectionClicked(object sender, EventArgs e)
{
    this.listPicker.ClearSelection();
}
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
- [Commands]({%slug list-picker-commands%})