---
title: Annotations
page_title: Xamarin Chart Documentation | Annotations
description: Check our &quot;Annotations&quot; documentation article for Telerik Chart for Xamarin control.
position: 7
slug: chart-annotations
---

# Annotations 

## Overview

**Annotations** are visual elements used to highlight certain areas on the plot. They can be used as comments or as markers for specific values on the plot. You can practically use any visual element as a template for the annotation.

RadChart provides support for the following types of annotations:

- **Cartesian GridLineAnnotations**: this annotation is visually represented by straight lines across the chart that marks a specific value on the associated Cartesian axis.
- **Cartesian PlotBandAnnotations**: this annotation is visually represented by a band across the chart that marks a specific range on the associated Cartesian axis.

## CartesianGridLineAnnotation

The **CartesianGridLineAnnotation** represents a vertical or horizontal line that crosses the entire plot area.

### Features

- **Axis** : the CartesianGridLineAnnotation should be associated with horizontal or vertical cartesian axis explicitly.
- **Value** : the place on the associated axis where a line crosses it.

> Note: When the associated axis is numerical - a numeric value is expected, and when it is a CategoricalAxis - a category is expected. 

### Example

Here is an example of how the CartesianGridLineAnnotation works:

First, create the needed business objects:

<snippet id='categorical-data-model'/>

Then create a ViewModel:

<snippet id='chart-annotations-grid-line-view-model'/>

Finally, use the following snippet to declare the RadChart in XAML or in C#:

<snippet id='chart-annotations-gridline-xaml'/>
<snippet id='chart-annotations-gridline-csharp'/>

Here is how the CartesianGridLineAnnotation looks:

![Annotations](images/chart-annotations-grid-line-examples.png)

>important A sample CartesianGridLineAnnotation example can be found in the Chart/Annotations folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## CartesianPlotBandAnnotation

The **CartesianPlotBandAnnotation** represents a vertical or horizontal area that crosses the entire plot area.  

### Features

- **Axis** : the cartesian plotband annotation needs to be associated with horizontal or vertical axis explicitly.
- **From** : the starting value for the plotband.
- **To** : the ending value for the plotband.
- **Fill** :  Gets or sets the Fill. 

### Example

Here is an example of how the CartesianPlotBandAnnotation works:

First, create the needed business objects:

<snippet id='categorical-data-model'/>

Then create a ViewModel:

<snippet id='chart-annotations-plot-band-view-model'/>

Finally, use the following snippet to declare the RadChart control in XAML or in C#:

<snippet id='chart-annotations-plotband-xaml'/>
<snippet id='chart-annotations-plotband-csharp'/>

Here is how the CartesianPlotBandAnnotation looks:

![Annotations](images/chart-annotations-plot-band-example.png)

>important A sample CartesianPlotBandAnnotation example can be found in the Chart/Annotations folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [CartesianChart Grid]({%slug cartesian-chart-grid%})
- [Chart Legend]({%slug chart-features-legend%})
- [Chart Null Values]({%slug chart-nullvalues%})
