# Overview #
The data visualization in RadChart is done by a hierarchy of classes that inherit from the ChartSeries class. Each series has a collection of data points, that is the view model of the data. A series may have its data populated by data-binding to an arbitrary IEnumerable instance through the ItemsSource property.
## Series Class Hierarchy ##
Concrete series types are available for specific charts. For example, there is a set of CartesianSeries applicable in the context of a RadCartesianChart. Here is the hierarchy of all series:

![Series Class Diagram](asd "Chart series class hierarchy")

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
### Categorical Series Features ###
#### Data Binding ####
All categorical series have **CategoryBinding** and **ValueBinding** properties.
#### Combining ####
The categorical series provide functionality to group 

### Scatter Series Common Features ###

- **DisplayName**: Gets or sets the human-readable name of the series.
- **ItemsSource**: Defines the data set that will fill the DataPoints collection of the series. It supports a large variety of different data sources as the property is of type IEnumerable.
- **ShowLabels**: Defines whether the series will display labels for each DataPoint plotted.
- **IsSelected**:

>The property is of type DataPointBinding rather than the system Binding. This custom binding mechanism is implemented for performance reasons so that each DataPoint does not need to inherit DependencyObject. Additionally, for even better performance or context-sensitive binding, the GenericDataPointBinding class may be used. All different data-binding related properties across all series follow this pattern.

The following code demonstrates how to specify a valid DataPointBinding in a concrete instance that inherits the base ChartSeries class, e.g., BarSeries class:

`code`
