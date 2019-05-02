---
title: Selection
page_title: Map Selection
position: 6
slug: map-selection
---

# Selection

RadMap control exposes selection feature. It allows users to select one or many shapes out of the source applied by each ShapefileLayer. This feature provides both visual and programmatic feedback for the actions of the user. 

The following members of the [ShapefileLayer]({% slug map-layers-shapefilelayer%}) class are related to the selection: 

* **SelectionMode**: Enum property which indicates what will be the selection. It could receive the following values:
	* None;
	* Single;
	* Multiple.

* **SelectedShape** (of type *IShape*): Defines the currently selected shape instance. When multiple selection is enabled, this value is set to the first selected shape. 
* **SelectedShapes** (of type *ObservableCollection&lt;IShape&gt;*): Reads the collection with the currently selected shapes. When the selection is single only one shape could be selected – thus the collection will have count = 1. 

The next snippet shows how **SelectionMode** is applied:

>note The snippets below emphasize on concrete features and do not include the complete setup of the Map component. For the full implementation with setting the Map ShapefileLayer check [Getting Started]({% slug accordion-accordionitem%}#3-adding-radmap-control) topic.

<snippet id='map-selection-mode-xaml' />

[screenshot]

The snippet below demonstrates how you could select a certain shape programmatically. In the example the used ESRI file contains the world map, so the shape that is selected is a country. The example uses the **Shapes** property of the Map to traverse through all the available shapes.

Let's select/unselect "Australia", for example, on clicking buttons:

<snippet id='map-selectshapes-xaml' />

And here are the event handlers:

<snippet id='map-selection-runtime-code' />

>important A sample Programmatic Selection example can be found in the Map/Selection folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [ShapefileLayer]({% slug map-layers-shapefilelayer%})

