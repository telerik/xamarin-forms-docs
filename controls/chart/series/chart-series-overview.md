---
title: Overview
page_title: Xamarin Chart Documentation | RadChart Series Overview
description: Check our &quot;Overview&quot; documentation article for Telerik Chart for Xamarin control.
slug: chart-series-overview
position: 0
---

# Overview #

The data visualization in RadChart is done by a hierarchy of classes that inherit from the ChartSeries class. Each series has a collection of data points, that is the view model of the data. A series may have its data populated by data-binding to an arbitrary IEnumerable instance through the ItemsSource property.

## Series Class Hierarchy ##

Concrete series types are available for specific charts. For example, there is a set of CartesianSeries applicable in the context of a RadCartesianChart. Here is the hierarchy of all series:

![Series Class Diagram](images/chart-series-class-diagram.png)

Here are listed all supported series grouped by the chart types that can use them:

### CartesianChart

- **CategoricalSeries**

    - [Bar Series]({%slug chart-series-bar-series %})
    - [Line Series]({%slug chart-series-line-series %})
    - [Spline Series]({%slug chart-series-spline-series %})
    - [Area Series]({%slug chart-series-area-series %})
    - [SplineArea Series]({%slug chart-series-spline-area-series %})
	
- **ScatterSeries**

    - [ScatterPoint Series]({% slug chart-series-scatter-point-series%})
    - [ScatterLine Series]({% slug chart-series-scatter-line-series%})
    - [ScatterSpline Series]({% slug chart-series-scatter-spline-series%})
    - [ScatterArea Series]({% slug chart-series-scatter-area-series%})
    - [ScatterSplineArea Series]({% slug chart-series-scatter-spline-area-series%})

### PieChart

- [Pie Series]({%slug chart-series-pie-series%}) 
- [Donut Series]({%slug chart-series-donut-series%})

### Financial Chart

- [Ohlc Series]({%slug chart-series-ohlc-series%}) 
- [Candlestick Series]({%slug chart-series-candlestick-series%})
- [Financial Series]({%slug chart-series-financial-indicators%}) 

## See Also

- [Annotations]({%slug chart-annotations%})
- [Chart Legend]({%slug chart-features-legend%})
- [Null Values]({%slug chart-nullvalues%})
