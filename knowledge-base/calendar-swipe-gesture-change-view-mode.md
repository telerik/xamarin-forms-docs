---
title: Disable calendar swipe gesture to prevent changing view modes
description: Disable calendar swipe gesture to prevent changing view modes
type: troubleshooting
page_title: Calendar swipe gestures to change view modes
slug: calendar-swipe-gesture-change-view-mode
position: 
tags: 
ticketid: 1495222
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

This article will show you how to prevent the swipe up/swipe down gestures available in the native Telerik UI for Xamarin Android calendar control

## Solution

### Disable the SwipeDown gesture

You will need to implement custom renderer for Android and set the `SetSwipeDownToChangeDisplayMode` to `false`.

```C#
using Android.Content;
using App7.Droid;
using Telerik.XamarinForms.Input;
using Telerik.XamarinForms.InputRenderer.Android;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;

[assembly: ExportRenderer(typeof(RadCalendar), typeof(MyCalendarRenderer))]
namespace App7.Droid
{
    public class MyCalendarRenderer : CalendarRenderer
    {
        public MyCalendarRenderer(Context context) : base (context)
        {

        }
        protected override void OnElementChanged(ElementChangedEventArgs<RadCalendar> e)
        {
            base.OnElementChanged(e);
            this.Control.GestureManager.SetSwipeDownToChangeDisplayMode(false);
        }
    }
}
```

### SwipeUp gesture

By default the value of the SwipeUp gesture is false. It means that the gesture is desabled by default. In case you want to enable it you should set it to `true`.

> The gesture works when the Calendar is in `Month` view and you swipe up from the last week of the month to the center of the calendar control. The view is changed to `Week`.

```C#
using Android.Content;
using App7.Droid;
using Telerik.XamarinForms.Input;
using Telerik.XamarinForms.InputRenderer.Android;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;

[assembly: ExportRenderer(typeof(RadCalendar), typeof(MyCalendarRenderer))]
namespace App7.Droid
{
    public class MyCalendarRenderer : CalendarRenderer
    {
        public MyCalendarRenderer(Context context) : base (context)
        {

        }
        protected override void OnElementChanged(ElementChangedEventArgs<RadCalendar> e)
        {
            base.OnElementChanged(e);
            this.Control.GestureManager.SetSwipeUpToChangeDisplayMode(true);
        }
    }
}
```
