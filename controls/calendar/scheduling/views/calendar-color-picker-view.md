---
title: Color Picker View
page_title: Xamarin Calendar Documentation | Scheduling UI
description: Check our &quot;Scheduling UI Color Picker View&quot; documentation article for Telerik Calendar for Xamarin control.
position: 2
slug: calendar-color-picker-view
---

# Scheduling UI - Color Picker View

Add Appointment View allows the user to change the main appointment properties like `Title`, `Start` and `End Date`, `Detail`, `Recurrence`, whether it will be All Day appointment.

## Visual Structure of Color Picker View

![Scheduling UI Color Picker View](images/calendar-color-picker-view.png)

## Control Template

The control template for the **ColorPickerView** can be found at the [following location in our SDKBrowser Application](https://github.com/telerik/xamarin-forms-sdk/blob/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/CalendarControl/SchedulingCategory/SchedulingUIViews/ColorPickerView.xaml).

## Partial Customization Options 

In addition, to avoid editing the whole control template, there are additional properties which you can use to customize the look of the **ColorPickerView**:

* **ControlTemplate**(*controlTemplate*): Defines the Control Template of the ColorPickerView.
* **TitleFontSize**(*double*): Defines the font size of the color picker title.
* **TitleTextColor**(*Xamarin.Forms.Color*): Defines the text color of the color picker title.
* **ButtonBackgroundColor**(*Xamarin.Forms.Color*): Defines the background color for the Cancel button.
* **ButtonTextColor**(*Xamarin.Forms.Color*): Defines the text color of the OK and Cancel buttons.
* **BackgroundColor**(*Xamarin.Forms.Color*): Defines the background color of the ColorPickerView.

>important These properties or the ControlTemplate can be changed by applying style with TargetType telerikInput:ColorPickerView in the “App.xaml” file of your application. 

### Example:

```XAML
<Style TargetType="telerikInput:ColorPickerView">
    <Setter Property="ButtonBackgroundColor" Value="Blue"/>
    <Setter Property="TitleFontSize" Value="16"/>
    <Setter Property="BackgroundColor" Value="LightGray"/>
</Style>
```

In addition, you will need to add the following namespace: 

<snippet id='xmlns-telerikinput'/>

## See Also

* [Delete Appointment View]({%slug calendar-delete-appointment-view%})
* [View Modes]({%slug calendar-features-navigation-and-view-mode%})
* [Calendar Selection]({%slug calendar-selection%})
