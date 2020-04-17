---
title: Templates
page_title: Templates
description: Check our &quot;Templates&quot; documentation article for Telerik DatePicker for Xamarin control.
position: 3
slug: date-picker-templates
---

# Templates

If the default templates of the control do not suit your needs, you can easily define a custom template. The available templates for customizing are:

* **PlaceholderTemplate**(*ControlTemplate*): Defines the template visualized for the placeholder.  
* **DisplayTemplate**(*ControlTemplate*): Defines the template visualized when the picked date/time is displayed.
* **HeaderTemplate**(*ControlTemplate*): Defines what will be displayed inside the dialog(popup) header.
* **FooterTemplate**(*ControlTemplate*): Defines what will be displayed inside the dialog(popup) footer.

## PlaceholderTemplate Default Look

<snippet id='datepicker-placeholder-default-template' />

## DisplayTemplate Default Look

<snippet id='datepicker-display-default-template' />

## HeaderTemplate Default Look

<snippet id='datepicker-header-default-template' />

## FooterTemplate Default Look

<snippet id='datepicker-footer-default-template' />

and the Date Picker definition:

<snippet id='datepicker-placeholder-default-template' />

>important A sample Default Templates example can be found in the DatePicker/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## Example How to Customize the Default Look

The snippet below shows a simple Date Picker definition:

<snippet id='datepicker-custom-templates' />

Now lets add the templates definition to the page resources:

### Custom PlaceholderTemplate

<snippet id='datepicker-placeholder-template' />

![Date Picker PlaceholderTemplate](images/datepicker_placeholder_template.png)

### Custom DisplayTemplate

<snippet id='datepicker-display-template' />

![Date Picker DisplayTemplate](images/datepicker_display_template.png)

### Custom HeaderTemplate

<snippet id='datepicker-header-template' />

### Custom FooterTemplate

<snippet id='datepicker-footer-template' />

![Date Picker FooterTemplate](images/datepicker_header_footer_template.png)

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

>important A sample Custom Templates example can be found in the DatePicker/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Suppoted Standard Date Format Strings]({%slug date-picker-format-string%})
- [Key Features]({%slug date-picker-key-features%})
- [Styling]({%slug date-picker-styling%})