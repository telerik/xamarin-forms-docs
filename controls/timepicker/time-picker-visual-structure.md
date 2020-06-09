---
title: Visual Structure
page_title: Xamarin Time Picker Documentation | Time Picker Visual Structure
description: Check our &quot;Visual Structure&quot; documentation article for Telerik Time Picker for Xamarin control.
position: 0
slug: time-picker-visual-structure
---

# Visual Structure

Here are described all visual elements used in the Time Picker for Xamarin.

## Time Picker Structure before and after a time value is selected

![Time Picker Visual Structure](images/time_picker_placeholder_display.png "Visual elements of Time Picker control")

## Picker Popup Visual Structure

>important More information about Spinners refer to the [RadSpinner help article]({%slug templated-picker-spinner%}).

![Time Picker Popup Visual Structure](images/time_picker_structure.png "Visual elements of Time Picker Popup")

## Legend ##

- **Placeholder** - the text visualized before picking a time value. Placeholder can be customized through the [PlaceholderTemplate]({%slug time-picker-templates%}#placeholdertemplate) property.
- **DisplayStringFormat** - the text visualized after a time value is picked.
- **Header** - the text displayed in the popup header. It can be set to a direct text through the [HeaderLabelText]({%slug time-picker-styling%}#popup-styling) property or fully customize the popup header using the [HeaderTemplate]({%slug time-picker-templates%}#headertemplate) property
- **SpinnerHeader** - the text visualized for spinner header depending on the values to be picked. For example if the *SpinnerFormatString* is *g* and *AreSpinnerHeadersVisible="True"* The text visualized for spinner header will be **Hours** **Minutes** **AM/PM**.
- **Spinner** - displays items in a list.
- **SelectionHighlight** - highlight the currently selected time when the popup is open.
- **Footer** - the footer of the popup. By default is contains OK and Cancel Buttons. It can be customized through the [FooterTemplate]({%slug time-picker-templates%}#footertemplate) property.

## See Also

- [Getting Started]({%slug time-picker-getting-started%})
- [Key Features]({%slug time-picker-key-features%})
- [Time Format Strings]({%slug time-picker-format-string%})