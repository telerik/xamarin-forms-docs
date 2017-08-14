---
title: Gestures and Transitions
page_title: RadCalendarView Gestures and Transitions  | Telerik UI for Xamarin.Android Documentation
description: A page which contains information about gestures handled by RadCalendarView for Android. The article also explains how to animate the changes in the display date and display mode.
slug: calendar-gesturestransitions
tags: radcalendarview, calendar, transitions, gestures
position: 7
publish: true
---

# RadCalendarView: Gestures and Transitions

**RadCalendarView** provides different types of transitions which are played when certain gestures are executed by the user.
These gestures can change the display date and display mode of the control. The other way to play transitions are by using the corresponding methods which force animation while changing the display date or display mode.

## Handled gestures

**RadCalendarView** has an intuitive gesture handling mechanism, which allows the user to easily advance to next or previous months (or weeks, or years, depending on the display mode) and change the display mode to `Week` or `Year`.
If you want to change the list of handled gestures, you can use the calendar's **gestureManager()**. This manager allows you to disable the handling of some gestures and enabling others. Here's a list of gestures along with the
manager's methods that you can use to get or set whether these gestures are enabled:
 
 * pinch open to change display mode: when the user pinches open (zooms in) while the display mode is `Year`, it is changed to `Month` &mdash; isUsingPinchOpenToChangeDisplayMode(); setPinchOpenToChangeDisplayMode(boolean) &mdash; by default is `true`
 * pinch close to change display mode: when the user pinches close (zooms out) while the display mode is `Month`, it is changed to `Year` &mdash; isUsingPinchCloseToChangeDisplayMode(); setPinchCloseToChangeDisplayMode(boolean) &mdash; by default is `true`

 * swipe up to change display mode: when the user swipes up from the bottom of the view while the display mode is `Month`, it is changed to `Week` &mdash; isUsingSwipeUpToChangeDisplayMode(); setSwipeUpToChangeDisplayMode(boolean) &mdash; by default is `true`
 * swipe down to change display mode: when the user swipes down while the display mode is `Week`, it is changed to `Month` &mdash; isUsingSwipeDownToChangeDisplayMode(); setSwipeDownToChangeDisplayMode(boolean) &mdash; by default is `true`

 * tap to change display mode: when the user taps on a month in the Year view, the display date is changed to a date from the tapped month and the display mode is changed to `Month` &mdash; isUsingTapToChangeDisplayMode(); setTapToChangeDisplayMode(boolean) &mdash; by default is `false`
 * double tap to change display mode: when the user double taps on a month in the Year view, the display date is changed to a date from the tapped month and the display mode is changed to `Month`, if the gesture is performed while the calendar is in Month view, it is changed to `Year` &mdash; isUsingDoubleTapToChangeDisplayMode(); setDoubleTapToChangeDisplayMode(boolean) &mdash; by default is `true`
 * drag to make range selection: when the user drags a range selection is performed following the user's finger. The scrolling will not be processed if the drag selection is active, but it is recommended that the scrolling is disabled manually as well, by setting it to `None`. &mdash; isUsingDragToMakeRangeSelection(); setUsingDragToMakeRangeSelection(boolean) &mdash; by default it is `false`

## Scrolling and scroll modes
The calendar is fully suited to be scrolled both horizontally and vertically. It has several different scroll modes giving the freedom of customizing the scroll experience to the customer's needs. The calendar has been optimized so that it follows the user's gestures without delay or 
unwanted memory performance issues.

The currently provided scroll modes are:

 * None - this simply disables the scrolling of the calendar and leaves the developer with the option to trigger the date changes programmatically. See the next section for more info on that.
 * Plain - in plain mode the calendar will simply follow the scroll gesture without any additional behaviour.
 * Sticky - the calendar will be following the gesture again, but will snap the current month after the gesture is done.
 * Free - in free mode the calendar will follow the user's gesture, but will allow flinging action as well.
 * Combo - this mode combines plain, where the gesture is followed, free, where flinging is handled and sticky, where the current fragment is being snapped when the gesture is over.
 * Overlap - in the overlap mode the calendar behaves as if the next and previous months are being dragged on top of the current one.
 * Stack - in the stack mode, the next dates will be dragged on top of the calendar and going back to previous dates will 'unstack' the current date from the calendar by bringing it down. This creates the feeling of a stack.
 
You can use the calendar's properties for setting the direction of the scrolling and the scrolling as follows:

* setting scrolling direction: the direction is determined by setting the setHorizontalScroll(boolean) method of the calendar. Passing `true` will cause the calendar to scroll horizontally while passing false will result in vertical scrolling &mdash; the default setting is `false` or vertical scrolling.
* setting the scroll mode: the scroll mode is easily set by using the calendar's setScrollMode(ScrollMode) and passing an enumeration value from the ScrollMode enumeration &mdash; the default scroll mode is set to `Sticky`.

> Please have in mind, that in horizontal scrolling the current date will always be snapped regardless of the scroll mode. Also when the calendar is in week display mode, the scrolling will always be horizontal regardless of the settings.
 
## Triggering the transitions programmatically

You can use methods provided by **RadCalendarView** to change the value of the display date or display mode and apply the corresponding transition. The method **changeDisplayMode(CalendarDisplayMode, boolean)** can be used
to change the display mode with transition between the modes. The first parameter is the display mode that needs to be set and the second parameter specifies whether the transition will be played. Here's an example of
a call which sets the display mode to `Year` with animation between the states:


```C#
	calendarView.ChangeDisplayMode(CalendarDisplayMode.Year, true);
```

Similarly you can use the methods **animateToNext(boolean)** and **animateToPrevious(boolean)** to change the display date with transition. The current value of the display mode will be used for determination of the new value
for the display date. For example, if the current display mode is `Year`, the new value for display date will be the old with one year added (if animateToNext is used) or subtracted (if animateToPrevious is used). The boolean
parameter allows you to determine the direction of the transition. If the provided value is `true`, the transition will be horizontal and otherwise the transition will be vertical.
