---
title: Data Binding
page_title: Xamarin ComboBox Documentation | Data Binding
description: Check our &quot;Data Binding&quot; documentation article for Telerik ComboBox for Xamarin control.
position: 3
slug: combobox-databinding
---

# ComboBox Data Binding

- **ItemsSource** (*IEnumerable*): Defines the collection of the items that will populate the control with data.

For all cases where the business items are not simple strings data-binding is necessary in order to correctly visualize information. The **RadComboBox** component supports data binding in the form of path property.

- **DisplayMemberPath** (*string*): Defines the name of the property which will be visualized inside the drop-down list.

>The **DisplayMemberPath** property is required in data-binding scenarios.

## Binding to a complex object

Here is the ComboBox definition in XAML and in code behind:

<snippet id='combobox-getting-started-complex-object-xaml'/>
<snippet id='combobox-getting-started-complex-object-csharp'/>

>note When binding to a complex objects, ComboBox **DisplayMemberPath** property should be set.

the sample business model

<snippet id='combobox-city-businessmodel'/>

and the ViewModel used:

<snippet id='combobox-getting-started-viewmodel'/>

## See Also

- [Editing]({%slug combobox-editing%})
- [Searching]({%slug combobox-searching%})
- [Single and Multiple Selection]({%slug combobox-selection%})
