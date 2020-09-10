---
title: Delete Recurring Appointment View
page_title: Xamarin Calendar Documentation | Scheduling UI
description: Check our &quot;Scheduling UI Delete Recurring Appointment View&quot; documentation article for Telerik Calendar for Xamarin control.
position: 5
slug: calendar-delete-recurring-appointment-view
---

# Scheduling UI - Delete Recurring Appointment View

DeleteRecurringAppointmentView is a view for choosing recurring appointments deleting options.

## Visual Structure of Delete Recurring Appointment View

![Scheduling UI Delete Recurring Appointment View](images/calendar-delete-recurring-appointment-view.png)

## Control Template

The control template for the **DeleteRecurringAppointmentView** can be found at the [following location in our SDKBrowser Application](https://github.com/telerik/xamarin-forms-sdk/blob/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/CalendarControl/SchedulingCategory/SchedulingUIViews/DeleteRecurringAppointmentView.xaml).

## Partial Customization Options 

In addition, to avoid editing the whole control template, there are additional properties which you can use to customize the look of the UIs, such as SeparatorThickness, ButtonBackgroundColor, etc.  

* **ControlTemplate**(*ControlTemplate*): Defines the control template of the DeleteRecurringAppointmentView.
* **BackgroundColor**(*Xamarin.Forms.Color*): Defines the background color of the DeleteRecurringAppointmentView.

>important These properties or the ControlTemplates can be changed by applying style with TargetType="telerikInput:DeleteRecurringAppointmentView" in the resources of the “App.xaml” file of your application. 

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
