---
title: Delete Recurring Appointment View
page_title: Xamarin Calendar Documentation | Scheduling UI
description: Check our &quot;Scheduling UI Delete Recurring Appointment View&quot; documentation article for Telerik Calendar for Xamarin control.
position: 5
slug: calendar-delete-recurring-appointment-view
---

# Delete Recurring Appointment View

DeleteRecurringAppointmentView is a view for choosing recurring appointments deleting options.

## Control Template

> The control template for the **DeleteRecurringAppointmentView** can be found at the [following location in our SDKBrowser Application](https://github.com/telerik/xamarin-forms-sdk/blob/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/CalendarControl/SchedulingCategory/SchedulingUIViews/DeleteRecurringAppointmentView.xaml).

## Customization Properties 

In addition, to avoid editing the whole control template, there are additional properties which you can use to customize the look of the UIs, such as SeparatorThickness, ButtonBackgroundColor, etc.  

* **ControlTemplate**(*ControlTemplate*): Defines the control template of the DeleteRecurringAppointmentView.
* **BackgroundColor**(*Xamarin.Forms.Color*): Defines the background color of the DeleteRecurringAppointmentView.

>important These properties or the ControlTemplates can be changed by applying style with TargetType="telerikInput:DeleteRecurringAppointmentView" in the resources of the “App.xaml” file of your application. 

> If you customize the control template using ControlTemplate property, you need to define first the control template then the style in the App.xaml Resources. Also when the control template is defined in the App.xaml resources it will be applied for all RadCalendar controls used in the application. If you want to apply the control template on a concreate calendar control, you will need to merge the resource dictionary to the concreate page where the calendar is defines. Example can be found in out [Telerik Sample Application](https://github.com/telerik/telerik-xamarin-forms-samples/tree/master/QSF/QSF/Examples/CalendarControl/SchedulingUICustomizationExample).  

### Example:

```XAML
<Style TargetType="telerikInput:DeleteRecurringAppointmentView">
    <Setter Property="BackgroundColor" Value="Red"/>
</Style>
```

In addition you will need to add the following namespace: 

<snippet id='xmlns-telerikinput'/>

## See Also

* [Add Appointment View]({%slug calendar-add-appointment-view%})
* [Appointment Summery View]({%slug calendar-appointment-summary-view%})
* [Delete Appointment View]({%slug calendar-delete-appointment-view%})
* [Color Picker View]({%slug calendar-color-picker-view%})
* [Custom Recurrence View]({%slug calendar-custom-recurrence-view%})
* [Repeat Appointment View]({%slug calendar-repeat-appointment-view%})
* [End Repeat Appointment View]({%slug calendar-end-repeat-appointment-view%})
