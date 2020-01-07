---
title: Custom Templates
page_title: Custom Templates
position: 3
slug: datetime-picker-templates
---

# Custom Templates

If the default templates of the control do not suit your needs, you can easily define a custom template. The available templates for customizing are:

* **PlaceholderTemplate**(*ControlTemplate*): Defines the template visualized for the placeholder.  
* **DisplayTemplate**(*ControlTemplate*): Defines the template visualized when the picked date/time is displayed.

* **HeaderTemplate**(*ControlTemplate*): Defines what will be displayed inside the dialog(popup) header.

<snippet id='datetimepicker-header-template' />

>important Note that by default the visibility of the dialog header is false. In order to visualize the header you will need to set **IsHeaderVisible = "true"**. Also note that instead of template binding you can bind a property from the viewmodel, or use the Header property:

<snippet id='datetimepicker-header-template' />

```XAML
<telerikInput:RadDateTimePicker StartDate="2019,12,11" 
                            	EndDate="2020,02,14">
    <telerikInput:RadDateTimePicker.SelectorSettings>
        <telerikInput:PickerPopupSelectorSettings HeaderTemplate="{StaticResource headerTemplate}" 
                                                  IsHeaderVisible="True"
                                                  Header="This is the Header Template" />
    </telerikInput:RadDateTimePicker.SelectorSettings>
</telerikInput:RadDateTimePicker>
```

or

```XAML
<telerikInput:RadDateTimePicker StartDate="2019,12,11" 
                            	EndDate="2020,02,14">
    <telerikInput:RadDateTimePicker.SelectorSettings>
        <telerikInput:PickerPopupSelectorSettings IsHeaderVisible="True"
                                                  Header="{Binding Header}" />
    </telerikInput:RadDateTimePicker.SelectorSettings>
</telerikInput:RadDateTimePicker>
```

* **FooterTemplate**(*ControlTemplate*): Defines what will be displayed inside the dialog(popup) footer.

## Example

The snippet below shows a simple RadDateTimePicker definition:

<snippet id='datetimepicker-custom-templates' />

Now lets add the templates definition to the page resources:

here is the PlaceholderTemplate definition:

<snippet id='datetimepicker-placeholder-template' />

![RadDateTimePicker PlaceholderTemplate](images/datetimepicker_placeholder_template.png)

here is the DisplayTemplate definition:

<snippet id='datetimepicker-display-template' />

![RadDateTimePicker DisplayTemplate](images/datetimepicker_display_template.png)

here is the HeaderTemplate definition:

<snippet id='datetimepicker-header-template' />

here is the FooterTemplate definition:

<snippet id='datetimepicker-footer-template' />

![RadDateTimePicker FooterTemplate](images/datetimepicker_header_footer_template.png)

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

>important A sample Custom Templates example can be found in the DateTimePicker/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Suppoted Standard Date and Time Format Strings]({%slug datetime-picker-format-string%})
- [Key Features]({%slug datetime-picker-key-features%})
- [Styling]({%slug datetime-picker-styling%})