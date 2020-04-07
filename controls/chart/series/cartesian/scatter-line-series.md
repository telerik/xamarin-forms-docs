---
title: ScatterLine Series
page_title: ScatterLine Series
description: Check our &quot;ScatterLine Series&quot; documentation article for Telerik Chart for Xamarin control.
slug: chart-series-scatter-line-series
position: 0
---
# ScatterLine Series

## Overview

The **ScatterLineSeries** are represented on the chart as data points connected with straight line segments. The **ScatterLineSeries** inherit from the **[ScatterPointSeries]()** class and also require both axes of the chart to be of type **NumericalAxis**.

## Features

**ScatterLineSeries** provide the following properties to change their style:

- **Stroke** (Color): changes the color used to draw lines.
- **StrokeThickness** (double): changes the width of the lines.

## Example

Here is an example how to create RadCartesianChart with ScatterLine Series:

First, create the needed business objects, for example:

<snippet id='numerical-data-model'/>

Then create a ViewModel:

<snippet id='chart-series-series-numerical-view-model'/>

Finally, use the following snippet to declare a RadCartesianChart with ScatterLine Series in XAML and in C#:

<snippet id='chart-series-scatterline-xaml'/>
<snippet id='chart-series-scatterline-csharp'/>

Where the **telerikChart** namespace is the following:

<snippet id='xmlns-telerikchart'/>
<snippet id='ns-telerikchart'/>

And here is the result:

![Basic ScatterLineSeries](images/cartesian-scatter-line-series-basic-example.png)

>important A sample ScatterLine Series example can be found in the Chart/Series folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

### Customization Example

Here we make some customization:
```C#
	var series = new ScatterLineSeries 
	{ 
		Stroke = new Color(0.6, 0.6, 0.9), 
		StrokeThickness = 5 
	};
```

## See Also

- [Line Series]({%slug chart-series-line-series%})
- [ScatterPoint Series]({%slug chart-series-scatter-point-series%})
- [Spline Series]({%slug chart-series-spline-series%})
