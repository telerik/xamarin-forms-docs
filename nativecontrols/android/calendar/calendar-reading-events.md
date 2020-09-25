---
title: Reading events
page_title: RadCalendarView Reading Events  | Telerik UI for Xamarin.Android Documentation
description: A page which explains how to integrate the reading of events in RadCalendarView for Android.
slug: calendar-reading-events
tags: radcalendarview, calendar, events, reading
position: 5
publish: true
---

# CalendarView for Xamarin.Android: Reading events from other calendars

**RadCalendarView** can be set up to read and display the events from other calendars on the device. The process is managed by the **EventReadAdapter** which is responsible for connecting to the calendar content provider and reading the requested events.
There is no need for the developer to bother using any SQL queries since the default scenarios are provided out of the box. It is however possible for the queries to be fully customized as needed.

## Setting the read adapter

The read adapter is rather easy to be set in the default scenario. All that has to be done is to set an instance of the adapter to the calendar and to trigger the reading of events like this:

```C#
EventReadAdapter eventAdapter = new EventReadAdapter (calendarView);
calendarView.EventAdapter = eventAdapter;
eventAdapter.ReadEventsAsync();
```

> Please note that since API 23, you need to ensure that your app has the proper permission before attempting to read events. In other words, before calling the **ReadEventsAsync** method, ensure that you have
READ_CALENDAR permission as shown <a href="http://developer.android.com/training/permissions/requesting.html" target="_blank">here</a>.

This will get the events from the calendar with id 1, or the first calendar on the device. This will not be always the desired result, since the first calendar might not be the one that the developer needs.

## Setting the query options

The events are being collected by the read adapter using queries. By changing the queries the developer can determine the set of events, that will be red and displayed in the calendar. There is a set of basic queries,
that will cover most scenarios. Here is an example for getting the events from today to a week from today for the first three calendars on the device:


```C#
EventQueryToken token = EventQueryToken.GetCalendarsById(new String[]{"1", "2", "3"});
Calendar calendar = Calendar.Instance;
long start = calendar.TimeInMillis;
calendar.Add(CalendarField.Date, 7);
long end = calendar.TimeInMillis;
token.SetRange(start, end);

eventAdapter.EventsQueryToken = token;
```

Here is how to get all calendars belonging to a specific user using the provided helper methods:

```C#
public override View OnCreateView (LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
{
	RadCalendarView calendarView = new RadCalendarView(Activity);
	this.eventAdapter = new EventReadAdapter(calendarView);
	calendarView.EventAdapter = eventAdapter;

	EventReadAdapter.GetCurrentUserAsync(Activity, new CustomAsyncCallback (this.eventAdapter));

	return calendarView;
}

private class CustomAsyncCallback : Java.Lang.Object, IAsyncCallback
{
	EventReadAdapter adapter;

	public CustomAsyncCallback(EventReadAdapter adapter)
	{
		this.adapter = adapter;
	}

	public void OnResult(Java.Lang.Object result)
	{
		EventQueryToken token = EventQueryToken.GetCalendarsByOwner (result.ToString());
		this.adapter.EventsQueryToken = token;
		this.adapter.ReadEventsAsync();
	}
}
```

> Please note that since API 23, you need to ensure that your app has the proper permission before attempting to read events. In other words, before calling the **GetCurrentUserAsync** method, ensure that you have
GET_ACCOUNTS permission as shown <a href="http://developer.android.com/training/permissions/requesting.html" target="_blank">here</a>.

However since there is no standard on the order or the owners of calendars there are some scenarios where the developer must decide what to do with the available calendars manually. There are devices of which 
the first calendar (with id of 1) is the Outlook calendar and others where there is only one user, which doesn't own the calendar of the device, but the owner is rather something like "Phone".

In these cases there can be a more controlled selection of events as presented in this example:

