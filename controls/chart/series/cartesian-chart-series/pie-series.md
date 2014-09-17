---
title: PieSeries
---
# PieSeries #


**RadPieChart** visualizes the **PieSeries** in the shape of a pie. Each data item is visually represented by a pie slice. The ratio between the space consumed by each slice and the space consumed by the whole chart is the same as the ratio between the value of the data point that it represents and the total value of all data points in the series.

## Example ##
Here is an example of how to create a basic RadPieChart with PieSeries in xaml:

	<telerikChart:RadPieChart>
	  <telerikChart:RadPieChart.BindingContext>
	    <local:ViewModel/>
	  </telerikChart:RadPieChart.BindingContext>
	  <telerikChart:RadPieChart.Series>
	    <telerikChart:PieSeries ItemsSource="{Binding CategoricalData}">
	      <telerikChart:PieSeries.ValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
	      </telerikChart:PieSeries.ValueBinding>
	    </telerikChart:PieSeries>
	  </telerikChart:RadPieChart.Series>
	</telerikChart:RadPieChart>

Here is an example of how to create a RadPieChart with PieSeries in code:

	var chart = new RadPieChart { BindingContext = new ViewModel() };
	var series = new PieSeries();
	series.SetBinding(PieSeries.ItemsSourceProperty, new Binding("CategoricalData"));
	series.ValueBinding = new PropertyNameDataPointBinding("Value");
	chart.Series.Add(series);

![Basic PieSeries]()
## Customization ##
