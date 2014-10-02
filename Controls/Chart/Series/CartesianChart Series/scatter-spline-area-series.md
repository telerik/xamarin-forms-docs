---
title: ScatterSplineAreaSeries
slug: chart-series-scatter-spline-area-series
---
# ScatterLineSeries #

**RadCartesianChart** visualizes **ScatterSplineAreaSeries** as the area enclosed by the coordinate axes and curved line segments that connect the series data points. The **ScatterSplineAreaSeries** inherit from the **[ScatterPointSeries]()** class and also require both axes of the chart to be of type **NumericalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with ScatterSplineAreaSeries in xaml:
	
	<telerikChart:RadCartesianChart>
	  <telerikChart:RadCartesianChart.BindingContext>
	    <viewMoedls:ScatterViewModel/>
	  </telerikChart:RadCartesianChart.BindingContext>
	  <telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:NumericalAxis/>
	  </telerikChart:RadCartesianChart.HorizontalAxis>
	  <telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:NumericalAxis/>
	  </telerikChart:RadCartesianChart.VerticalAxis>
	  <telerikChart:RadCartesianChart.Series>
	    <telerikChart:ScatterSplineAreaSeries ItemsSource="{Binding ScatterData}">
	      <telerikChart:ScatterSplineAreaSeries.XValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
	      </telerikChart:ScatterSplineAreaSeries.XValueBinding>
	      <telerikChart:ScatterSplineAreaSeries.YValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
	      </telerikChart:ScatterSplineAreaSeries.YValueBinding>
	    </telerikChart:ScatterSplineAreaSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>
Where:

	xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
Here is an example of how to create a RadCartesianChart with ScatterSplineAreaSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    BindingContext = new ScatterViewModel()
	};
	
	var series = new ScatterSplineAreaSeries();
	series.SetBinding(ScatterSplineAreaSeries.ItemsSourceProperty, new Binding("ScatterData"));   
	series.XValueBinding = new PropertyNameDataPointBinding("XValue");
	series.YValueBinding = new PropertyNameDataPointBinding("YValue");
	
	chart.Series.Add(series);

Here is the sample data:


![Basic ScatterSplineAreaSeries Windows Phone](/images/controls/chart/series/cartesan-scatter-spline-area-series-basic-example-WP.png)
![Basic ScatterSplineAreaSeries Android](/images/controls/chart/series/cartesan-scatter-spline-area-series-basic-example-andro.png)
![Basic ScatterSplineAreaSeries iOS](/images/controls/chart/series/cartesan-scatter-spline-area-series-basic-example-iOS.png)
## Customization ##
**ScatterSplineAreaSeries** provide the following properties to change their style:

- **Stroke** (Color): changes the color used to draw lines.
- **StrokeThickness** (double): changes the width of the lines.
- **Fill** (Color): changes the color used to fill the area shapes.

Here is an example:

	var series = new ScatterSplineAreaSeries { Stroke = new Color(0.6, 0.6, 0.9), StrokeThickness = 5, Fill = new Color(0.8, 0.8, 1) };

![Cistomized ScatterSplineAreaSeries Windows Phone](/images/controls/chart/series/cartesan-scatter-spline-area-series-customization-example-WP.png)
![Cistomized ScatterSplineAreaSeries Android](/images/controls/chart/series/cartesan-scatter-spline-area-series-customization-example-andro.png)
![Cistomized ScatterSplineAreaSeries iOS](/images/controls/chart/series/cartesan-scatter-spline-area-series-customization-example-iOS.png)