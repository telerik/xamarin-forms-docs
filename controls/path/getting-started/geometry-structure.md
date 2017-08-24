---
title: RadPathGeometry
page_title: RadPathGeometry
position: 1
slug: path-structure
---

# RadPathGeometry

In order to create a specific **RadPath**, you need to set a **RadPathGeometry** object to its **Geometry** property. The **RadPathGeometry** object exposes a **Figures** property which is a collection of **RadPathFigures**. 

## RadPathFigure

Each of the RadPathFigure objects is composed of one or several segments. These can be a **RadArcSegment** or a **RadLineSegment**. Adding several segments in combination with setting up the **StartPoint** of the **RadPathFigure** is enough for you to create the desired figure which should be added to the figures collection of the geometry.

### RadArcSegment

The **RadArcSegment** represents an elliptical arc between two points. It exposes the following properties:

* **Center**: The center point of the arc.
* **Size:** Gets or sets the x- and y-radius of the arc as a Size structure.
* **StartAngle**: The Angle from which the arc segment will start. 
* **SweepAngle**: The Value 

Here is a sample implementation of an **RadArcSegment** object:

<snippet id='path-geometry-assigning-custom-geometry'/>

### RadLineSegment

Creates a line between two points in a **RadPathFigure**. It exposes a single **Point** property which is used to get/set the end point of the segment.

<snippet id='path-geometry-line-segment'/>

## Example 

The following example shows how to create a **RadPathGeometry** object and add a line with curved edges to its Figures collection. 

First you should define the **RadPath** figure:

<snippet id='path-geometry-linepath-xaml'/>

And then you set its **Geometry** to have the following structure:

<snippet id='path-geometry-set-line-geometry'/>

## See Also






