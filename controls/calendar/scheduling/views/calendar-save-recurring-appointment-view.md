---
title: Save Recurring Appointment View
page_title: Xamarin Calendar Documentation | Scheduling UI
description: Check our &quot;Scheduling UI Save Recurring Appointmnet View&quot; documentation article for Telerik Calendar for Xamarin control.
position: 4
slug: calendar-save-recurring-appointment-view
---

# Scheduling UI - Save Recurring Appointment View

SaveRecurringAppointmentView is a view for choosing recurring appointment saving options.

## Control Template

The control template for the **SaveRecurringAppointmentView** can be found at the [following location in our SDK Browse Application](https://github.com/telerik/xamarin-forms-sdk/blob/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/CalendarControl/SchedulingCategory/SchedulingUIViews/SaveRecurringAppointmentView.xaml).

## Partial Customization Options 

In addition, to avoid editing the whole control template, there are additional properties which you can use to customize the look of the UIs, such as SeparatorThickness, ButtonBackgroundColor, etc.  

* **ControlTemplate**(*controlTemplate*): Defines the Control Template of the SaveRecurringAppointmentView.
* **BackgroundColor**(*Xamarin.Forms.Color*): Defines the background color of the SaveRecurringAppointmentView.

>important These properties or the ControlTemplate can be changed by applying style with TargetType="telerikInput:SaveRecurringAppointmentView" in the resources of the “App.xaml” file of your application. 

### Example

```XAML
<Style TargetType="telerikInput:SaveRecurringAppointmentView">
    <Setter Property="BackgroundColor" Value="Red"/>
</Style>
```

In addition, you will need to add the following namespace: 

<snippet id='xmlns-telerikinput'/>

## See Also

* [Add Appointment View]({%slug calendar-add-appointment-view%})
* [Appointment Summery View]({%slug calendar-appointment-summary-view%})
* [Delete Appointment View]({%slug calendar-delete-appointment-view%})
* [Color Picker View]({%slug calendar-color-picker-view%})
* [Custom Recurrence View]({%slug calendar-custom-recurrence-view%})
* [Repeat Appointment View]({%slug calendar-repeat-appointment-view%})
* [End Repeat Appointment View]({%slug calendar-end-repeat-appointment-view%})
