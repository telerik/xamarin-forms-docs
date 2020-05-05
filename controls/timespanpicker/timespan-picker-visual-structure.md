---
title: Visual Structure
page_title: Selection
description: Check our &quot;Visual Structure&quot; documentation article for Telerik TimeSpan Picker for Xamarin control.
position: 0
slug: timespan-picker-visual-structure
---

# Visual Structure

Here are described all visual elements used in the TimeSpan Picker for Xamarin.

## TimeSpan Picker Structure before and after time interval selection.

![TimeSpan Picker Visual Structure](images/timespan_picker_placeholder_display.png "Visual elements of TimeSpan Picker control")

## Picker Popup Visual Structure

>important More information about Spinners refer to the [RadSpinner help article]({%slug templated-picker-spinner%}).

![TimeSpan Picker Popup Visual Structure](images/timespan_picker_structure.png "Visual elements of TimeSpan Picker Popup")

## Legend ##

- **Placeholder** - the text visualized before picking a date/time. Placeholder could be customized through the [PlaceholderTemplate]({%slug timespan-picker-templates%}#placeholdertemplate) property.
- **DisplayStringFormat** - the text vislualized after a date/time is picked.
- **Header** and **HeaderLabelText**- the text displayed in the popup header. It could se set a direct text through the [HeaderLabelText]({%slug timespan-picker-styling%}) property or fully customize the popup header using the [HeaderTemplate]({%slug datetime-picker-templates%}#headertemplate) property.
- **SpinnersHeader** - the text visualized for spinner header depending on the values to be picked. For example if the *SpinnerFormat* is *g* the text visualized for spinner header will be **Days** **Hours** **Minutes** **Seconds**.
- **Spinner** - displays time interval values in a list.
- **SelectionHighlight** - highlisht the current selected time interval when the popup is open.
- **Footer** - the footer of the popup. By default is contains OK and Cancel Buttons. It could be customized through the [FooterTemplate]({%slug timespan-picker-templates%}#footertemplate) property.

## See Also

- [Key Features]({%slug timespan-picker-key-features%})
- [Templates]({%slug timespan-picker-templates%})
- [Commands]({%slug timespan-picker-commands%})