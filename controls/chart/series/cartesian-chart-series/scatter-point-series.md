---
title: ScatterPointSeries
---
# ScatterPointSeries #

The **ScatterPointSeries** are represented on the chart as not connected data points. Each scatter data point has to provide values for the X and Y coordinate on the **RadCartesianChart**. The **ScatterPointSeries** require both axes of the chart to be of type **NumericalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with ScatterPointSeries in xaml:

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
	    <telerikChart:ScatterPointSeries ItemsSource="{Binding ScatterData}">
	      <telerikChart:ScatterPointSeries>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
	      </telerikChart:ScatterPointSeries>
	      <telerikChart:ScatterPointSeries>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
	      </telerikChart:ScatterPointSeries>
	    </telerikChart:ScatterPointSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>

Here is an example of how to create a RadCartesianChart with ScatterPointSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    HeightRequest = 600,
	    BindingContext = new ViewModel()
	};
	var series = new ScatterPointSeries();
	series.SetBinding(BarSeries.ItemsSourceProperty, new Binding("ScatterData"));
	
	series.XValueBinding = new PropertyNameDataPointBinding("XValue");
	series.YValueBinding = new PropertyNameDataPointBinding("YValue");
	
	chart.Series.Add(series);

Here is the sample data:
	

![Basic ScatterPointSeries]()
## Customization ##
