---
title: Hide Title in RadCalendar
description: How to remove the view title from Calendar control
type: how-to
page_title: Remove the day and month title from Calendar view
slug: calendar-hide-title
tags: calendar, title, renderer
ticketid: 1362025
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2018.3.1109</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>Calendar for Xamarin Cross-Platform</td>
	</tr>
</table>


## Description

RadCalendar for Xamarin.Forms does not provide direct API for removing the Title (e.g: November 2018) of the current view, still you could implement it natively for Android and iOS through custom renderers. The code below shows sample implementations for hiding the Calendar Title:

## Solution

* For Android you would need to set ShowTitle property:

```C#
public class CustomCalendarRenderer : CalendarRenderer
{
    protected override void OnElementChanged(ElementChangedEventArgs<RadCalendar> e)
    {
        base.OnElementChanged(e);
 
        if (this.Control != null)
        {
            this.Control.ShowTitle = false;            
        }
    }
}
```

* For iOS you would need to get TKCalendarMonthPresenter and set its TitleHidden property:

```C#
public class CustomCalendarRenderer : Telerik.XamarinForms.InputRenderer.iOS.CalendarRenderer
{
    protected override void OnElementChanged(ElementChangedEventArgs<RadCalendar> e)
    {
        base.OnElementChanged(e);
        if (Control.Presenter is TKCalendarMonthPresenter)
        {
            (Control.Presenter as TKCalendarMonthPresenter).TitleHidden = true;
        }
    }
}
```
