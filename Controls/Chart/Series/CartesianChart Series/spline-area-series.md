---
title: SplineAreaSeries
slug: chart-series-spline-area-series
---
# LineSeries #

**RadCartesianChart** visualizes **SplineAreaSeries** as an area on the chart that is enclosed by the coordinate axes and straight line segments that connect the data points represented by these series. The **SplineAreaSeries** extend **CategoricalStrokedSeries**, so they are also **CategoricalSeries** and require one **CategoricalAxis** and one **NumricalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with SplineAreaSeries in xaml:

	<telerikChart:RadCartesianChart>
	  <telerikChart:RadCartesianChart.BindingContext>
	    <viewMoedls:CategoricalViewModel/>
	  </telerikChart:RadCartesianChart.BindingContext>
	  <telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:CategoricalAxis/>
	  </telerikChart:RadCartesianChart.HorizontalAxis>
	  <telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:NumericalAxis/>
	  </telerikChart:RadCartesianChart.VerticalAxis>
	  <telerikChart:RadCartesianChart.Series>
	    <telerikChart:SplineAreaSeries ItemsSource="{Binding CategoricalData}">
	      <telerikChart:SplineAreaSeries.ValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
	      </telerikChart:SplineAreaSeries.ValueBinding>
	      <telerikChart:SplineAreaSeries.CategoryBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
	      </telerikChart:SplineAreaSeries.CategoryBinding>
	    </telerikChart:SplineAreaSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>
Where:

	xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
Here is an example of how to create a RadCartesianChart with SplineAreaSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new CategoricalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    BindingContext = new CategoricalViewModel()
	};
	
	var series = new SplineAreaSeries();
	series.SetBinding(SplineAreaSeries.ItemsSourceProperty, new Binding("CategoricalData"));   
	series.ValueBinding = new PropertyNameDataPointBinding("Value");
	series.CategoryBinding = new PropertyNameDataPointBinding("Category");
	
	chart.Series.Add(series);
![Basic SplineAreaSeries]()
## Customization ##
**SplineAreaSeries** extend **AreaSeries**, so they provide the same properties to change their style:

- **Stroke** (Color): changes the color used to draw lines.
- **StrokeThickness** (double): changes the width of the lines.
- **Fill** (Color): changes the color used to fill the area shapes.


Here is the sample data:


![Basic SplineAreaSeries Windows Phone](/images/controls/chart/series/cartesan-spline-area-series-basic-example-WP.png)
![Basic SplineAreaSeries Android](/images/controls/chart/series/cartesan-spline-area-series-basic-example-andro.png)
![Basic SplineAreaSeries iOS](/images/controls/chart/series/cartesan-spline-area-series-basic-example-iOS.png)
## Customization ##
**SplineAreaSeries** extend **AreaSeries**, so they provide the same properties to change their style:

- **Stroke** (Color): changes the color used to draw lines.
- **StrokeThickness** (double): changes the width of the lines.
- **Fill** (Color): changes the color used to fill the area shapes.


Here is an example:
	var series = new SplineAreaSeries { Stroke = new Color(0.6, 0.6, 0.9), StrokeThickness = 5, Fill = new Color(0.8, 0.8, 1) };

![Cistomized SplineAreaSeries Windows Phone](/images/controls/chart/series/cartesan-spline-area-series-customization-example-WP.png)
![Cistomized SplineAreaSeries Android](/images/controls/chart/series/cartesan-spline-area-series-customization-example-andro.png)
![Cistomized SplineAreaSeries iOS](/images/controls/chart/series/cartesan-spline-area-series-customization-example-iOS.png)