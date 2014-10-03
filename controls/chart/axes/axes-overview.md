---
title: Overview
position: 1
---
# Overview #

**RadCartesianChart** plots data points in a coordinate system defined by its two axes. Instead of having one axis type that does hundreds of things, we have a hierarchy of axes where each concrete axis type expose particular functionality.

![Axes Class Diagram](axes-class-diagram.png)

The predefined axis types are:

- [**NumericalAxis**]({% slug axes-numerical-axis  %})
- [**CategoricalAxis**]({% slug axes-categorical-axis %})
- [**DateTimeAxisContinuous**]({% slug axes-date-time-continuous-axis %})

## Common Axis Features ##


The common axis functionality is encapsulated by the abstract Axis class and is responsible for displaying ticks that simply mark values on the axis at fixed positions. The axis also displays labels that are used to provide a visualization of the values at some or all of the ticks. The default visualization of the labels is text and the default visuals created internally are text blocks. Here is a list with all the properties exposed by the base axis type.
### Labels ###
You can customize the labels orientation and style with the following properties:

- **LabelFitMode**: Specifies how labels that exceed axis bounding rectangle should be positioned. These are the available fit options:
	- **MultiLine**: Arranges axis labels on multiple lines with each label on a different line than its neighbor labels.
	- **Rotate**: Arranges the axis labels so that they are rotated some degrees around their top left corner.
- **LabelFontSize**: Specifies the font size of the labels.
- **LabelTextColor**: Specifies the color of the labels.
- **LabelFormat**: Allows axis labels to be formatted in a custom way. The String.Format method is internally used, so the value should follow the syntax, expected by the String.Format method.

Examlpe:
 
	<telerikChart:CategoricalAxis LabelFitMode="Rotate" LabelFontSize="25" LabelTextColor="#FFCC88CC"/>

### Styling the axis line and ticks  ###
You can customize the appearance of the axis line and ticks with the following properties:

- **MajorTickBackgroundColor**: Specifies the major ticks color.
- **MajorTickThickness**: Specifies the thickness of the major ticks.
- **LineColor**: Specifies the color of the axis line.
- **LineDashArray**: Specifies the array used to create a dash line that will be applied to the axis line.

Example:

	<telerikChart:NumericalAxis MajorTickBackgroundColor="#FFCC88CC" MajorTickThickness="5" LineColor="#FFCC88CC"/>

### Location ###
You can specify the location of the axis:

- **HorizontalLocation**: Specifies the horizontal location of the axis. Applicable for vertical axes. 
- **VerticalLocation**: Specifies the vertical location of the axis. Applicable for horizontal axes.

Example:

	<telerikChart:CategoricalAxis VerticalLocation="Top"/>