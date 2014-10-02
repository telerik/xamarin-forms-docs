---
title: ScatterPointSeries
slug: chart-series-scatter-point-series
---
# ScatterPointSeries #

The **ScatterPointSeries** are represented on the chart as not connected data points. Each scatter data point has to provide values for the X and Y coordinate on the **RadCartesianChart**. The **ScatterPointSeries** require both axes of the chart to be of type **NumericalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with ScatterPointSeries in xaml:

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
	    <telerikChart:ScatterPointSeries ItemsSource="{Binding ScatterData}">
	      <telerikChart:ScatterPointSeries.XValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
	      </telerikChart:ScatterPointSeries.XValueBinding>
	      <telerikChart:ScatterPointSeries.YValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
	      </telerikChart:ScatterPointSeries.YValueBinding>
	    </telerikChart:ScatterPointSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>
Where:

	xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
Here is an example of how to create a RadCartesianChart with ScatterPointSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    BindingContext = new ScatterViewModel()
	};
	
	var series = new ScatterPointSeries();
	series.SetBinding(ScatterPointSeries.ItemsSourceProperty, new Binding("ScatterData"));   
	series.XValueBinding = new PropertyNameDataPointBinding("XValue");
	series.YValueBinding = new PropertyNameDataPointBinding("YValue");
	
	chart.Series.Add(series);

Here is the sample data:
	
![Basic ScatterPointSeries Windows Phone](/images/controls/chart/series/cartesan-scatter-point-series-basic-example-WP.png)
![Basic ScatterPointSeries Android](/images/controls/chart/series/cartesan-scatter-point-series-basic-example-andro.png)
![Basic ScatterPointSeries iOS](/images/controls/chart/series/cartesan-scatter-point-series-basic-example-iOS.png)
