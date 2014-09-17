---
title: SplineSeries
---
# SplineSeries #


**RadCartesianChart** visualizes each data item from the **LineSeries** and connects them with curved line segments. The **SplineSeries** extend **LineSeries**, so they are also **CategoricalSeries** and require one **CategoricalAxis** and one **NumricalAxis**.

## Example ##
Here is an example of how to create a basic RadCartesianChart with SplineSeries in xaml:

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
	    <telerikChart:SplineSeries ItemsSource="{Binding CategoricalData}">
	      <telerikChart:SplineSeries.ValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
	      </telerikChart:SplineSeries.ValueBinding>
	      <telerikChart:SplineSeries.CategoryBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
	      </telerikChart:SplineSeries.CategoryBinding>
	    </telerikChart:SplineSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>
Here is an example of how to create a RadCartesianChart with SplineSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new Telerik.XamarinForms.Chart.CategoricalAxis(),
	    VerticalAxis = new Telerik.XamarinForms.Chart.NumericalAxis(),
	    HeightRequest = 600,
	    BindingContext = new ViewModel()
	};

	var series = new Telerik.XamarinForms.Chart.SplineSeries();
	series.SetBinding(SplineSeries.ItemsSourceProperty, new Binding("CategoricalData"));	
	series.ValueBinding = new PropertyNameDataPointBinding("Value");
	series.CategoryBinding = new PropertyNameDataPointBinding("Category");
	
	chart.Series.Add(series);

![Basic SplineSeries]()
## Customization ##
