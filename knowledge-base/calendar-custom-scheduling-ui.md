---
title: Customize Scheduling UI
description: How to customize Add Appointmnet and Summary Scheduling Views in Calendar and Scheduling for Xamarin
type: how-to
page_title: Remove the day and month title from Calendar view
slug: calendar-custom-scheduling-ui
tags: calendar, control, Xamarin, XamarinForms, scheduler, scheduling, custom, UI, addappointment, summary, view, customize, custom appointment UI
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2020.3.1021.1</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>Calendar for Xamarin Cross-Platform</td>
	</tr>
</table>


## Description

This help article will show you how to customize the following Calendar Scheduling UI Views - [Add Appointment View]({%slug calendar-add-appointment-view%}) and [Appointment Summary View]({%slug calendar-appointment-summary-view%})

## Solution

1. Let's add the following calendar definition to our page:

<snippet id='schedulingui-customization-xaml'/>

and the following namespace:

<snippet id='xmlns-telerikinput'/>

2. Then we will create a custom appointment class and define our property - MeetingOwner:

<snippet id='xmlns-telerikinput'/>

3. Create a class ViewModel and add appointments to the Calendar.AppointmentsSource: 

<snippet id='xmlns-telerikinput'/>

4. Inside the Resources of the App.xaml file we will customize our AddAppointment and AppointmentSummary Views. We can copy the default [AddAppointmentView ControlTemplate](https://github.com/telerik/xamarin-forms-sdk/blob/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/CalendarControl/SchedulingCategory/SchedulingUIViews/AddAppointmentView.xaml) and [AppointmentSummaryView ControlTemplate](https://github.com/telerik/xamarin-forms-sdk/blob/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/CalendarControl/SchedulingCategory/SchedulingUIViews/AppointmentSummaryView.xaml) then add an UI for our data for the custom appointment:

Here are how the Custom Views are defined in the App.xaml resources

### Add Appointment View

<snippet id='custom-add-appointment-view'/>

You will need the following namespaces: 

```XAML
xmlns:telerikCommon="clr-namespace:Telerik.XamarinForms.Common;assembly=Telerik.XamarinForms.Common" 
xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives" 
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"                    
```

> Note that when you customize the control template using ControlTemplate property, you need to define first the control template then the style in the App.xaml Resources. 

```XAMl
<Style TargetType="telerikInput:AddAppointmentView">
	<Setter Property="ControlTemplate" Value="{StaticResource AddAppointmentViewControlTemplate}"/>
</Style>
```

### Appointment Summary View

<snippet id='custom-add-appointment-view'/>

You will need the following namespaces: 

```XAML
xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives" 
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```                   

> Note that when you customize the control template using ControlTemplate property, you need to define first the control template then the style in the App.xaml Resources. 

```XAMl
<Style TargetType="telerikInput:AppointmentSummaryView">
	<Setter Property="ControlTemplate" Value="{StaticResource AppointmentSummaryViewControlTemplate}"/>
</Style>
```