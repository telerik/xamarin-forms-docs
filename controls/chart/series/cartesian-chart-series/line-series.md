---
title: LineSeries
---
# LineSeries #

**RadCartesianChart** visualizes each data item from the **LineSeries** and connects them with straight line segments. The **LineSeries** extend **CategoricalStrokedSeries**, so they are also **CategoricalSeries** and require one **CategoricalAxis** and one **NumricalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with LineSeries in xaml:

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
Here is an example of how to create a RadCartesianChart with LineSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new Telerik.XamarinForms.Chart.CategoricalAxis(),
	    VerticalAxis = new Telerik.XamarinForms.Chart.NumericalAxis(),
	    HeightRequest = 600,
	    BindingContext = new ViewModel()
	};

	var series = new Telerik.XamarinForms.Chart.LineSeries();
	series.SetBinding(LineSeries.ItemsSourceProperty, new Binding("CategoricalData"));	
	series.ValueBinding = new PropertyNameDataPointBinding("Value");
	series.CategoryBinding = new PropertyNameDataPointBinding("Category");
	
	chart.Series.Add(series);

![Basic LineSeries]()
## Customization ##
