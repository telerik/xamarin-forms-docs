---
title: Methods
page_title: Methods
position: 5
slug: datetime-picker-methods
---

# Methods

**DateTime Picker** for Xamarin allows you to clear the selected date/time through its **ClearSelection** method

## Example

```XAML
<StackLayout>
    <Button Text="Clear Selection" Clicked="OnClearSelectionClicked"/>
    <telerikInput:RadDateTimePicker x:Name="dateTimePicker"/>
</StackLayout>
```

and we can clear the selection on insid ethe button click event:

```C#
private void OnClearSelectionClicked(object sender, EventArgs e)
{
    this.dateTimePicker.ClearSelection();
}
```

## See Also

- [Key Features]({%slug datetime-picker-key-features%})
- [Commands ]({% slug datetime-picker-commands%})