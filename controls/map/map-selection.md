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
* **SelectedShapes** (of type *ObservableCollection<IShape>*): Reads the collection with the currently selected shapes. When the selection is single only one shape could be selected – thus the collection will have count = 1. 

<snippet id='map-setview-code' />

[screenshot]

>important A sample Key Features example can be found in the Accordion/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [AccordionItem Control]({% slug accordion-accordionitem%})
