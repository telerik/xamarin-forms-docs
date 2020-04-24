---
title: Templates
page_title: Templates
description: Check our &quot;Templates&quot; documentation article for Telerik TimeSpan Picker for Xamarin control.
position: 5
slug: timespan-picker-templates
---

# Templates
If the default templates of the control do not suit your needs, you can easily define a custom template. The available templates for customizing are:

* **PlaceholderTemplate**(*ControlTemplate*): Defines the template visualized for the placeholder.  
* **DisplayTemplate**(*ControlTemplate*): Defines the template visualized when the picked date/time is displayed.
* **HeaderTemplate**(*ControlTemplate*): Defines what will be displayed inside the dialog(popup) header.
* **FooterTemplate**(*ControlTemplate*): Defines what will be displayed inside the dialog(popup) footer.

## PlaceholderTemplate

<snippet id='datepicker-placeholder-default-template' />

## DisplayTemplate

<snippet id='datepicker-display-default-template' />

## HeaderTemplate

<snippet id='datepicker-header-default-template' />

## FooterTemplate

<snippet id='datepicker-footer-default-template' />

and the TimeSpan Picker definition:

```XAML
<telerikInput:RadTimeSpanPicker MinimumDate="2020,01,1" 
	                            MaximumDate="2025,12,31"
	                            SpinnerFormat="MMM/dd/yyyy"
	                            PlaceholderTemplate="{StaticResource Picker_PlaceholderView_ControlTemplate}"
	                            DisplayTemplate="{StaticResource Picker_DisplayView_ControlTemplate}">
    <telerikInput:RadDTimeSpanPicker.SelectorSettings>
        <telerikInput:PickerPopupSelectorSettings HeaderTemplate="{StaticResource PopupView_Header_ControlTemplate}"
                                                  HeaderLabelText="Date Picker"
                                                  FooterTemplate="{StaticResource PopupView_Footer_ControlTemplate}"/>
    </telerikInput:RadTimeSpanPicker.SelectorSettings>
</telerikInput:RadDatePicker>
```

## Example How to Customize the Default Look

The snippet below shows a simple TimeSpan Picker definition:

<snippet id=' timespanpicker-custom-templates' />

Now lets add the templates definition to the page resources:

### Custom PlaceholderTemplate

<snippet id='timespanpicker-placeholder-template' />

![TimeSpan Picker PlaceholderTemplate](images/datepicker_placeholder_template.png)

### Custom DisplayTemplate

<snippet id='timespanpicker-display-template' />

![TimeSpan Picker DisplayTemplate](images/datepicker_display_template.png)

### Custom HeaderTemplate

<snippet id='timespanpicker-header-template' />

### Custom FooterTemplate

<snippet id='timespanpicker-footer-template' />

Here is how the header and footer looks after customization:

![TimaSpan Picker FooterTemplate](images/datepicker_header_footer_template.png)

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

>important A sample Custom Templates example can be found in the TimeSpan/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Key Features]({%slug timespan-picker-key-features%})
- [Templates]({% slug timespan-picker-templates%})
- [Commands]({% slug timespan-picker-commands%})