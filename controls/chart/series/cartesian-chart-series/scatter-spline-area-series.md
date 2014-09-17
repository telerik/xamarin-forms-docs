---
title: ScatterSplineAreaSeries
---
# ScatterLineSeries #

**RadCartesianChart** visualizes **ScatterSplineAreaSeries** as the area enclosed by the coordinate axes and curved line segments that connect the series data points. The **ScatterSplineAreaSeries** inherit from the **[ScatterPointSeries]()** class and also require both axes of the chart to be of type **NumericalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with ScatterSplineAreaSeries in xaml:

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
	    <telerikChart:ScatterSplineAreaSeries ItemsSource="{Binding ScatterData}">
	      <telerikChart:ScatterSplineAreaSeries>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
	      </telerikChart:ScatterSplineAreaSeries>
	      <telerikChart:ScatterSplineAreaSeries>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
	      </telerikChart:ScatterSplineAreaSeries>
	    </telerikChart:ScatterSplineAreaSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>

Here is an example of how to create a RadCartesianChart with ScatterSplineAreaSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    HeightRequest = 600,
	    BindingContext = new ViewModel()
	};
	var series = new ScatterSplineAreaSeries();
	series.SetBinding(BarSeries.ItemsSourceProperty, new Binding("ScatterData"));
	
	series.XValueBinding = new PropertyNameDataPointBinding("XValue");
	series.YValueBinding = new PropertyNameDataPointBinding("YValue");
	
	chart.Series.Add(series);

Here is the sample data:
	

![Basic ScatterSplineAreaSeries]()
## Customization ##
