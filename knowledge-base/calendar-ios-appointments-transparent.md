---
title: How to remove the semi-transparent background of appointments on iOS
description: Appointments on iOS by default are rendered with transparent background
type: how-to
page_title: Disable the default transparency of appointments on iOS
slug: calendar-ios-appointments-transparent
position: 
tags:remove, semi-transparency, background, appointments, ios-appointments-transparent, Xamarin, XamarinForms, rendered 
ticketid: 1407076
res_type: kb
---

## Environment
<table>
    <tbody>
	    <tr>
	    	<td>Product Version</td>
	    	<td>2019.1.318.1</td>
	    </tr>
	    <tr>
	    	<td>Product</td>
	    	<td>Calendar for Xamarin</td>
	    </tr>
    </tbody>
</table>


## Description

With the default style the background of the appointments on iOS is semi-transparent in DayView mode. This makes it not possible to define white background to appointments. 
You could check how appointments look by default on Android and iOS here: [Calendar &amp; Scheduling Appointments]({%slug calendar-appointments %}).

## Solution

To remove the semi-transparency, you would need a custom renderer on iOS and in it change the DataSource of the DayView. In the custom DataSource override UpdateCell method and inside it you will find Transparency property of the cell style:

```C#
[assembly: ExportRenderer(typeof(RadCalendar), typeof(CustomCalendarRenderer))]
namespace XamarinApp2.iOS
{
    class CustomCalendarRenderer : CalendarRenderer
    {
        protected override void OnElementChanged(ElementChangedEventArgs<RadCalendar> e)
        {
 
            base.OnElementChanged(e);
            var dayView = (this.Control.Presenter as TKCalendarDayViewPresenter).DayView;
            dayView.DataSource = new MyCustomDataSource();
 
        }
    }
           
    internal class MyCustomDataSource : TKCalendarDayViewDataSource
    {
        public override void UpdateCell(TKCalendarDayView dayView, UICollectionViewCell cell)
        {
            var eventCell = cell as TKCalendarDayViewEventCell;
            if (eventCell != null)
            {
 
                eventCell.Style.TextColor = UIColor.Black;
                eventCell.Style.Transparency = 1f;
            }
        }
    }
}
```
