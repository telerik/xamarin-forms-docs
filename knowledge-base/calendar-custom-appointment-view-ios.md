---
title: How to add custom view to the event in calendar
description: add custom appointment view for ios calendar
type: how-to
page_title: Add custom appointment view to the calendar
slug: calendar-custom-appointment-view-ios
position: 
tags: 
ticketid: 1520626
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.1.224.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Calendar for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article shows how to add custom appointment(event) view to the iOS Calendar for DayView mode.

## Solution

1. Create a custom event class that inherits from `TKCalendarEvent` and define a property for the icon/ additional info, etc. Then in the code, replace the `TKCalendarEvent` with the custom event class. 

```C#
public class MyCustomEvent : TKCalendarEvent
{
    public string CustomDetails { get; set; }
}
```

2. Create `DayViewDataSource` which inherits from `TKCalendarDayViewDataSource` and override the `EventCellForItemAtIndexPath` method. 

```C#
public class DayViewDataSource : TKCalendarDayViewDataSource
{

    // override this method and return the cell
    public override UICollectionViewCell EventCellForItemAtIndexPath(TKCalendarDayView dayView, NSIndexPath indexPath)
    {
        var cell = dayView.EventsView.DequeueReusableCell(DayViewCustomCell.Identifier, indexPath) as DayViewCustomCell;
        cell.Update((MyCustomEvent)dayView.Events[indexPath.Row]);

        return cell;
    }
}
```

3. Create CustomCell which inherits from UICollectionViewCell and create the Layout for the cell, to position the additional properties from the event. I have used the [Telerik UI for Xamarin.iOS Calendar examples](https://docs.telerik.com/devtools/xamarin/demos-and-sample-apps/xamarin-native-examples#xamarinios-examples) for this implementation. 

```C#
public class DayViewCustomCell : UICollectionViewCell
{
    public const string Identifier = "DayViewCustomCell";

    public DayViewCustomCell(IntPtr handle) : base(handle)
    {
        // custom element inside the cell
        Title = new UILabel
        {
            TextColor = UIColor.White,
            Font = UIFont.BoldSystemFontOfSize(12),
            TextAlignment = UITextAlignment.Left,
            LineBreakMode = UILineBreakMode.TailTruncation,
            Lines = 0
        };

        // our custom element inside the cell
        CustomDescription = new UILabel
        {
            TextColor = UIColor.Black,
            Font = UIFont.BoldSystemFontOfSize(12),
            TextAlignment = UITextAlignment.Right,
            LineBreakMode = UILineBreakMode.TailTruncation,
            Lines = 0,
        };
        this.AddSubview(Title);
        this.AddSubview(CustomDescription);

        //this.Title.Layer.CornerRadius = 4;
        //this.Title.Layer.MasksToBounds = true;
    }
    
    public UILabel Title { get; }
    public UILabel CustomDescription { get; }
    
    public void Update(MyCustomEvent ev)
    {
        Title.Text = ev.Title;
        Title.BackgroundColor = ev.EventColor;
        CustomDescription.Text = ev.CustomDetails;
    }

    // implement your custom layout logic, how to position the elements inside the cell
    public override void LayoutSubviews()
    {
       
        base.LayoutSubviews();
        Title.Frame = Inset(this.Bounds, 1, 8);
        Title.LayoutMargins = new UIEdgeInsets(4, 4, 4, 4);
        CustomDescription.Frame = Inset(this.Bounds, 9, 18);
        //CustomDescription.LayoutMargins = new UIEdgeInsets(4, 4, 4, 4);
    }

    
    private static CGRect Inset(CGRect rect, nfloat inset, nfloat minHeight)
    {
        return new CGRect(rect.X + inset, rect.Y + inset, rect.Width - 2 * inset, Math.Max(rect.Height - 2 * inset, minHeight));
    }
}
```

