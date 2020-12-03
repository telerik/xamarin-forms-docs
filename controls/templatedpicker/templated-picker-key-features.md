---
title: Key Features
page_title: Xamarin Templated Picker Documentation | Key Features
description: Check our &quot;Key Features&quot; documentation article for Telerik TemplatedPicker for Xamarin control.
position: 2
slug: templated-picker-key-features
---

# Key Features

The purpose of this help article is to show you the key features of the Templated(Custom) Picker control for Xamarin.

## DisplayMemberPath

Its purpose is to specify a property of the source object to serve as the visual representation of the spinner item.

## DisplayStringFormat

You can choose what text to display when an item from the spinner was picked through the Picker DisplayStringFormat property.

## SelectedValue

The SelectedValue property is used when you have linked your RadTemplatedPicker to a data source, and you want to return a value of type object other than the one which is displayed. 

## Example

Here is a sample example which shows how the *SelectedValue* and *DisplayMemberPath* can be used:

<snippet id='templatedpicker-keyfeatures' />

Here is a sample definition of the SelectorTemplate:

<snippet id='templatedpicker-keyfeatures-selectortemplate' />

and for the HeaderTemplate:

<snippet id='templatedpicker-keyfeatures-headertemplate' />

add the following data item for the first spinner:

<snippet id='templatedpicker-country-businessmodel' />

add the following data item for the second spinner:

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

This is the result:

![Templated Picker Selected Value](images/templatedpicker_key_features.png)

## See Also

- [Templates]({%slug templated-picker-templates%})
- [Styling]({%slug templated-picker-styling%})