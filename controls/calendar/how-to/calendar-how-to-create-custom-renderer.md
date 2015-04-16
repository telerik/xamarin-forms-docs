---
title: How To Create Custom Renderer
page_title: How To Create Custom Renderer
position: 6
slug: calendar-how-to-create-custom-renderer
---

# Custom Calendar Renderer #
Sometimes, you might find that certain feature is available in the native control on a given platform, but is not exposed in Xamarin Forms. This is when you would need to create a custom renderer. This will allow you to access the native control and configure it as per your needs.

## Example ##

Currently, Xamarin Forms do not expose the ability to choose specific color for an event. This can be easily achieved by creating a custom renderer for RadCalendar.  Here is an example for Android. The custom renderer can inherit from *Telerik.XamarinForms.InputRenderer.Android.CalendarRenderer*. This way you can take advantage of all the features that are already in there and only add the coloring for events. Override the OnElementChanged method and set the color for the event:

	public class CustomCalendarRenderer : CalendarRenderer
	{
		protected override void OnElementChanged(ElementChangedEventArgs<RadCalendar> e)
		{
			base.OnElementChanged(e);
			if (this.Control.EventAdapter.Events.Count > 0)
				this.Control.EventAdapter.Events[0].EventColor = Color.Yellow;
		}
	}

