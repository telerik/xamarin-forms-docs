---
title: Overview
page_title: RadChart Series Overview
slug: chart-series-overview
---
# Overview #
The data visualization in RadChart is done by a hierarchy of classes that inherit from the ChartSeries class. Each series has a collection of data points, that is the view model of the data. A series may have its data populated by data-binding to an arbitrary IEnumerable instance through the ItemsSource property.
## Series Class Hierarchy ##
Concrete series types are available for specific charts. For example, there is a set of CartesianSeries applicable in the context of a RadCartesianChart. Here is the hierarchy of all series:

![Series Class Diagram](/ "Chart series class hierarchy")

Here are listed all supported series grouped by the chart types that can use them:
### CartesianChart ###
- **CategoricalSeries**
    - [BarSeries]({% slug chart-series-bar-series %})
    - [LineSeries]({% slug chart-series-line-series %})
    - [SplineSeries]({% slug chart-series-spline-series %})
    - [AreaSeries]({% slug chart-series-area-series %})
    - [SplineAreaSeries]({% slug chart-series-spline-area-series %})
- **ScatterSeries**
    - [ScatterPointSeries]({% slug chart-series-scatter-point-series %})
    - [ScatterLineSeries]({% slug chart-series-scatter-line-series %})
    - [ScatterSplineSeries]({% slug chart-series-scatter-spline-series %})
    - [ScatterAreaSeries]({% slug chart-series-scatter-area-series %})
    - [ScatterSplineAreaSeries]({% slug chart-series-scatter-spline-area-series %}) 
### PieChart ###
- [PieSeries]({% slug chart-series-pie-series %}) 

## Features ##
### Common Features ###
* **ItemsSource**: Defines the data set that will fill the series data points. It supports a large variety of different data sources as the property is of type IEnumerable. 
* **ShowLabels**: Defines whether the series will display labels for each plotted data point.
* **DisplayName**
#### Categorical Series Features ####
##### Data Binding #####
All categorical series have **CategoryBinding** and **ValueBinding** properties. These properties are of **PropertyNameDataPointBinding** and specify the name  of the property from the data model used by the chart to plot the corresponding visual point.
##### Combining ####
The categorical series could be combined. Several combining strategies are supported. You can take a look at the [Grouping example]({% slug chart-series-combine-mode %}).

#### Scatter Series Common Features ####
##### Data Binding #####
All categorical series have **XValueBinding** and **YValueBinding** properties. These properties are of **PropertyNameDataPointBinding** and specify the name  of the property from the data model used by the chart to plot the corresponding visual point.
