---
title: Key Features
page_title: Key Features
position: 2
slug: map-key-features
---

# Key Features

The purpose of this help article is to show you the key features of the **RadMap** control. 

## Interaction Modes

RadMap provides pan and zoom functionality that will help you interact with the view and inspect your data. The Map control handles the gestures drag, pinch open and pinch close which respectively cause panning, zooming in and zooming out of the associated plot area.

You could configure which gesture manipulations the user can do with the map through the enum **InteractionMode** property. InteractionMode can receive the following values:

* None: No interaction is allowed;
* Pan; 
* Zoom;
* PanAndZoom (default value).

## Zoom Level Support

RadMap exposes properties for applying min and max zoom values.

* MaxZoomLevel(double): Defines the maximum magnification factor at which content could be maximized. The default value is 20.0
* MinZoomLevel(double): Defines the minimum magnification factor at which content could be minimized. The default value is 1.0

You can check the current magnification through the readonly **ZoomLevel** property.

## Layers



## Hardware Acceleration

The snippet below shows how to set the AnimationDuration, AnimationEasing and Spacing properties:

<snippet id='accordion-key-features-xaml'/>

>important A sample Key Features example can be found in the Accordion/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [AccordionItem Control]({% slug accordion-accordionitem%})
