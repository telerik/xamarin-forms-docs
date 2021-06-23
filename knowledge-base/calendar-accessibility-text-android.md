---
title: Accessibility text to Calendar cell for Android
description: accessibility text for android calendar cell
type: how-to
page_title: Accessibility text to Calendar cell for Android
slug: calendar-accessibility-text-android
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

This article will show you how to add Accessibility label to the Native Android Calendar control in MonthView

## Solution

1. Create a custom renderer and override the `CreateNativeControl` method. 

```C#
public class CustomCalendarRenderer : CalendarRenderer
{
    public CustomCalendarRenderer(Context context) : base(context)
    {
    }
    protected override RadCalendarView CreateNativeControl()
    {
        return new CustomRadCalendarViewControl(this.Context);
    }
    protected override void OnElementChanged(ElementChangedEventArgs<RadCalendar> e)
    {
        base.OnElementChanged(e);
    }
}
```

2. Craete a `CustomRadCalendarView` control which inherits from the `RadCalendarView`

```C#
public class CustomRadCalendarViewControl : RadCalendarView
{
    private CalendarAccessibilityDelegate accessibilityDelegate;
    private bool suspendTouch;

    public CustomRadCalendarViewControl(Context context) : base(context)
    {
        this.accessibilityDelegate = new CalendarAccessibilityDelegate(this);
        ViewCompat.SetAccessibilityDelegate(this, this.accessibilityDelegate);
    }
    public override bool OnTouchEvent(MotionEvent e)
    {
        if (!suspendTouch)
        {
            this.GestureManager.HandleTouch(e);
            if (e.Action == MotionEventActions.Up) {
                 int cellIndex = this.Adapter.GetCellIndexFromCoordinates((int)e.GetX(), (int)e.GetY());
                 this.accessibilityDelegate.InvalidateVirtualView(cellIndex);
                 this.accessibilityDelegate.SendEventForVirtualView(cellIndex, (int)EventTypes.ViewClicked);
             }
        }
        return base.OnTouchEvent(e);
    }
    protected override bool DispatchHoverEvent(MotionEvent e)
    {
        if (this.accessibilityDelegate.DispatchHoverEvent(e)) 
        {
            return true;
        }
        return base.DispatchHoverEvent(e);
    }
    public override void OnInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info)
    {
        base.OnInitializeAccessibilityNodeInfo(info);

       // super.onInitializeAccessibilityNodeInfo(info);

        StringBuilder textInfo = new StringBuilder();
        Date displayDateInDate = new Date(this.DisplayDate);
        DateFormat format = null;
        textInfo.Append("RadCalendar\t");
        CalendarDisplayMode displayMode = this.DisplayMode;
        if (displayMode == CalendarDisplayMode.Week || displayMode == CalendarDisplayMode.Month)
        {
            format = new SimpleDateFormat(CalendarAccessibilityDelegate.MonthYearFormat.ToString());
            textInfo.Append(format.Format(displayDateInDate));
        }
        else if (displayMode == CalendarDisplayMode.Year)
        {
            format = new SimpleDateFormat("YYYY");
            textInfo.Append(format.Format(displayDateInDate));
        }
        info.ContentDescription = textInfo.ToString();
        info.Checkable = false;
        info.Clickable = false;
    }
} 
```


2. Implement the Accessibility from scratch. Create a class for example `CalendarAccessibilityDelegate` which inherits from `ExploreByTouchHelper`

