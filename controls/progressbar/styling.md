---
title: Styling
page_title: Xamarin ProgressBar Documentation | Styling
description: Check our &quot;Styling&quot; documentation article for Telerik ProgressBar for Xamarin control.
position: 10
slug: progressbar-styling
---

# Styling

The ProgressBar control for Xamarin provides styling options for customizing its appearance.

The control supports the following styling properties:

* `TrackFill`(`Brush`): Specifies the fill of the track.

<snippet id='progressbar-styling-trackfill'/>

![ProgressBar Getting Started Example](images/progressbar-getting-started.png)

* `ProgressFill`(`Brush`): Specifies the fill of the progress indicator.

<snippet id='progressbar-styling-progressfill'/>

![ProgressBar Getting Started Example](images/progressbar-getting-started.png)

* `IndeterminateFill`(`Brush`): Defines the fill of the indeterminate indicator.

<snippet id='progressbar-styling-indeterminatefill'/>

![ProgressBar Getting Started Example](images/progressbar-getting-started.png)

The following Style properties are related to the text displayed in the ProgressBar:

* `TextColor`(`Color`): Defines the color of the Text which displays the progress value.
* `AlternateTextColor`(`Color`)
* `FontSize`(`double`): Defines the font size of the Text which displays the progress value

<snippet id='progressbar-styling-text'/>

![ProgressBar Getting Started Example](images/progressbar-getting-started.png)

Style the ProgressBar Chunks using the `SeparatorFill`(`Brush`) property.

<snippet id='progressbar-styling-separator-chunks'/>

![ProgressBar Getting Started Example](images/progressbar-getting-started.png)

>important A sample Styling example can be found in the ProgressBar/Styling folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Configuration]({%slug progressbar-configuration%})
- [Indeterminate Mode]({%slug progressbar-indeterminate-mode%})
- [Events]({%slug progressbar-events%})
