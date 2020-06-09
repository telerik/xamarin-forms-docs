---
title: Commands
page_title: Xamarin Map Documentation | Map Commands
description: Check our &quot;Commands&quot; documentation article for Telerik Map for Xamarin control.
position: 8
slug: map-commands
---

# Commands

RadMap provides the following commands of type ICommand:

* **ZoomInCommand**
* **ZoomOutCommand**

You could manually call these commands, for example on button click action, to update the zoom level of the shapes displayed in RadMap.

Following is a quick example on how the commands of the Map control can be used.

Let's have the following Map definition:

<snippet id='map-zoom-level-xaml' />

where the Source of the MapShapeReader is defined like this:

<snippet id='map-interactionmode-settintsource' />

Lastly, use the following snippet to add two buttons that will execute the Map commands:

```XAML
<Button Text="Zoom In" Command="{Binding Source={x:Reference map}, Path=ZoomInCommand}"/>
<Button Text="Zoom Out" Command="{Binding Source={x:Reference map}, Path=ZoomOutCommand}"/>
```

## See Also

- [Key Features]({% slug pdfviewer-key-features%})

