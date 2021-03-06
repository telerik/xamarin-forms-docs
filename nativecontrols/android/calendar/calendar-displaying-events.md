---
title: Displaying events
page_title: RadCalendarView for Xamarin Android Displaying Events  | Telerik UI for Xamarin.Android Documentation
description: A page which explains how to display the events in RadCalendarView for Android.
slug: calendar-displaying-events
tags: radcalendarview, calendar, events, displaying
position: 5
publish: true
---

# CalendarView for Xamarin.Android: Displaying events in the calendar

**RadCalendarView** can be used to display the events for a single cell, that is currently selected. There are currently two ways for displaying the events, which are being set by using a single property of the calendar.

## Inline events

In this mode the calendar will crack open below the selected cell and will display the events as a scrollable list, which will fill the entire width of the calendar. The height will be determined by the height and the number of events, that need to be displayed. It will however be limited to the height of 4 calendar rows.

```C#
calendarView.EventsDisplayMode = EventsDisplayMode.Inline;
```

and the result:

![TelerikUI-Calendar-Events](images/inline-events.png "This is an example of RadCalendarView displaying inline events.")

## Popup events

In this mode the events will be displayed as a popup window, which will load at most four of the cell's events inside a list view and will take place at the lower part of the cell's location.

```C#
calendarView.EventsDisplayMode = EventsDisplayMode.Popup;
```

and the result:

![TelerikUI-Calendar-Events](images/popup-events.png "This is an example of RadCalendarView displaying popup events.")

> Please note that both modes are only available when using **Single** selection mode. An exception will be thrown otherwise.

In both modes it is valid that all scrolling will be disabled and only selections will be permitted. Once the events are no longer displayed the calendar will restore its original behaviour.
Switching to year display mode is possible, but the events will be closed first, and then the switching will perform.

### Displaying Events Programmatically

**EventsManager** class exposes the following methods for 

#### programmatically show or hide events for a specific date/cell by using the following two methods:

- `ToggleEventsVisibilityForDate(long date)`
- `ToggleEventsVisibilityForCell(CalendarCell cell)`

### additionally check if events are shown for a specific date/cell by using the following methods:

- `EventsForDateVisible(long date)`
- `EventsForCellVisible(CalendarCell cell)`

## Customizing the display of the events for Popup and Inline Modes

Customization is being done using the calendar Adapter for both modes. The properties for the two modes are different and are as follows:

* `PopupEventsWindowBackgroundColor` - the background color for the events popup window;
* `InlineEventsBackgroundColor` - the background color for the inline events;
* `PopupEventTitleTextSize` - the text size for the event title in popup mode;
* `PopupEventTimeTextSize` - the text size for the event time in popup mode;
* `InlineEventTitleTextSize` - the text size for the event title in inline mode;
* `InlineEventTimeStartTextSize` - the text size for the event start time in inline mode;
* `InlineEventTimeEndTextSize` - the text size for the event end time in inline mode;
* `InlineEventTimeStartTextColor` - the text color for the event start time in inline mode;
* `InlineEventTimeEndTextColor` - the text color for the event end time in inline mode;

### Example:

```C#
calendarView.Adapter.PopupEventsWindowBackgroundColor = Color.Black;
calendarView.Adapter.PopupEventTitleTextSize = 22.0F;
calendarView.Adapter.PopupEventTimeTextSize = 14.0F;
```

If this is not enough, you can further customize the events by setting a new adapter which extends ArrayAdapter for the inline events. Here's an example which shows how to use a single view to show both start and end time of an event:

```C#
public class MyInlineEventsAdapter : ArrayAdapter
{
    private LayoutInflater layoutInflater;

    public MyInlineEventsAdapter(Context context)
        : base(context, Resource.Layout.custom_inline_event_layout)
    {
        this.layoutInflater = LayoutInflater.From(context);
    }

    public override View GetView(int position, View convertView, ViewGroup parent)
    {
        View view = convertView;
        ViewHolder holder;

        if (view == null)
        {
            view = layoutInflater.Inflate(
                Resource.Layout.custom_inline_event_layout, parent, false);

            holder = new ViewHolder();
            holder.eventTitle = (TextView)view.FindViewById(Resource.Id.event_title);
            holder.eventTime = (TextView)view.FindViewById(Resource.Id.event_time);

            view.Tag = holder;
        }
        else {
            holder = (ViewHolder)view.Tag;
        }

        EventsManager.EventInfo eventInfo = (EventsManager.EventInfo)GetItem(position);
        Event event1 = eventInfo.OriginalEvent();
        holder.eventTitle.SetTextColor(new Color(event1.EventColor));
        holder.eventTitle.Text = event1.Title;
        String eventTime = String.Format("{0} - {1}", 
                                         eventInfo.StartTimeFormatted(), eventInfo.EndTimeFormatted());
        holder.eventTime.Text = eventTime;

        return view;
    }

    class ViewHolder : Java.Lang.Object
    {
        public TextView eventTitle;
        public TextView eventTime;
    }
}
```

This example is using a resource file with the following content:

```XML
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:orientation="horizontal"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:padding="12dp">

    <TextView
        android:id="@+id/event_time"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:minEms="4"
        android:textSize="12sp"
        android:padding="12dp"/>

    <TextView
        android:id="@+id/event_title"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_marginStart="12dp"
        android:layout_marginLeft="12dp"
        android:layout_marginEnd="12dp"
        android:layout_marginRight="12dp"
        android:textSize="18sp" />

</LinearLayout>
```

You can use an instance of the new adapter and set it to your calendar's event manager:


```C#
MyInlineEventsAdapter adapter = new MyInlineEventsAdapter(Context);
calendarView.EventsManager().Adapter = adapter;
```

> Please note that the event manager exists only when the calendar's EventDisplayMode is Inline or Popup.  

# Handling event clicks

If you need to display additional information about events, you can listen for item clicks. Here's an example to show a toast that an event is clicked:

```C#
calendarView.EventsManager ().SetOnItemClickListener (new MyClickListener());

public class MyClickListener : Java.Lang.Object, AdapterView.IOnItemClickListener {
	public void OnItemClick (AdapterView parent, View view, int position, long id)
	{
		Toast.MakeText (parent.Context, (((ArrayAdapter)((ListView)parent).Adapter)).
			GetItem(position).ToString(), ToastLength.Short).Show ();
	}
}
```