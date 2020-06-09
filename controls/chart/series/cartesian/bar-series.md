---
title: Bar Series
page_title: Xamarin Chart Documentation | Bar Series
description: Check our &quot;Bar Series&quot; documentation article for Telerik Chart for Xamarin control.
position: 0
slug: chart-series-bar-series
---

# Bar Series

## Overview

**RadCartesianChart** visualizes each data point from the **BarSeries** as a rectangle. These rectangles (or bars) can be displayed either horizontally, or vertically, depending on whether the **CategoricalAxis** is the vertical axis or the horizontal. When the horizontal axis is categorical, the rectangles are displayed vertically. This means that they have equal width while their height represents the numerical value of each of the data points. On the other hand, when the vertical axis is categorical, the rectangles have equal height, while their width represents the value of the data point. 

The **BarSeries** inherits from **CategoricalSeries** and requires one **CategoricalAxis** and one **NumericalAxis**. 

>tip You could check the common CategoricalSeries features that are also applicable to **BarSeries** at the following link: [Series Features]({%slug chart-series-overview%}).

## Example

Here is an example how to create RadCartesianChart with Bar Series:

First, create the needed business objects, for example:

<snippet id='categorical-data-model'/>

Then create a ViewModel:

<snippet id='chart-series-categorical-data-view-model'/>

Finally, use the following snippet to declare a RadCartesianChart with Bar Series in XAML and in C#:

<snippet id='chart-series-barvertical-xaml'/>
<snippet id='chart-series-barvertical-csharp'/>

Where the **telerikChart** namespace is the following:

<snippet id='xmlns-telerikchart'/>
<snippet id='ns-telerikchart'/>

Here is how it looks:

![Basic BarSeries](images/cartesian-bar-series-basic-example.png)

>important A sample Bar Series example can be found in the Chart/Series folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## BarSeries Palette Mode

The **Palette Mode** property of the BarSeries allows users to change the color of the series using **SeriesPaletteMode** enumeration. The changes of the color can be set on: 

- **Series**: The palette is applied to data point depending on the index of the owning ChartSeries instance. 
- **DataPoint**: You can apply the palette to the data points depending on the index od each data point. 

The fill of the BarSeries can be defined using the **FillColor** property.

### PaletteMode Example

Here is an example that demonstrates how you can set the PaletteMode property on Series and DataPoint:

<snippet id='chart-customization-palettemode-xaml' />
<snippet id='chart-customization-palettemode-csharp' />

#### PaletteMode for Series

![Series PaletteMode](images/chart-series-features-palette-mode-series.png)

#### PaletteMode for DataPoint

![DataPoint PaletteMode](images/chart-series-features-palette-mode-datapoint.png)

>important **SDK Browser** application contains an example that shows Palette Mode feature for BarSeries in RadChart cotrol. You can find the application in the **Examples** folder of your local **Telerik UI for Xamarin** installation.

## See Also

- [Categorical Series Overview]({%slug chart-series-overview %})
- [Categorical Series Orientation]({%slug chart-series-orientation %})
- [Cartegorical Series Combine Mode]({%slug chart-series-combine-mode %})
