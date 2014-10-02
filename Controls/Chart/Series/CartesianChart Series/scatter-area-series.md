---
title: ScatterAreaSeries
slug: chart-series-scatter-area-series
---
# ScatterLineSeries #

**RadCartesianChart** visualizes **ScatterAreaSeries** as the area enclosed by the coordinate axes and straight line segments that connect the series data points. The **ScatterAreaSeries** inherit from the **[ScatterPointSeries]()** class and also require both axes of the chart to be of type **NumericalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with ScatterAreaSeries in xaml:

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
	    <telerikChart:ScatterAreaSeries ItemsSource="{Binding ScatterData}">
	      <telerikChart:ScatterAreaSeries.XValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
	      </telerikChart:ScatterAreaSeries.XValueBinding>
	      <telerikChart:ScatterAreaSeries.YValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
	      </telerikChart:ScatterAreaSeries.YValueBinding>
	    </telerikChart:ScatterAreaSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>
Where:

	xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
Here is an example of how to create a RadCartesianChart with ScatterAreaSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    BindingContext = new ScatterViewModel()
	};
	
	var series = new ScatterAreaSeries();
	series.SetBinding(ScatterAreaSeries.ItemsSourceProperty, new Binding("ScatterData"));   
	series.XValueBinding = new PropertyNameDataPointBinding("XValue");
	series.YValueBinding = new PropertyNameDataPointBinding("YValue");
	
	chart.Series.Add(series);
Here is the sample data:
	
![Basic ScatterAreaSeries WP](/images/controls/chart/series/cartesan-scatter-area-series-basic-example-WP.png)
![Basic ScatterAreaSeries Android](/images/controls/chart/series/cartesan-scatter-area-series-basic-example-andro.png)
![Basic ScatterAreaSeries iOS](/images/controls/chart/series/cartesan-area-scatter-area-basic-example-iOS.png)
## Customization ##
**ScatterAreaSeries** provides the following properties to change its style:

- **Stroke** (Color): changes the color used to draw lines.
- **StrokeThickness** (double): changes the width of the lines.
- **Fill** (Color): changes the color of the chart area.

Here is an example:

	var series = new ScatterAreaSeries { Stroke = new Color(0.6, 0.6, 0.9), StrokeThickness = 5, Fill = new Color(0.8, 0.8, 1) };

![Customized ScatterAreaSeries WP](/images/controls/chart/series/cartesan-scatter-area-series-customization-example-WP.png)
![Customized ScatterAreaSeries Android](/images/controls/chart/series/cartesan-scatter-area-series-customization-example-andro.png)
![Customized ScatterAreaSeries iOS](/images/controls/chart/series/cartesan-area-scatter-area-customization-example-iOS.png)