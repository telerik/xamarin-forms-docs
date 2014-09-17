---
title: Overview
---
# Overview #

**RadCartesianChart** plots data points in a coordinate system defined by its two axes. Instead of having one axis type that does hundreds of things, we have a hierarchy of axes where each concrete axis type expose particular functionality.

![Axes Class Diagram]()

The predefined axis types are:

- NumericalAxis
- CategoricalAxis
- DateTimeAxisContinuous

## Common Axis Features ##


The common axis functionality is encapsulated by the abstract Axis class and is responsible for displaying ticks that simply mark values on the axis at fixed positions. The axis also displays labels that are used to provide a visualization of the values at some or all of the ticks. The default visualization of the labels is text and the default visuals created internally are text blocks. Here is a list with all the properties exposed by the base axis type.
### Labels ###
You can customize the labels distribution and orientation:

	<telerikChart:CategoricalAxis LabelFitMode="Rotate" LabelRotationAngle="30" LabelInterval="2"/>

You can style the labels:

	<telerikChart:CategoricalAxis>
	  <telerikChart:CategoricalAxis.LabelStyle>
	    <telerikChart:LabelStyle FontSize="10" TextColor="Red"/>
	  </telerikChart:CategoricalAxis.LabelStyle>
	</telerikChart:CategoricalAxis>


### Styling the axis line and ticks  ###
You can customize the appearance of the axis line and ticks:

	<telerikChart:NumericalAxis LineColor="Green">
	  <telerikChart:CategoricalAxis.MajorTickStyle>
	    <telerikChart:MajorTickStyle BackgroundColor="Green" Thickness="3"/>
	  </telerikChart:CategoricalAxis.MajorTickStyle>
	</telerikChart:NumericalAxis>

### Location ###
**HorizontalLocation** and **VerticalLocation** properties:

	<telerikChart:NumericalAxis LineColor="Green" VerticalLocation="Top"/>