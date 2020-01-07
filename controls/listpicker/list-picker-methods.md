---
title: Methods
page_title: Methods
position: 5
slug: list-picker-methods
---

# Methods

**List Picker** for Xamarin allows you to clear the selected date/time through its **ClearSelection** method

## Example

```XAML
<StackLayout>
    <Button Text="Clear Selection" Clicked="OnClearSelectionClicked"/>
    <telerikInput:RadDateTimePicker x:Name="listPicker"/>
</StackLayout>
```

and we can clear the selection inside the button click event:

```C#
private void OnClearSelectionClicked(object sender, EventArgs e)
{
    this.listPicker.ClearSelection();
}
```

## See Also

- [Events]({%slug list-picker-events%})
- [Commands]({%slug list-picker-commands%})