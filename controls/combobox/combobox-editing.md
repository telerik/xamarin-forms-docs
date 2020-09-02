---
title: Editing
page_title: Xamarin ComboBox Documentation | Editing
description: Check our &quot;Editing&quot; documentation article for Telerik ComboBox for Xamarin control.
position: 4
slug: combobox-editing
---

# Editing

ComboBox supports both **editable** and **noneditable** state. When the control is in edit mode searching can be performed. 

- **IsEditable**(*bool*): Defines whether editing can be performed. The default value is `false`.

Editing could be achieved when `SearchTextPath` property is set.

- **SearchTextPath** (*string*): Defines the name of the property against which the searching will be performed.

>The **SearchTextPath** property is required in editable mode.

In addition, when IsEditable is set to true, the drop-down list should be open when the control is focused through the **OpenOnFocus** (*bool*) property. Default value is `false`.

- **Text**(*string*): Defines the Text of the control. When it is editable this is the text from the box. When it is non-editable and selection mode is single this is the text from the default template of the selected item.

## Example

Here is the ComboBox definition in XAML:

<snippet id='combobox-searching-moode'/>

>note When binding to a complex objects, ComboBox **DisplayMemberPath** property should be set. Also when `IsEditable` is `true` `SearchTextPath` property should be set.

the sample business model

<snippet id='combobox-city-businessmodel'/>

and the ViewModel used:

<snippet id='comobobox-editing-viewmodel'/> 

Herre is how the control looks in edit mode:

![ComboBox Edit Mode](images/combobox-edit.png)

## See Also

- [Key Features]({%slug combobox-key-features%})
- [Searching]({%slug combobox-searching%})
- [Single and Multiple Selection]({%slug combobox-selection%})
- [Templates]({%slug combobox-templates%})
