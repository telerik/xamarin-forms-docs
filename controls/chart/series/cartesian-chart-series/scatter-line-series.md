---
title: ScatterLineSeries
---
# ScatterLineSeries #

The **ScatterLineSeries** are represented on the chart as data points connected with straight line segments. The **ScatterLineSeries** inherit from the **[ScatterPointSeries]()** class and also require both axes of the chart to be of type **NumericalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with ScatterLineSeries in xaml:

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
	    <telerikChart:ScatterLineSeries ItemsSource="{Binding ScatterData}">
	      <telerikChart:ScatterLineSeries>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
	      </telerikChart:ScatterLineSeries>
	      <telerikChart:ScatterLineSeries>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
	      </telerikChart:ScatterLineSeries>
	    </telerikChart:ScatterLineSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>

Here is an example of how to create a RadCartesianChart with ScatterLineSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    HeightRequest = 600,
	    BindingContext = new ViewModel()
	};
	var series = new ScatterLineSeries();
	series.SetBinding(BarSeries.ItemsSourceProperty, new Binding("ScatterData"));
	
	series.XValueBinding = new PropertyNameDataPointBinding("XValue");
	series.YValueBinding = new PropertyNameDataPointBinding("YValue");
	
	chart.Series.Add(series);

Here is the sample data:
	

![Basic ScatterLineSeries]()
## Customization ##
