---
title: Line Series
page_title: Xamarin Chart Documentation | Line Series
description: Check our &quot;Line Series&quot; documentation article for Telerik Chart for Xamarin control.
position: 0
slug: chart-series-line-series
---

# Line Series

## Overview

**RadCartesianChart** visualizes each data item from the **LineSeries** and connects them with straight line segments. The **LineSeries** extend **CategoricalStrokedSeries**, so they are also **CategoricalSeries** and require one **CategoricalAxis** and one **NumricalAxis**.

## Features

- **Stroke** (Color): changes the color used to draw lines.
- **StrokeThickness** (double): changes the width of the lines.

## Example

Here is an example how to create RadCartesianChartChart with Line Series:

First, create the needed business objects, for example:

<snippet id='categorical-data-model'/>

Then create a ViewModel:

<snippet id='chart-series-series-categorical-view-model'/>

Finally, use the following snippet to declare a RadCartesianChart with Line Series in XAML and in C#:

<snippet id='chart-series-line-xaml'/>
<snippet id='chart-series-line-csharp'/>

Where the **telerikChart** namespace is the following:

<snippet id='xmlns-telerikchart'/>
<snippet id='ns-telerikchart'/>

And here is the result:

![Basic LineSeries](images/cartesian-line-series-basic-example.png)

>important A sample Line Series example can be found in the Chart/Series folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

### Customization Example
Here we make some customizations:
```C#
	var series = new LineSeries 
	{ 
		Stroke = new Color(0.6, 0.6, 0.9),
		StrokeThickness = 5 
	};
```
![Customized LineSeries](images/cartesian-line-series-customization-example.png)

## See Also

- [ScatterArea Series]({%slug chart-series-scatter-area-series%})
- [ScatterLine Series]({%slug chart-series-scatter-line-series%})
- [ScatterPoint Series]({%slug chart-series-scatter-point-series%})