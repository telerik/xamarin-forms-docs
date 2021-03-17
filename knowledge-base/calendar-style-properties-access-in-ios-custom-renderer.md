---
title: How to access Calendar TodayCellStyle and SelectedCellStyle in iOS custom renderer
description: approach how to access calendar properties inside the custom renderer
type: how-to
page_title: access calendar properties inside the custom renderer
slug: calendar-style-properties-access-in-ios-custom-renderer
position: 
tags: calendar, xamarin, ios, properties, custom renderer
ticketid: 1507114
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.2.513.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Calendar for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This help article will show you how to access calendar properties set in Xamarin.Forms inside the Custom Renderer

## Solution

You will need to pass the Element from the Renderer to the Delegate:

### Example

Here is a sample Calendar definition in XAML with TodayCellStyle and SelectedCellStyle properties set:

```XAML
<telerikInput:RadCalendar>
    <telerikInput:RadCalendar.SelectedCellStyle>
        <telerikInput:CalendarCellStyle BorderColor="Transparent" BackgroundColor="Gray" TextColor="White"/>
    </telerikInput:RadCalendar.SelectedCellStyle>
    <telerikInput:RadCalendar.TodayCellStyle>
        <telerikInput:CalendarCellStyle  BorderColor="Transparent" BackgroundColor="White" TextColor="Gray"/>
    </telerikInput:RadCalendar.TodayCellStyle>
</telerikInput:RadCalendar>
```

and the **custom renderer** implementation for iOS

```C#
public class CustomCalendarRenderer : CalendarRenderer
{
    protected override CalendarDelegate CreateCalendarDelegateOverride()
    {
        return new CustomCalendarDelegate(this.Element);
    }
}

public class CustomCalendarDelegate : CalendarDelegate
{
    private RadCalendar element;
	
    public CustomCalendarDelegate(RadCalendar element) : base()
    {
        this.element = element;
        SetDisplaySelectionDecoration(false);
    }
	public override void UpdateVisualsForCell(TKCalendar calendar, TKCalendarCell cell)
    {
        var dayCell = cell as TKCalendarDayCell;
		// here is how we can get the TodayCellStyle and SelectedCellStyle
        var cellColor = element.TodayCellStyle.BackgroundColor.ToUIColor();
        var cellSelectedColor = element.SelectedCellStyle.BackgroundColor.ToUIColor();
    }
}
```
