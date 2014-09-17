---
title: ScatterAreaSeries
---
# ScatterLineSeries #

**RadCartesianChart** visualizes **ScatterAreaSeries** as the area enclosed by the coordinate axes and straight line segments that connect the series data points. The **ScatterAreaSeries** inherit from the **[ScatterPointSeries]()** class and also require both axes of the chart to be of type **NumericalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with ScatterAreaSeries in xaml:

	<telerikChart:RadCartesianChart HeightRequest="600">
	  <telerikChart:RadCartesianChart.BindingContext>
	    <local:ViewModel/>
	  </telerikChart:RadCartesianChart.BindingContext>
	  <telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:NumericalAxis/>
	  </telerikChart:RadCartesianChart.HorizontalAxis>
	  <telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:NumericalAxis/>
	  </telerikChart:RadCartesianChart.VerticalAxis>
	  <telerikChart:RadCartesianChart.Series>
	    <telerikChart:ScatterAreaSeries ItemsSource="{Binding ScatterData}">
	      <telerikChart:ScatterAreaSeries>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
	      </telerikChart:ScatterAreaSeries>
	      <telerikChart:ScatterAreaSeries>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
	      </telerikChart:ScatterAreaSeries>
	    </telerikChart:ScatterAreaSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>

Here is an example of how to create a RadCartesianChart with ScatterAreaSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    HeightRequest = 600,
	    BindingContext = new ViewModel()
	};
	var series = new ScatterAreaSeries();
	series.SetBinding(BarSeries.ItemsSourceProperty, new Binding("ScatterData"));
	
	series.XValueBinding = new PropertyNameDataPointBinding("XValue");
	series.YValueBinding = new PropertyNameDataPointBinding("YValue");
	
	chart.Series.Add(series);

Here is the sample data:
	

![Basic ScatterAreaSeries]()
## Customization ##
