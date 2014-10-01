---
title: LineSeries
slug: chart-series-line-series
---
# LineSeries #

**RadCartesianChart** visualizes each data item from the **LineSeries** and connects them with straight line segments. The **LineSeries** extend **CategoricalStrokedSeries**, so they are also **CategoricalSeries** and require one **CategoricalAxis** and one **NumricalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with LineSeries in xaml:

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
	    <telerikChart:LineSeries ItemsSource="{Binding CategoricalData}">
	      <telerikChart:LineSeries.ValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
	      </telerikChart:LineSeries.ValueBinding>
	      <telerikChart:LineSeries.CategoryBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
	      </telerikChart:LineSeries.CategoryBinding>
	    </telerikChart:LineSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>
Where

	xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
Here is an example of how to create a RadCartesianChart with LineSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new CategoricalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    BindingContext = new CategoricalViewModel()
	};
	
	var series = new LineSeries();
	series.SetBinding(LineSeries.ItemsSourceProperty, new Binding("CategoricalData"));   
	series.ValueBinding = new PropertyNameDataPointBinding("Value");
	series.CategoryBinding = new PropertyNameDataPointBinding("Category");
	
	chart.Series.Add(series);

![Basic LineSeries]()
## Customization ##
