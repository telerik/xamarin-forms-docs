---
title: Styling
page_title: Styling
position: 4
slug: templated-picker-styling
---

# Styling

* **PlaceholderLabelStyle**(of type *Style* with target type is **Label**):
* **DisplayLabelStyle**(of type *Style* with target type is **Label**):
* **SelectorSettings**(*Telerik.XamarinForms.Input.PickerPopupSelectorSettings*):

## PlaceholderLabel Style

![Templated Picker Placeholder Label Style](images/templatedpicker_placeholder_styling.png)

## DisplayLabel Style

![Templated Picker Display Label Style](images/templatedpicker_display_styling.png)

Using the SelectorSettings property of the RadPickerBase class, you could style the dialog(popup) through the following properties:

* **PopupViewStyle**(of type *Style* with target type is **telerikInput:PickerPopupContentView**):
* **HeaderStyle**(of type *Style* with target type is **telerikInput:PickerPopupHeaderView**):
* **HeaderLabelStyle**(of type *Style* with target type is **Label**):
* **FooterStyle**(of type *Style* with target type is **telerikInput:PickerPopupFooterView**):
* **AcceptButtonStyle**(of type *Style* with target type is **Button**):
* **CancelButtonStyle**(of type *Style* with target type is **Button**):

The SelectorSetting also provides the following properties for popup customization:

* **PopupOutsideBackgroundColor**(*Xamarin.Forms.Color*): Defines the color outside of the popup.
* **HeaderLabelText**(*string*): Specifies the text visualized in the popup header.
* **AcceptButtonText**(*string*): Defines the text visualized for the accept button. By default the text is *OK*.
* **CancelButtonText**(*string*): Defines the text visualized for the cancel button. By default the text is *Cancel*. 

## Example

Here is a sample example which shows how the styling properties are applied.

A sample Templated Picker definition:

<snippet id='templatedpicker-style' />

and here are how the styles are defined in the page resources

### PlaceholderLabelStyle

<snippet id='templatedpicker-placeholderlabelstyle' />

### DisplayLabelStyle

<snippet id='templatedpicker-displaylabelstyle' />

### HeaderLabelStyle

<snippet id='templatedpicker-headelabelstyle' />

### FooterStyle

<snippet id='templatedpicker-commonbuttonstyle' />

### AcceptButtonStyle

<snippet id='templatedpicker-acceptbuttonstyle' />

### CancelButtonStyle

<snippet id='templatedpicker-cancelbuttonstyle' />

add the following Business model for the first spinner:

<snippet id='templatedpicker-country-businessmodel' />

add the following Business model for the second spinner:

<snippet id='templatedpicker-city-businessmodel' />

here is a sample definition of the ViewModel:

<snippet id='templatedpicker-viewmodel' />

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

This is how the Templated Picker looks when the SelectorSetting properties are applied:

![Templated Picker Styling](images/templatedpicker_styling.png)

>important A sample Styling example can be found in the TemplatedPicker/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Getting Started]({%slug templated-picker-getting-started%})
- [Templates]({%slug templated-picker-templates%})