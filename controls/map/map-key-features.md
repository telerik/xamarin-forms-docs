---
title: Key Features
page_title: Xamarin Map Documentation | Key Features
description: Check our &quot;Key Features&quot; documentation article for Telerik Map for Xamarin control.
position: 2
slug: map-key-features
---

# Key Features

The purpose of this help article is to show you the key features of the **RadMap** control. 

## Interaction Modes

RadMap provides pan and zoom functionality that will help you interact with the view and inspect your data. The Map control handles the gestures drag, pinch-open and pinch-close which respectively cause panning, zooming-in and zooming-out of the associated plot area.

You could configure which gesture manipulations the user can do with the map through the enum **InteractionMode** property. InteractionMode can receive the following values:

* None: No interaction is allowed;
* Pan; 
* Zoom;
* PanAndZoom (default value).

Here is a quick snippet how **InteractionMode** could be applied:

<snippet id='map-interaction-mode-xaml' />

where the Source of the MapShapeReader should be defined as well:

<snippet id='map-interactionmode-settintsource' />

>note In the example the .shp file is loaded as an EmbeddedResource, there are other options as well, please check them in the [ShapefileLayer]({% slug map-layers-shapefilelayer%}) topic.

## Zoom Level Support

RadMap exposes properties for applying min and max zoom values.

* MaxZoomLevel(double): Defines the maximum magnification factor at which content could be maximized. The default value is 20.0
* MinZoomLevel(double): Defines the minimum magnification factor at which content could be minimized. The default value is 1.0

You can check the current magnification through the readonly **ZoomLevel** property.

<snippet id='map-zoom-level-xaml' />

In addition, you can use the method below to set the provided zoom value as the current zoom level of the map:

* void ZoomToLevel(double zoomLevel);

## Layers

RadMap can display rich spatial data from ESRI shapefiles. Each shapefile should be loaded and configured through a ShapefileLayer instance added to the *Layers* collection of the control. By adding more ShapefileLayers you can visualize different types of elements on the same map.  For detailed information on the matter go to [Layers Overview]({% slug map-layers-overview %}) topic.

## Setting the View

If you would like to show a specific area from the map, you can use **SetView** method as described below:

* SetView(LocationRect locationRect) – Sets the provided location as the current view of the map. 

LocationRect class is a special type from the *Telerik.XamarinForms.ShapefileReader* namespace, which describes a rectangle region through the locations of the northwest and southeast points.  

>tip For more details on how points are positioned in the geographic coordinate system, check [Layers Overview]({%slug map-layers-overview%}) topic. 

Here is an example how you could utilize SetView method (in the example the used latitude and longitude values are chosen to form a region around Italy):

<snippet id='map-setview-code' />

![Map SetView](images/map_getbestview.png)

## Hardware Acceleration

RadMap is rendered via the SkiaSharp library and uses by default the hardware-accelerated [SKGLView](https://docs.microsoft.com/en-us/dotnet/api/skiasharp.views.forms.skglview?view=skiasharp-views-forms) class for its drawing. 
You could easily replace it with the [SKCanvasView](https://docs.microsoft.com/en-us/dotnet/api/skiasharp.views.forms.skcanvasview?view=skiasharp-views-forms) by setting **EnableHardwareAcceleration** to False.

>important A sample Key Features example can be found in the Accordion/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Layers]({% slug map-layers-overview%})
- [Selection]({% slug map-selection%})
- [Styling]({% slug map-styling-shapesstyles %})
