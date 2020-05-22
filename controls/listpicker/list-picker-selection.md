---
title: Selection
page_title: Selection
description: Check our &quot;Selection&quot; documentation article for Telerik ListPicker for Xamarin control.
position: 6
slug: list-picker-selection
---

# Selection

ListPicker for Xamarin enables the app users to quickly and easily select an item from a list of items. This topic will go through the provided by the ListPicker API related to item selection.

## Important Properties

* **SelectedItem**(*object*): Specifies the selected item of the list picker. 

## Methods

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

## Events

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