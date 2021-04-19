---
title: Remove background color from calendar appointment
description: how to remove the appointment background color for day view
type: how-to
page_title: remove appointment background color in day view
slug: calendar-remove-appointment-background-color
position: 
tags: calendar, appointment, color, dayview, xamarin, ios
ticketid: 1513099
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.1.119.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Calendar for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This help article will show you how to remove the Calendar appointment background color on iOS for day view mode. For the purpose we will need to use a [custom renderer for iOS](https://docs.telerik.com/devtools/xamarin/controls/calendar/styling/custom-renderers/calendar-customrenderers-ios). 

## Solution

Create a class inside the iOS project CustomCalendarRenderer which inherits from CalendarRenderer and override the CreateCalendarDayViewDataSource.
Then return new CustomCalendarDayViewDataSource. Inside this class override the EventCellForItemAtIndexPath method and set Transparency to the cell style:

```C#
using App1.iOS;
using Foundation;
using Telerik.XamarinForms.Input;
using Telerik.XamarinForms.InputRenderer.iOS;
using TelerikUI;
using UIKit;
using Xamarin.Forms;

[assembly: ExportRenderer(typeof(RadCalendar), typeof(CustomCalendarRenderer))]
namespace App1.iOS
{
    public class CustomCalendarRenderer : CalendarRenderer
    {
        protected override CalendarDayViewDataSource CreateCalendarDayViewDataSource()
        {
            return new CustomCalendarDayViewDataSource(this);
        }
    }



    internal class CustomCalendarDayViewDataSource : CalendarDayViewDataSource
    {
        public CustomCalendarDayViewDataSource(CalendarRenderer renderer)
            : base(renderer)
        {
        }

        public override UICollectionViewCell EventCellForItemAtIndexPath(TKCalendarDayView dayView, NSIndexPath indexPath)
        {
            var cell = base.EventCellForItemAtIndexPath(dayView, indexPath);
            if (cell is TKCalendarDayViewEventCell eventCell)
            {
                eventCell.Style.Transparency = 0.0f;
            }

            return cell;
        }
    }
}
```

