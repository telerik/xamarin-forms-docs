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

![Basic AreaSeries WP](/images/controls/chart/series/cartesan-area-series-basic-example-WP.png)
![Basic AreaSeries Android](/images/controls/chart/series/cartesan-area-series-basic-example-andro.png)
![Basic AreaSeries iOS](/images/controls/chart/series/cartesan-area-series-basic-example-iOS.png)
## Customization ##
**AreaSeries** extend **CategoricalStrokedSeries** which provide the following way to change their style:

- **Stroke** (Color): changes the color used to draw lines.
- **StrokeThickness** (double): changes the width of the lines.

Additionally, **AreaSeries** can change the color of their fill with the **Fill** property.

Here is an example:

	var series = new AreaSeries { Stroke = new Color(0.6, 0.6, 0.9), StrokeThickness = 5, Fill = new Color(0.8, 0.8, 1) };

![Customized AreaSeries WP](/images/controls/chart/series/cartesan-area-series-customization-example-WP.png)
![Customized AreaSeries Android](/images/controls/chart/series/cartesan-area-series-customization-example-andro.png)
![Customized AreaSeries iOS](/images/controls/chart/series/cartesan-area-series-customization-example-iOS.png)