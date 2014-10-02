---
title: ScatterLineSeries
slug: chart-series-scatter-line-series
---
# ScatterLineSeries #

The **ScatterLineSeries** are represented on the chart as data points connected with straight line segments. The **ScatterLineSeries** inherit from the **[ScatterPointSeries]()** class and also require both axes of the chart to be of type **NumericalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with ScatterLineSeries in xaml:

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
	    <telerikChart:ScatterLineSeries ItemsSource="{Binding ScatterData}">
	      <telerikChart:ScatterLineSeries.XValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
	      </telerikChart:ScatterLineSeries.XValueBinding>
	      <telerikChart:ScatterLineSeries.YValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
	      </telerikChart:ScatterLineSeries.YValueBinding>
	    </telerikChart:ScatterLineSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>
Where:

	xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
Here is an example of how to create a RadCartesianChart with ScatterLineSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    BindingContext = new ScatterViewModel()
	};
	
	var series = new ScatterLineSeries();
	series.SetBinding(ScatterLineSeries.ItemsSourceProperty, new Binding("ScatterData"));   
	series.XValueBinding = new PropertyNameDataPointBinding("XValue");
	series.YValueBinding = new PropertyNameDataPointBinding("YValue");
Here is the sample data:
	

![Basic ScatterLineSeries Windows Phone](/images/controls/chart/series/cartesan-scatter-line-series-basic-example-WP.png)
![Basic ScatterLineSeries Android](/images/controls/chart/series/cartesan-scatter-line-series-basic-example-andro.png)
![Basic ScatterLineSeries iOS](/images/controls/chart/series/cartesan-scatter-line-series-basic-example-iOS.png)
## Customization ##
**ScatterLineSeries** provide the following properties to change their style:

- **Stroke** (Color): changes the color used to draw lines.
- **StrokeThickness** (double): changes the width of the lines.

Here is an example:

	var series = new ScatterLineSeries { Stroke = new Color(0.6, 0.6, 0.9), StrokeThickness = 5 };

![Customized ScatterLineSeries Windows Phone](/images/controls/chart/series/cartesan-scatter-line-series-basic-example-WP.png)
![Customized ScatterLineSeries Android](/images/controls/chart/series/cartesan-scatter-line-series-basic-example-andro.png)
![Customized ScatterLineSeries iOS](/images/controls/chart/series/cartesan-scatter-line-series-basic-example-iOS.png)