```C#
EventReadAdapter eventAdapter;

public override View OnCreateView (LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
{
	RadCalendarView calendarView = new RadCalendarView(Activity);

	this.eventAdapter = new EventReadAdapter(calendarView);
	calendarView.EventAdapter = eventAdapter;

	EventReadAdapter.GetAllCalendarsAsync(Activity, new CustomAsyncCallback(this.eventAdapter));

	return calendarView;
}

private class CustomAsyncCallback : Java.Lang.Object, IAsyncCallback {
	EventReadAdapter adapter;

	public CustomAsyncCallback(EventReadAdapter adapter)
	{
		this.adapter = adapter;
	}

	public void OnResult(Java.Lang.Object result)
	{
		List<String> calendarsFromResult = new List<String>();
		EventReadAdapter.CalendarInfo[] calendars = result.ToArray<EventReadAdapter.CalendarInfo>();

		for (int i = 0; i < calendars.Length; i++) {
			if (true) // add custom logic here
			{
				calendarsFromResult.Add(calendars[i].Id);
			}
		}

		String[] selectedCalendars = calendarsFromResult.ToArray();

		EventQueryToken token = EventQueryToken.GetCalendarsById(selectedCalendars);
		this.adapter.EventsQueryToken = token;
		this.adapter.ReadEventsAsync();
	}
}
```

In any case the events are being red after the method for asynchronous reading is being invoked. This will automatically refresh the calendar once the events are loaded.

> Please note that you must set everything before calling the method for reading the events asynchronously.

## Recurring events

The recurring events are also available for reading and displaying in the **RadCalendarView**, however the rules are not complete and will be updated with the following releases of the calendar. The recurring events can be 
stopped or enabled using the setReadingRecurringEvents(boolean) method of the adapter. The functionality can be easily extended by providing manual implementation over the existing one like this:

```C#
public class CustomEventReadAdapter : EventReadAdapter
{
	public CustomEventReadAdapter(RadCalendarView owner) : base (owner){}

	protected override bool EventShouldRecur (RecurringEvent recurringEvent, long date)
	{
		// Add custom logic here...
		return base.EventShouldRecur (recurringEvent, date);
	}
}
```

The **RecurringEvent** class is simply a data holder of all the tokens stored in a RRULE according to the iCalendar specification. It is used for judging the recurrence of the events red from the other calendars.
It holds all the fields needed to store the elements of the RRULE:

* **ByDayModifier(int day)** - returns the modifier if such exists for the passed day like in -1SA, where SA is the day and -1 is the modifier.
* **int[] BySecond()** holds a collection of seconds for the BYSECOND token.
* **int[] ByMinute()** holds a collection of minutes for the BYMINUTE token.
* **int[] ByHour()** holds a collection of hours for the BYHOUR token.
* **int[] ByMonthDay()** holds a collection of month days for the BYMONTHDAY token.
* **int[] ByYearDay()** holds a collection of year days for the BYYEARDAY token.
* **int[] ByWeekNo()** holds a collection of week numbers for the BYWEEKNO token.
* **String Rule()** holds the whole RRULE in its original form.
* **boolean ByDay(int day)** checks if the passed day is present in the BYDAY token.
* **boolean ByMonth(int month)** checks if the passed month is present in the BYMONTH token.
* **long RepeatUntilDate()** holds the date until the event can repeat according to the UNTIL token.
* **int Count()** holds the count according to the COUNT token.
* **int WeekStartDay()** holds the week start day according to the WKST token.
* **int Interval()** holds the interval according to the INTERVAL token.
* **boolean IsBySecond** states whether BYSECOND token is present.
* **boolean IsByMinute** states whether BYMINUTE token is present.
* **boolean IsByHour** states whether BYHOUR token is present.
* **boolean IsByMonthDay** states whether BYMONTHDAY token is present.
* **boolean IsByYearDay** states whether BYYEARDAY token is present.
* **boolean IsByWeekNo** states whether BYWEEKNO token is present.
* **boolean IsBySetPos** states whether BYSETPOS token is present.
* **boolean IsByDay** states whether BYDAY token is present.
* **boolean IsByMonth** states whether BYMONTH token is present.
* **boolean IsModified** states whether the BYDAY had a modified value (-1SA) or the BYSETPOS is present.
* **boolean IsByDayModified** states whether the BYDAY had a modified value (-1SA).
* **Frequency Frequency()** holds the frequency according to the FREQ token.
* **int[] BySetPos()** holds the positions according to the BYSETPOS token.