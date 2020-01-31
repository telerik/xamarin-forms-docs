---
title: How can I change the start day of the week
description: change calendar start week day
type: how-to
page_title: 
slug: calendar-change-first-week-day
position: 
tags: calendar, change, week, day, xamarin, xamarin.forms
ticketid: 1451461
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.1.114.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Calendar for Xamarin Forms</td>
		</tr>
	</tbody>
</table>


## Description

This help article will show you how to change the display day of the week in calendar **Month view**. For example lets change the fist day to be Tuesday.

## Solution

This scenario could be achieved using a custom renderer for each platform

### Android

create a class inside the Android project, for example MyCalendarRenderer. 

```C#
using Android.Content;

[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(TestProject.Droid.MyCalendarRenderer))]
namespace TestProject.Droid
{
    public class MyCalendarRenderer : Telerik.XamarinForms.InputRenderer.Android.CalendarRenderer
    {
        public MyCalendarRenderer(Context context) : base(context)
        {

        }

        protected override void OnElementChanged(Xamarin.Forms.Platform.Android.ElementChangedEventArgs<Telerik.XamarinForms.Input.RadCalendar> e)
        {
            base.OnElementChanged(e);

            if (this.Control != null)
            {
                Java.Util.Calendar calendar = Java.Util.Calendar.GetInstance(Java.Util.Locale.Uk);
                calendar.FirstDayOfWeek = 3;

                this.Control.Calendar = calendar;
            }
        }
    }
}
```

For more informatiuon about native Android calendar localization review the [Calendar Localization](https://docs.telerik.com/devtools/xamarin/nativecontrols/android/calendar/calendar-localization) article.

### iOS 

create a class inside the iOS project, for example MyCalendarRenderer.

```C#
[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Input.RadCalendar), typeof(TestProject.iOS.MyCalendarRenderer))]
namespace TestProject.iOS
{
    public class MyCalendarRenderer : Telerik.XamarinForms.InputRenderer.iOS.CalendarRenderer
    {
        protected override void OnElementChanged(Xamarin.Forms.Platform.iOS.ElementChangedEventArgs<Telerik.XamarinForms.Input.RadCalendar> e)
        {
            base.OnElementChanged(e);

            if (this.Control != null)
            {
                Foundation.NSCalendar calendar = new Foundation.NSCalendar(Foundation.NSCalendarType.Gregorian);
                calendar.FirstWeekDay = 3;

                this.Control.Calendar = calendar;
            }
        }
    }
}
```

For more informatiuon about native iOS calendar localization review the [Calendar Localization](https://docs.telerik.com/devtools/xamarin/nativecontrols/ios/calendar/localization) article.
