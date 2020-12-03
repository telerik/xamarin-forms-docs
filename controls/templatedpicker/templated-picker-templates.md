---
title: Templates
page_title: Xamarin Templated Picker Documentation | Templates
description: Check our &quot;Templates&quot; documentation article for Telerik TemplatedPicker for Xamarin control.
position: 3
slug: templated-picker-templates
---

# Templates

Templated Picker for Xamarin provides the following template:

* **SelectorTemplate**(*ControlTemplate*): Defines the template used for displaying the selector of the picker.

In addition to this you can define the following templates provided from the RadPickerBase class:

* **PlaceholderTemplate**(*ControlTemplate*): Defines the template visualized for the placeholder.  
* **DisplayTemplate**(*ControlTemplate*): Defines the template visualized when an item from the selector was picked.

And using RadPickerBase.SelectorSettings property(of type *Telerik.XamarinForms.Input.PickerPopupSelectorSettings*) you can define the following templates:

* **HeaderTemplate**(*ControlTemplate*): Defines what will be displayed inside the dialog(popup) header.
* **FooterTemplate**(*ControlTemplate*): Defines what will be displayed inside the dialog(popup) footer.

## Example

Here is a sample Templated Picker definition:

<snippet id='templatedpicker-keyfeatures' />

## Selector Template

Here is a sample definition of the SelectorTemplate:

<snippet id='templatedpicker-keyfeatures-selectortemplate' />

## Header Template:

<snippet id='templatedpicker-keyfeatures-headertemplate' />

add the following Business model for the first spinner:

<snippet id='templatedpicker-country-businessmodel' />

add the following Business model for the second spinner:

<snippet id='templatedpicker-city-businessmodel' />

here is a sample definition of the ViewModel:

<snippet id='templatedpicker-viewmodel' />

Set thus defined ViewModel as a BindingContext of the page:

```C#
this.BindingContext = new ViewModel();
```

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

This is the templated picker visual structure:

![Templated Picker](images/templated_picker_visual_structure.png)

>important A sample Key Features example can be found in the TemplatedPicker/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Styling]({%slug templated-picker-styling%})
