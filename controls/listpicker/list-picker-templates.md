---
title: Templates
page_title: Templates
position: 3
slug: list-picker-templates
---

# Templates

List Picker for Xamarin provides the following templates:

* **ItemTemplate**(*DataTemplate*): Defines the template used for displaying the list of items.
* **SelectedItemTemplate**(*DataTemplate*): Specifies the template used for visualizing the selected item from the list.

In addition the List Picker for Xamarin provides the following properties:

* **ItemsSource**(*IList*): Specifies the collection used to generate the content of the list picker.
* **ItemLength**(*double*): Defines the length of the items inside the list.
* **ItemSpacing**(*double*): Defines the spacing between the items inside the list.
* **SelectedItem**(*object*): Specifies the selected item of the list picker
* **DisplayMemberPath**(*string*): Defines the path pf the property which is to be displayed as DisplayString. 

## Example

Here is a sample List Picker definition with Item and SelectedItem Templates:

<snippet id='listpicker-features-templates' />

and a sample business model:

<snippet id='listpicker-features-businessmodel' />

and the ViewModel:

<snippet id='listpicker-features-viewmodel' />

also you will need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

>important A sample Templates example can be found in the ListPicker/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Styling]({%slug list-picker-styling%})
