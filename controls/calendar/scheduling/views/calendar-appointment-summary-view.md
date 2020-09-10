---
title: Appointment Summary View
page_title: Xamarin Calendar Documentation | Scheduling UI
description: Check our &quot;Scheduling UI Appointment Summary View&quot; documentation article for Telerik Calendar for Xamarin control.
position: 1
slug: calendar-appointment-summary-view
---

# Scheduling UI Appointment Summary View

Appointment Summery View displays brief information about the appointment. The Appointment's Title, Details, Start Date and End Date, Recurrence, Detail.
 
## Visual Structure of Appointment Summary View 

![Scheduling UI Appointment Summary View](images/calendar-appointment-summary-view.png)

## Control Template

The control template for the **AppointmentSummaryView** can be found at the [following location in our SDKBrowser Application](https://github.com/telerik/xamarin-forms-sdk/blob/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/CalendarControl/SchedulingCategory/SchedulingUIViews/AppointmentSummaryView.xaml).

## Partial Customization Options 

In addition, to avoid editing the whole control template, there are additional properties which you can use to customize the look of the **AppointmentSummaryView**: 

* **ControlTemplate**(*controlTemplate*): Defines the Control Template of the AppintmentSummaryView.
* **AppointmentTitleFontSize**(*double*): Defines the font size of the appointment title.
* **AppointmentTitleTextColor**(*Xamarin.Forms.Color*): Defines the text color of the appointment title.
* **DetailsTextColor**(*Xamarin.Forms.Color*): Defines the text color of the appointment detail.
* **DetailsFontSize**(*Xamarin.Forms.Color*): Defines the font size of the appointment detail text.
* **ButtonBackgroundColor**(*Xamarin.Forms.Color*): Defines the background color for the Delete event button.
* **ButtonTextColor**(*Xamarin.Forms.Color*): Defines the text color of the Delete event button.
* **BackgroundColor**(*Xamarin.Forms.Color*): Defines the background color of the AppintmentSummaryView.

![Scheduling UI Appointment Summary View Properties](images/calendar-appointment-summary-view-properties.png)

>important These properties or the ControlTemplate can be changed by applying style with TargetType="telerikInput:AppointmentSummaryView" in the resources of the “App.xaml” file of your application. 

### Example

```XAML
<Style TargetType="telerikInput:AppointmentSummaryView">
    <Setter Property="DetailsFontSize" Value="24"/>
    <Setter Property="AppointmentTitleTextColor" Value="LightBlue"/>
    <Setter Property="BackTextColor" Value="Blue"/>
</Style>
```

In addition, you will need to add the following namespace: 

<snippet id='xmlns-telerikinput'/>

## See Also

* [Delete Appointment View]({%slug calendar-delete-appointment-view%})
* [Color Picker View]({%slug calendar-color-picker-view%})
