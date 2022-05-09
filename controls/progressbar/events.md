---
title: Events
page_title: Xamarin ProgressBar Documentation | Events
description: Check our &quot;Events&quot; documentation article for Telerik ProgressBar for Xamarin control.
position: 8
slug: progressbar-events
---

# Events

The ProgressBar for Xamarin exposes the following events:

* `ProgressChanged` event is raised when progress is changed. The `ProgressChanged` event handler receives two parameters:

	* A `ProgressChangedEventArgs` which has a `Progress`(`double`) property. Using this property you can get the current progress of the ProgressBar control.

* `ProgressCompleted` event is raised when the Value of the ProgressBar reaches the `Maximum` value.


**Example with ProgressChanged and ProgressCompleted events**

The snippet below shows a simple `RadLinearProgressBar` definition:

<snippet id='progressbar-events'/>

In addition to this, you need to add the following namespace:

<snippet id='xmlns-telerikprimitives'/>

`ProgressChanged` event in code behind. The Label text is updated with the current `Progress` value:

<snippet id='progressbar-progresschanged-event'/>

`ProgressCompleted` event in code behind. The Label text is updated with `Text = "Completed"` when the progress reaches the `Maximum` value:

<snippet id='progressbar-progresscompleted-event'/>

The final result when using the `ProgressChanged` and `ProgressCompleted` events:

>important A sample Events example can be found in the ProgressBar/Events folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Configuration]({%slug progressbar-configuration%})
- [Indeterminate Mode]({%slug progressbar-indeterminate-mode%})
- [Styling]({%slug progressbar-styling%})
