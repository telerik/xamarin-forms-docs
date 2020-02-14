---
title: Spinner
page_title: Spinner
position: 9
slug: templated-picker-spinner
---

# Spinner

**RadSpinner for Xamarin** is a control which allows you to display items in a list. It also provides an option to loop through its items. RadSpinner control is used for the [DateTime Picker]({%slug datetime-picker-overview%}), [ListPicker]({%slug list-picker-overview%}). Also is could be used inside the [Templated Picker SelectorTemplate]({%slug templated-picker-templates%}). 

>tip Spinner control inherits from the [RadBorder]({%slug border-overview%}) control.

## Key Features

* **ItemsSource**(*IList*): Defines a collection used to generate the content of the spinner.
* **IsLooping**(*bool*): Defines a value indicating whether the items should loop infinitely while scrolling. By default the looping is disabled. In order to enable it set *IsLooping="True"*.
* **ItemLength**(*double*): Defines the length of the items in the spinner.
* **ItemSpacing**(*double*): Defines the spacing between the items.
* **SelectedItem**(*object*): Defines the selected item.
* **SelectedIndex**(*int*): Specifies the selected index of the Spinner control.
* **DisplayStringFormat**(*string*): Defines the string format used to display the items of the spinner.
* **DisplayMemberPath**(*string*): Specifies a path to the property used to display the items of the spinner

## Templates

* **ItemTemplate**(*DataTemplate*): Defines the template for the spinner items
* **SelectedItemTemplate**(*DataTemplate*): Defines the template for spinner selected item

## Styling

* **ItemStyle**(*Style*): Defines the style for the spinner items.
* **SelectedItemStyle**(*Style*): Defines the style for the spinner selected item.

## Events

* **SelectionChanged**

## Example

Sample examples where RadSpinner control is used can be found in our **SDK Browser Application** **TemplatedPicker/Features** - **Styling** and **KeyFeatures** examples.

## See Also

- [Templates]({%slug templated-picker-templates%})