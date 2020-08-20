---
title: Events
page_title: Xamarin SlideView Documentation | Events
description: Check our &quot;Events&quot; documentation article for Telerik SlideView for Xamarin control.
position: 6
slug: slideview-events
---

# Events

**RadSlideView** provides the following events:

* **SlidingToIndex**: Occurs when the current selection is changing (executing a slide). The SlidingToIndex event handler receives two parameters:
	* The sender argument which is of type *RadSlideViewPresenter* (it contains all the properties of the SlideView itself);
	* А **SlideViewSlidingToIndexEventArgs** object which exposes the new index and a cancellation option via the **Index** and **Cancel** properties. Setting the Cancel property of the event arguments to True will stop the sliding action.

* **SlidedToIndex**: Occurs when the current selection is changed (a slide is executed). The SlidingToIndex event handler receives two parameters:
	* The sender argument which is of type *RadSlideViewPresenter*;
	* А **SlideViewSlidedToIndexEventArgs** object which exposes the new index via the **Index** property. 

## Example

Here is a quick example how to handle **SlidingToIndex** event of RadSlideView.

First, add the SlideView definition:

<snippet id='slideview-events-xaml' />

And then, the event handler (in the sample it just displays a message):

<snippet id='slideview-events-code' />

### See Also
- [Getting Started]({% slug slideview-getting-started %})
