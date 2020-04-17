---
title: Methods
page_title: Methods
description: Check our &quot;Methods&quot; documentation article for Telerik DatePicker for Xamarin control.
position: 6
slug: date-picker-methods
---

# Methods

**Date Picker** for Xamarin allows you to clear the selected date through its **ClearSelection** method

## Example

```XAML
<StackLayout>
    <Button Text="Clear Selection" Clicked="OnClearSelectionClicked"/>
    <telerikInput:RadDatePicker x:Name="datePicker"/>
</StackLayout>
```

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

and we can clear the selection inside the button click event:

```C#
private void OnClearSelectionClicked(object sender, EventArgs e)
{
    this.datePicker.ClearSelection();
}
```

## See Also

- [Key Features]({%slug date-picker-key-features%})
- [Commands]({% slug date-picker-commands%})