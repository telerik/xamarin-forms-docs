---
title: Commands
page_title: Xamarin Map Documentation | Map Commands
description: Check our &quot;Commands&quot; documentation article for Telerik Map for Xamarin control.
position: 8
slug: map-commands
---

# Commands

RadMap provides the following commands of type `ICommand` which handle the zoom level of the visualized shapes:

* **ZoomInCommand**

* **ZoomOutCommand**

You can manually call these commands, for example on button click action, to zoom-in or zoom-out respectively, the shapes displayed in RadMap.

Following is a quick example on how the commands of the Map control can be called from external UI:

Let's have the following Map definition:

<snippet id='map-zoom-level-xaml' />

where the Source of the MapShapeReader is defined like this:

<snippet id='map-interactionmode-settintsource' />

Lastly, add two buttons that will execute the Map commands - their Command property is bound to the corresponding Zoom command of the Map instance:

```XAML
<Button Text="Zoom In" Command="{Binding Source={x:Reference map}, Path=ZoomInCommand}"/>
<Button Text="Zoom Out" Command="{Binding Source={x:Reference map}, Path=ZoomOutCommand}"/>
```

## See Also

- [Key Features]({% slug map-key-features%})