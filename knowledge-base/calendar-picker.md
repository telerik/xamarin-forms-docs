---
title: Calendar picker
description: how to create a calendar picker control
type: how-to
page_title: calendar picker that displays the calendar control
slug: calendar-picker
position: 
tags: 
ticketid: 1529808
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td></td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Progress® Telerik® UI for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

This article shows how to create a Calendar picker control which allows you to pick a date froma calendar. 

## Solution

In order to create a calendar picker control you have to use the Telerik UI for Xamarin [Templated Picker]({%slug templated-picker-overview%}) control. 

## Example

Add the templatedPicker to the page and inside the RadTemplatedPicker.SelectorTemplate add the RadCalendar control:

```XAML
<telerikInput:RadTemplatedPicker>
    <telerikInput:RadTemplatedPicker.SelectorTemplate>
        <ControlTemplate>
            <telerikInput:RadCalendar SelectedDate="{TemplateBinding SelectedValue, Mode=TwoWay}"/>
        </ControlTemplate>
    </telerikInput:RadTemplatedPicker.SelectorTemplate>
</telerikInput:RadTemplatedPicker>
```

Add the namespaces:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```