```C#
using System.Collections.Generic;
using System.Reflection;
using Android.Graphics;
using Android.OS;
using Android.Views.Accessibility;
using AndroidX.Core.View.Accessibiity;
using AndroidX.CustomView.Widget;
using Com.Telerik.Widget.Calendar;
using Java.Lang;
using Java.Text;
using Java.Util;

namespace calendarcell.Droid
{
    public class CalendarAccessibilityDelegate : ExploreByTouchHelper
    {
        private CalendarAdapter adapter;
        private RadCalendarView calendarView;
        public static string MonthYearFormat = "MMM YYYY";

        public CalendarAccessibilityDelegate(CustomRadCalendarViewControl calendarView) : base(calendarView)
        {
            this.calendarView = calendarView;
            this.adapter = this.calendarView.Adapter;
        }

        private Android.Runtime.JavaList DateCells
        {
            get
            {
                var adapterType = this.adapter.GetType();
                var dateCells = adapterType.GetProperty("DateCells", BindingFlags.DeclaredOnly | BindingFlags.NonPublic | BindingFlags.Instance);

                return dateCells.GetValue(this.adapter) as Android.Runtime.JavaList;
            }
        }

        protected override int GetVirtualViewAt(float p0, float p1)
        {
            int cellIndex = this.adapter.GetCellIndexFromCoordinates((int)p0, (int)p1);
            if (cellIndex == -1)
            {
                return ExploreByTouchHelper.InvalidId;
            }

            return cellIndex;
        }

        protected override void GetVisibleVirtualViews(IList<Integer> p0)
        {
            int cellsCount = (int)this.adapter.DateCell.TextSize;
            for (int i = 0; i < cellsCount; i++)
            {
                p0.Add((Integer)i);
            }
        }

        protected override void OnPopulateEventForVirtualView(int virtualViewId, AccessibilityEvent e)
        {
            if (this.adapter.DateCell.TextSize - 1 < virtualViewId)
            {
                return;
            }

            CalendarCell cell = this.adapter.DateCell;
            if (cell == null)
            {
                throw new IllegalArgumentException("Invalid virtualViewId");
            }

            Date cellDate = new Date(cell.Date);
            e.Text.Add(new Java.Lang.String(cellDate.ToString()));
        }

        protected override void OnPopulateNodeForVirtualView(int virtualViewId, AccessibilityNodeInfoCompat node)
        {
            if (this.adapter.DateCell.TextSize - 1 < virtualViewId)
            {
                node.SetBoundsInParent(new Rect());
                node.Text = "";
                node.Checkable = false;
            }
            else
            {
                CalendarCell cell = this.DateCells.Get(virtualViewId) as CalendarCell;
                if (cell == null)
                {
                    throw new IllegalArgumentException("Invalid virtualViewId");
                }

                string text = null;
                int totalHeaderHeight = 0;
                long date = cell.Date;
                Date cellDate = new Date(date);
                CalendarDisplayMode displayMode = this.calendarView.DisplayMode;
                if (displayMode == CalendarDisplayMode.Month || displayMode == CalendarDisplayMode.Week)
                {
                    totalHeaderHeight = this.calendarView.TitleHeight + this.calendarView.DayNamesHeight;
                    text = cellDate.ToString();
                }
                else if (displayMode == CalendarDisplayMode.Year)
                {
                    totalHeaderHeight = this.calendarView.TitleHeight;
                    DateFormat format = new SimpleDateFormat(MonthYearFormat);
                    text = format.Format(cellDate);
                }

                var dayCell = cell as CalendarDayCell;
                if (dayCell != null && dayCell.Events != null)
                {
                    foreach (var app in dayCell.Events)
                    {
                        text += string.Format(" {0}", app.Title);
                    }
                }

                node.Text = text;

                Rect cellBounds = cell.CalcBorderRect();
                cellBounds.Top += totalHeaderHeight;
                cellBounds.Bottom += totalHeaderHeight;
                node.SetBoundsInParent(cellBounds);

                node.AddAction(AccessibilityNodeInfoCompat.ActionClick);
                node.Clickable = false;

                foreach (long selectedDate in this.calendarView.SelectedDates)
                {
                    if (selectedDate == date)
                    {
                        node.Selected = true;
                        break;
                    }
                }
            }
        }

        protected override bool OnPerformActionForVirtualView(int virtualViewId, int action, Bundle arguments)
        {
            if (action == AccessibilityNodeInfoCompat.ActionClick)
            {
                CalendarCell cell = this.DateCells.Get(virtualViewId) as CalendarCell;
                if (cell == null)
                {
                    throw new IllegalArgumentException("Invalid virtualViewId");
                }

                if (cell is CalendarDayCell) {
                    List<Long> selectedDates = (List<Long>)this.calendarView.SelectedDates;
                    Long cellDate = (Long)cell.Date;
                    if (selectedDates.Contains(cellDate))
                    {
                        selectedDates.Remove(cellDate);
                    }
                    else
                    {
                        selectedDates.Add(cellDate);
                    }

                    this.calendarView.SelectedDates = selectedDates;
                    this.InvalidateVirtualView(virtualViewId);

                    this.SendEventForVirtualView(virtualViewId, (int)EventTypes.ViewClicked);
                    return true;
                }
            }
            return false;
        }
    }
}
```
