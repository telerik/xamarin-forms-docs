---
title: Events
page_title: Events
position: 6
slug: slideview-events
---

# Events

**RadSlideView** provides the following events.

- **SlidingToIndex**: The event occurs when the current selection is changing (executing a slide). Its event arguments are of type **SlideViewSlidingToIndexEventArgs** and expose the new index and a cancelation option via the **Index** and **Cancel** properties. Setting the Cancel property of the event arguments to True will stop the sliding action.

- **SlidedToIndex**: The event occurs when the current selection is changed (a slide is executed). Its event arguments are of type **SlideViewSlidedToIndexEventArgs** and expose the new index via the **Index** property. 

### See Also
- [Getting Started]({% slug slideview-getting-started %})
