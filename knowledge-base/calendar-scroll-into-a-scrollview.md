---
title: Scroll RadCalendar inside a ScrollView
description: scroll left/right the calendar control inside a ScrollView
type: how-to
page_title: Scroll Calendar inside a ScrollView
slug: calendar-scroll-into-a-scrollview
position: 
tags: calendar, android, scroll, horizontal, scrollview, left, right, xamarin, XamarinForms
ticketid: 1418628
res_type: kb
---

## Environment
<table>
    <tbody>
	    <tr>
	    	<td>Product Version</td>
	    	<td>2019.2 708.1</td>
	    </tr>
	    <tr>
	    	<td>Product</td>
	    	<td>Calendar for Xamarin</td>
	    </tr>
    </tbody>
</table>


## Description

A scenario where the RadCalendar is used within a ScrollView is not that common and such gesture conflicts might be observed as we have different native implementations of the RadCalendar for the different platforms.
This help article will show you how to scroll right/left the calendar on Android when the control is positioned inside a ScrollView.

## Solution

The calendar in Android supports horizontal scrolling. In order to apply this you will need to create a custom renderer for Android. More information about custom renderers for RadCalendar control you can find in our help topic: [Custom Calendar Renderer](https://docs.telerik.com/devtools/xamarin/controls/calendar/how-to/calendar-how-to-create-custom-renderer).

Here are the steps you need to follow in order to create a custom renderer:

1. You will need to create a class inside the Android project which inherits from Telerik.XamarinForms.InputRenderer.Android.CalendarRenderer and override the OnElementChanged method. Inside it set HorizontalScroll to the calendar control.

2. Then register your custom renderer using the ExportRenderer assembly level attribute.

For example:

```C#
[assembly: ExportRenderer(typeof(RadCalendar), typeof(CustomCalendarRenderer))]
 
namespace CalendarExample.Droid
{
    public class CustomCalendarRenderer : CalendarRenderer
    {
        public CustomCalendarRenderer(Context context) : base(context)
        {
 
        }
        protected override void OnElementChanged(ElementChangedEventArgs<RadCalendar> e)
        {
            base.OnElementChanged(e);
            this.Control.HorizontalScroll = true;
        }
    }
}
```
