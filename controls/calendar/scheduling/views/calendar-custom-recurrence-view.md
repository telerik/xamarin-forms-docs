---
title: Custom Recurrence View
page_title: Xamarin Calendar Documentation | Scheduling UI
description: Check our &quot;Scheduling UI&quot; documentation article for Telerik Calendar for Xamarin control.
position: 8
slug: calendar-custom-recurrence-view
---

# Scheduling UI - Custom Recurrence View

CustomRecurrenceView is a view for choosing custom recurring intervals of an appointment.

## Custom Recurrence View

![Scheduling UI Custom Recurrence View](images/calendar-custom-recurrence-view.png)

## Control Template

> The control template for the **CustomRecurrenceView** can be found at the [following location in our SDKBrowser Application](https://github.com/telerik/xamarin-forms-sdk/blob/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/CalendarControl/SchedulingCategory/SchedulingUIViews/CustomRecurrenceView.xaml).

## Customization Properties 

In addition, to avoid editing the whole control template, there are additional properties which you can use to customize the look of the **CustomRecurrenceView**:

* **ControlTemplate**(*controlTemplate*): Defines the Control Template of the CustomRecurrenceView.
* **TitleFontSize**(*double*): Defines the font size of the custom recurrence title.
* **TitleTextColor**(*Xamarin.Forms.Color*): Defines the text color of the custom recurrence title.
* **TextColor**(*Xamarin.Forms.Color*): Defines the text color of the frequency text, interval text, etc.
* **SeparatorColor**(*Xamarin.Forms.Color*): Defines the color of the separator (the lines which devide each custom recurrence option).
* **SeparatorThickness**(*Xamarin.Forms.Thickness*): Defines the thickness of the separators (the lines which devide each custom recurrence option).
* **DetailsTextColor**(*Xamarin.Forms.Color*): Defines the text color of the recurence detail.
* **DetailsFontSize**(*Xamarin.Forms.Color*): Defines the font size of the recurrence detail text.
* **ButtonBackgroundColor**(*Xamarin.Forms.Color*): Defines the background color for the OK and Cancel buttons.
* **ButtonTextColor**(*Xamarin.Forms.Color*): Defines the text color of the OK and Cancel buttons.
* **BackgroundColor**(*Xamarin.Forms.Color*): Defines the background color of the CustomRecurrenceView.

![Scheduling UI Custom Recurrence View Properties](images/calendar-custom-recurrence-view-properties.png)

>important These properties or the ControlTemplate can be changed by applying style with TargetType="telerikInput:CustomRecurrenceView" in the resources of the “App.xaml” file of your application. 

> If you customize the control template using ControlTemplate property, you need to define first the control template then the style in the App.xaml Resources. Also when the control template is defined in the App.xaml resources it will be applied for all RadCalendar controls used in the application. If you want to apply the control template on a concreate calendar control, you will need to merge the resource dictionary to the concreate page where the calendar is defines. Example can be found in out [Telerik Sample Application](https://github.com/telerik/telerik-xamarin-forms-samples/tree/master/QSF/QSF/Examples/CalendarControl/SchedulingUICustomizationExample).  

### Example

```XAML
<Style TargetType="telerikInput:CustomRecurrenceView">
    <Setter Property="TextColor" Value="Red"/>
    <Setter Property="TitleTextColor" Value="Red"/>
    <Setter Property="TitleFontSize" Value="20"/>
</Style>
```

In addition, you will need to add the following namespace: 

<snippet id='xmlns-telerikinput'/>

## See Also

* [Add Appointment View]({%slug calendar-add-appointment-view%})
* [Appointment Summery View]({%slug calendar-appointment-summary-view%})
* [Delete Appointment View]({%slug calendar-delete-appointment-view%})
* [Color Picker View]({%slug calendar-color-picker-view%})
* [Repeat Appointment View]({%slug calendar-repeat-appointment-view%})
* [End Repeat Appointment View]({%slug calendar-end-repeat-appointment-view%})