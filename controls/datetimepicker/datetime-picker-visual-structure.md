---
title: Visual Structure
page_title: Date Time Picker Visual Structure
description: Check our &quot;Visual Structure&quot; documentation article for Telerik DateTimePicker for Xamarin control.
position: 0
slug: datetime-picker-visual-structure
---

# Visual Structure

Here are described all visual elements used in the Date and Time Picker for Xamarin.

## DateTime Picker Structure before and after a date/time is selected

![DateTime Picker Visual Structure](images/datetime_picker_placeholder_display.png "Visual elements of RadChart control")

## Picker Popup Visual Structure

>important More information about Spinners refer to the [RadSpinner help article]({%slug templated-picker-spinner%}).

![DateTime Picker Popup Visual Structure](images/datetime_picker_structure.png "Visual elements of DateTime Picker Popup")

## Legend ##

- **Placeholder** - the text visualized before picking a date/time. Placeholder could be customized through the [PlaceholderTemplate]({%slug datetime-picker-templates%}#placeholdertemplate) property.
- **DisplayStringFormat** - the text vislualized after a date/time is picked.
- **Header** - the text displayed in the popup header. It could se set a direct text through the [HeaderLabelText]({%slug datetime-picker-styling%}#styling) property or fully customize the popup header using the [HeaderTemplate]({%slug datetime-picker-templates%}#headertemplate) property.
- **SelectedDate** - the date displayed when popup is open.
- **SpinnerHeader** - the text visualized for spinner header depending on the values to be picked. For example if the *SpinnerFormatString* is *d* and *AreSpinnerHeadersVisible="True"* The text visualized for spinner header will be **Month** **Day** **Year**.
- **Spinner** - displays items in a list.
- **SelectionHighlight** - highlisht the current selected date/time when the popup is open.
- **Footer** - the footer of the popup. By default is contains OK and Cancel Buttons. It could be customized through the [FooterTemplate]({%slug datetime-picker-templates%}#footertemplate) property.