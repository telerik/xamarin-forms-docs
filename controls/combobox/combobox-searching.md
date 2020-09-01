---
title: Searching
page_title: Xamarin ComboBox Documentation | Searching
description: Check our &quot;Searching&quot; documentation article for Telerik ComboBox for Xamarin control.
position: 5
slug: combobox-searching
---

# Searching

ComboBox provides both case-sensitive and case-insensitive searching modes. The following properties are exposed:

- **SearchMode** (enumeration of type *Telerik.XamarinForms.Input.SearchMode*): Defines the value that sets search sets some search criteria for the control. The available options are: `Contains`, `StartsWith`, `ContainsCaseSensitive` and `StartsWithCaseSensitive`. The default SearchMode is `StartsWith`.
- **SearchTexhPath**(*string*): Specifies the name of the property against which the searching will be performed.

> Searching can be performed when `IsEditable` is set to `true`.

## Example

Here is the ComboBox definition in XAML:

<snippet id='combobox-editing'/>

>note When binding to a complex objects, ComboBox `DisplayMemberPath` property should be set. When you want to achieve Searching set `IsEditable` to `true` and `SearchTextPath`.

the sample business model

<snippet id='combobox-store-businessmodel'/>

and the ViewModel used:

<snippet id='combobox-searching-mode-viewmodel'/> 

## See Also

- [Key Features]({%slug combobox-key-features%})
- [Single and Multiple Selection]({%slug combobox-selection%})
- [Templates]({%slug combobox-templates%})
- [Styling]({%slug combobox-styling%})
