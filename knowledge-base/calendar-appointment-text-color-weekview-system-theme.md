---
title: Change Appointment Text color in Calendar Week View when app theme is changed
description: Change Appointment Text color in Calendar Week View when dark/light mode changes
type: troubleshooting
page_title: Change Calendar Appointment TextColor when system theme changes
slug: calendar-appointment-text-color-weekview-system-theme
position: 
tags: dark mode, light mode, calendar, appointments, text color, xamarin.forms
ticketid: 1495225
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.3.1106.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Calendar for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This help article will show you how to change the Calendar Appointment Text Color when the system theme is changed. 

## Solution

The properties of the CalendarAppointmentStyle class are not bindable, so the whole style needs to be changed when the system theme changes.

You should use the following approach:

```XAML
<ContentPage.Resources>
    <ResourceDictionary>
        <Color x:Key="LightColor">Red</Color>
        <Color x:Key="DarkColor">Blue</Color>
    </ResourceDictionary>
</ContentPage.Resources>
<StackLayout>
    <telerikInput:RadCalendar x:Name="calendar" ViewMode="Week">
        <telerikInput:RadCalendar.AppointmentsStyle>
            <AppThemeBinding>
                <AppThemeBinding.Light>
                    <telerikInput:CalendarAppointmentsStyle DisplayMode="TextWithShape"
                                                            TextColor="{​​​​​​​StaticResource LightColor}​​​​​​​"/>
                </AppThemeBinding.Light>
                <AppThemeBinding.Dark>
                    <telerikInput:CalendarAppointmentsStyle DisplayMode="TextWithShape"
                                                            TextColor="{​​​​​​​StaticResource DarkColor}​​​​​​​"/>
                </AppThemeBinding.Dark>
            </AppThemeBinding>
        </telerikInput:RadCalendar.AppointmentsStyle>
    </telerikInput:RadCalendar>
</StackLayout>
```