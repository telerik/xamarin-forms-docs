---
title: Indeterminate Mode
page_title: Xamarin ProgressBar Documentation | Indeterminate Mode
description: Check our &quot;Indeterminate Mode&quot; documentation article for Telerik ProgressBar for Xamarin control.
position: 4
slug: progressbar-indeterminate-mode
---

# Indeterminate Mode

Telerik ProgressBar for Xamarin supports two modes of operation:

* **Determinate** - aimed at scenarios in which the progress of an operation can be precisely measured.

* **Indeterminate** - aimed at scenarios in which there is no way of determining the current progress of an operation.

Using the `IsIndeterminate` property(of type `bool`) you can specify whether the control is in Indeterminate mode or not. The default value is `false`.

![ProgressBar Indeterminate support](images/progressbar-indeterminate-mode.gif)

**Example with Indeterminate mode**

The snippet below shows a simple `RadLinearProgressBar` definition with `IsIndeterminate` property set to `True`.

<snippet id='progressbar-indeterminate-mode'/>

In addition to this, you need to add the following namespace:

<snippet id='xmlns-telerikprimitives'/>

>important A sample Indeterminate Mode example can be found in the ProgressBar/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Configuration]({%slug progressbar-configuration%})
- [Animations]({%slug progressbar-animations%})
- [Events]({%slug progressbar-events%})
- [Styling]({%slug progressbar-styling%})