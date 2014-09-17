---
title: ScatterSplineSeries
---
# ScatterSplineSeries #

The **ScatterSplineSeries** are represented on the chart as data points connected with curved line segments. The **ScatterSplineSeries** inherit from the **[ScatterPointSeries]()** class and also require both axes of the chart to be of type **NumericalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with ScatterSplineSeries in xaml:

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
	    <telerikChart:ScatterSplineSeries ItemsSource="{Binding ScatterData}">
	      <telerikChart:ScatterSplineSeries>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
	      </telerikChart:ScatterSplineSeries>
	      <telerikChart:ScatterSplineSeries>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
	      </telerikChart:ScatterSplineSeries>
	    </telerikChart:ScatterSplineSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>

Here is an example of how to create a RadCartesianChart with ScatterSplineSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    HeightRequest = 600,
	    BindingContext = new ViewModel()
	};
	var series = new ScatterSplineSeries();
	series.SetBinding(BarSeries.ItemsSourceProperty, new Binding("ScatterData"));
	
	series.XValueBinding = new PropertyNameDataPointBinding("XValue");
	series.YValueBinding = new PropertyNameDataPointBinding("YValue");
	
	chart.Series.Add(series);

Here is the sample data:
	

![Basic ScatterSplineSeries]()
## Customization ##
