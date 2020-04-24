---
title: Templates
page_title: Templates
description: Check our &quot;Templates&quot; documentation article for Telerik TimePicker for Xamarin control.
position: 3
slug: time-picker-templates
---

# Templates

In case the default templates of the TimePicker control do not suit your needs, you can easily define a custom template. The available templates for customizing are:

* **PlaceholderTemplate**(*ControlTemplate*): Defines the template visualized for the placeholder.  
* **DisplayTemplate**(*ControlTemplate*): Defines the template visualized when the picked time is displayed.
* **HeaderTemplate**(*ControlTemplate*): Defines what will be displayed inside the dialog(popup) header.
* **FooterTemplate**(*ControlTemplate*): Defines what will be displayed inside the dialog(popup) footer.

The snippet below shows a sample RadTimePicker definition with the listed above template properties applied:

<snippet id='timepicker-custom-template' />

Let's add the templates definition to the page resources:

## PlaceholderTemplate

<snippet id='timepicker-placeholder-templat' />

![RadTimePicker PlaceholderTemplate](images/timepicker_placeholder_template.png)

## DisplayTemplate

<snippet id='timepicker-display-template' />

![RadTimePicker DisplayTemplate](images/timepicker_display_template.png)

## HeaderTemplate

<snippet id='timepicker-header-template' />

## FooterTemplate

<snippet id='timepicker-footer-template' />

![RadTimePicker FooterTemplate](images/timepicker_header_footer_template.png)

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

>important A sample Custom Templates example can be found in the TimePicker/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Suppoted Standard Time Format Strings]({%slug time-picker-format-string%})
- [Key Features]({%slug time-picker-key-features%})
- [Styling]({%slug time-picker-styling%})