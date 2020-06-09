---
title: Labels Styling
page_title: Xamarin Map Documentation | Labels Styling
description: Check our &quot;Labels Styling&quot; documentation article for Telerik Map for Xamarin control.
position: 0
slug: map-styling-labelstyles
---

# Label Styling

The **ShapefileLayer** has a **ShapeLabelStyle** property that is of *MapShapeLabelStyle* type and defines the style of the labels.

MapShapeLabelStyle provides the following properties you could use to customize the way labels on the map will look:

* TextColor
* FontSize
* FontFamily
* FontAttributes

The snippet below shows how ShapeLabelStyle property can be applied:

<snippet id='map-styling-shapelabelstyle' />

where the **Source** and the **DataSource** of the MapShapeReader should be set to a .shp and .dbf files, respectively:

<snippet id='map-labels-settintsource' />

Here is the result:

![Map Labels Styling](../images/map_styling_labelsstyle.png)

>important A sample Labels Styling example can be found in the Map/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [ShapefileLayer]({% slug map-layers-shapefilelayer%})
- [Styling]({% slug map-styling-shapesstyles %})
