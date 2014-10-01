---
title: AreaSeries
slug: chart-series-area-series
---

# AreaSeries #

**RadCartesianChart** visualizes **AreaSeries** as an area on the chart that is enclosed by the coordinate axes and straight line segments that connect the data points represented by these series. The **AreaSeries** extend **CategoricalStrokedSeries**, so they are also **CategoricalSeries** and require one **CategoricalAxis** and one **NumricalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with AreaSeries in xaml:

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
	    <telerikChart:AreaSeries ItemsSource="{Binding CategoricalData}">
	      <telerikChart:AreaSeries.ValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
	      </telerikChart:AreaSeries.ValueBinding>
	      <telerikChart:AreaSeries.CategoryBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
	      </telerikChart:AreaSeries.CategoryBinding>
	    </telerikChart:AreaSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>
Where:

	xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
Here is an example of how to create a RadCartesianChart with AreaSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new CategoricalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    BindingContext = new CategoricalViewModel()
	};
	
	var series = new AreaSeries();
	series.SetBinding(AreaSeries.ItemsSourceProperty, new Binding("CategoricalData"));   
	series.ValueBinding = new PropertyNameDataPointBinding("Value");
	series.CategoryBinding = new PropertyNameDataPointBinding("Category");
		
	chart.Series.Add(series);

![Basic AreaSeries]()
## Customization ##
