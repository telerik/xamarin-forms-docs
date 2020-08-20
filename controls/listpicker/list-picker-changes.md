---
title: Changes
page_title: Xamarin List Picker Documentation | Changes
description: Describes what changes were made when the control was released with its official version
position: 2
slug: list-picker-changes
---

# List Picker from Beta to Official

With R2 2020 Official Release of Telerik UI for Xamarin, the RadListPicker control is now official. The following article describes the changes made in the List Picker in its official version.

## API changes

### Placeholder Label Text

| Beta | Official |
| -------- | -------- |
| Pick a value | Select Item |

### Localization keys

The following table contains the names of the localzation keys which were changed in the official version of the control:

| Beta | Official |
| -------- | -------- |
| Pickers_Placeholder | DateTimePicker_PlaceholderLabelText |
| Pickers_Popup_AcceptButtonText | Picker_Popup_AcceptButtonText |
| Pickers_Popup_RejectButtonText | Picker_Popup_CancelButtonText |

## Visual changes

### Border below the List Picker text

* **BorderThickness**(*Xamarin.Forms.Thickness*): Specifies the border thickness of the picker. Default value is `new Thickness(0,0,0,1)`.

### Header and Footer visibility

With the official version of the control **IsHeaderVisible** and **IsFooterVisible** porperties have a public setter.

By default the header of the ListPicker Popup is visible. In order to hide the header you need to set `IsHeaderVisible` property to `False`. The default value of HeaderLabelText is **Select Item**.
By default the footer of the ListPikcer Popup is visible. In order to hide the footer you need to set `IsFooterVisible` to `False`.

## See Also

- [Templates]({%slug list-picker-templates%})
- [Styling]({%slug list-picker-styling%})
