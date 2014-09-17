---
title: SplineAreaSeries
---
# LineSeries #

**RadCartesianChart** visualizes **SplineAreaSeries** as an area on the chart that is enclosed by the coordinate axes and straight line segments that connect the data points represented by these series. The **SplineAreaSeries** extend **CategoricalStrokedSeries**, so they are also **CategoricalSeries** and require one **CategoricalAxis** and one **NumricalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with SplineAreaSeries in xaml:

	<telerikChart:RadCartesianChart HeightRequest="600">
	  <telerikChart:RadCartesianChart.BindingContext>
	    <local:MainViewModel/>
	  </telerikChart:RadCartesianChart.BindingContext>
	  <telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:CategoricalAxis/>
	  </telerikChart:RadCartesianChart.HorizontalAxis>
	  <telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:NumericalAxis/>
	  </telerikChart:RadCartesianChart.VerticalAxis>
	  <telerikChart:RadCartesianChart.Series>
	    <telerikChart:SplineAreaSeries ItemsSource="{Binding CategoricalData}">
	      <telerikChart:SplineAreaSeries.ValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
	      </telerikChart:SplineAreaSeries.ValueBinding>
	      <telerikChart:SplineAreaSeries.CategoryBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
	      </telerikChart:SplineAreaSeries.CategoryBinding>
	    </telerikChart:SplineAreaSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>
Here is an example of how to create a RadCartesianChart with SplineAreaSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new Telerik.XamarinForms.Chart.CategoricalAxis(),
	    VerticalAxis = new Telerik.XamarinForms.Chart.NumericalAxis(),
	    HeightRequest = 600,
	    BindingContext = new ViewModel()
	};

	var series = new Telerik.XamarinForms.Chart.SplineAreaSeries();
	series.SetBinding(SplineAreaSeries.ItemsSourceProperty, new Binding("CategoricalData"));	
	series.ValueBinding = new PropertyNameDataPointBinding("Value");
	series.CategoryBinding = new PropertyNameDataPointBinding("Category");
	
	chart.Series.Add(series);

![Basic SplineAreaSeries]()
## Customization ##
