---
title: PieSeries
slug: chart-series-pie-series
---

# PieSeries

## Overview

**RadPieChart** visualizes the **PieSeries** in the shape of a pie. Each data item is visually represented by a pie slice. The ratio between the space consumed by each slice and the space consumed by the whole chart is the same as the ratio between the value of the data point that it represents and the total value of all data points in the series.

## Features

- **ValueBinding**: Gets or sets the binding to a property of the data model that will be used to fill the pie slices.
- **RadiusFactor**: Gets or sets the radius factor used to calculate the radius of the visual series. This value is usually within the [0,1] range but it is possible to oversize the series by setting a value greater than 1.
- **SelectedPointOffset**: Gets or sets the offset applied to the currently selected point.

## Example

Here is an example of how to create a RadPieChart with PieSeries and ChartBehaviors: 

<snippet id='chart-piechart-xaml'/>
<snippet id='chart-piechart-csharp'/>

In addition to this you need to add the following namespace:

<snippet id='xmlns-telerikchart'/>
<snippet id='ns-telerikchart'/>

Here is the result:

![Basic PieSeries using the following properties](images/pie-series-basic-example.png)

## See Also

- [Donut Series]({%slug chart-series-donut-series%})
- [Bar Series]({%slug chart-series-bar-series%})
- [Categorical Series Overview]({%slug chart-series-overview %})

