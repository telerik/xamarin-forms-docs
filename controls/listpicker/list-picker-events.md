---
title: Events
page_title: Events
position: 4
slug: list-picker-events
---

# Events

**List Picker** for Xamarin exposes a **SelectionChanged** event which is raised when the user confirms the selected item.

## Example

```XAML
<telerikInput:RadListPicker Placeholder="Pick a name!" 
	                        ItemsSource="{Binding Items}" 
	                        SelectionChanged="RadListPicker_SelectionChanged"
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
```

and the **SelectionChanged** event, where *sender* is the RadListPicker control:

```C#
private void RadListPicker_SelectionChanged(object sender, System.EventArgs e)
{
	// implement your logic here
}
```

a sample ViewModel:

<snippet id='listpicker-getting-started-viewmodel' />

and the Business model:

<snippet id='listpicker-getting-started-business-model' />

where the *sender* is the RadListPicker control.

also you will need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

## See Also

- [Commands]({%slug list-picker-commands%})
- [Methods]({%slug list-picker-methods%})
- [Templates]({% slug list-picker-templates%})