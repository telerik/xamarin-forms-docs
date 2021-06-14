---
title: Custom Accessibility Label for iOS calendar
description: How to add Custom Accessibility Label for iOS calendar
type: how-to
page_title: Custom Accessibility Label for iOS calendar
slug: calebdar-custom-accessibility-label-text-ios
position: 
tags: 
ticketid: 1516755
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.1.325.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Calendar for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article will show you how to access the default accessibility label on iOS calendar for MonthView

## Solution

1. Create a custom renderer and create custom delegate: 

```C#
public class CustomCalendarRenderer : CalendarRenderer
{
    protected override CalendarDelegate CreateCalendarDelegateOverride()
    {
        return new CustomCalendarDelegate();
    }
}
```

2. The `CustomCalendarDelegate` implementation. You will need to create a custom cell: 

```C#
public class CustomCalendarDelegate : CalendarDelegate
{
    public override TKCalendarCell ViewForCellOfKind(TKCalendar calendar, TKCalendarCellType cellType)
    {
        if (cellType == TKCalendarCellType.Day)
        {
            CustomCell cell = new CustomCell();
            return cell;
        }
        return base.ViewForCellOfKind(calendar, cellType);
    }
}
```

3. CustomCell implementation.  override the AttachWithCalendar method inside the CustomCell, call the base, then implement custom logic to get the information from the events. Then set this information to the AccessibilityLabel.

```C#
public class CustomCell : TKCalendarDayCell
{
	public override void AttachWithCalendar(TKCalendar owner, NSDate date)
	{
		base.AttachWithCalendar(owner, date);

		// Here you can override the default AccessibilityLabel
		if (this.Events != null)
		{
			StringBuilder builder = new StringBuilder();
			foreach (var app in this.Events)
			{
				builder.AppendLine(string.Format("{0} {1}", app.GetTitle(), app.GetEventColor().ToString()));
			}

			this.AccessibilityLabel = builder.ToString();
		}
	}
}
```


