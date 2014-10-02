---
title: BarSeries
slug: chart-series-bar-series
---
# BarSeries #

**RadCartesianChart** visualizes each data point from the **BarSeries** as a rectangle. These rectangles (or bars) can be displayed either horizontally, or vertically, depending on whether the **CategoricalAxis** is the vertical axis or the horizontal. When the horizontal axis is categorical, the rectangles are displayed vertically. This means that they have equal width while their height represents the numerical value of each of the data points. On the other hand, when the vertical axis is categorical, the rectangles have equal height, while their width represents the value of the data point. The **BarSeries** inherit from **CategoricalSeries** and require one **CategoricalAxis** and one **NumericalAxis**.
## Example ##
Here is an example of how to create a basic RadCartesianChart with BarSeries in xaml:

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
	    <telerikChart:BarSeries ItemsSource="{Binding CategoricalData}">
	      <telerikChart:BarSeries.ValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
	      </telerikChart:BarSeries.ValueBinding>
	      <telerikChart:BarSeries.CategoryBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
	      </telerikChart:BarSeries.CategoryBinding>
	    </telerikChart:BarSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>

Where

	xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
Here is an example of how to create a RadCartesianChart with BarSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new CategoricalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    BindingContext = new CategoricalViewModel()
	};
	
	var series = new BarSeries();
	series.SetBinding(BarSeries.ItemsSourceProperty, new Binding("CategoricalData"));   
	series.ValueBinding = new PropertyNameDataPointBinding("Value");
	series.CategoryBinding = new PropertyNameDataPointBinding("Category");
	
	chart.Series.Add(series);
Here is the sample data:

![Basic BarSeries WP](/images/controls/chart/series/cartesan-bar-series-basic-example-WP.png)
![Basic BarSeries Android](/images/controls/chart/series/cartesan-bar-series-basic-example-andro.png)
![Basic BarSeries iOS](/images/controls/chart/series/cartesan-area-bar-basic-example-iOS.png)
## Customization ##
**BarSeries** provide the following properties to change their style:

- **Stroke** (Color): changes the color used to draw lines.
- **StrokeThickness** (double): changes the width of the lines.
- **Fill** (Color): changes the color used to fill the area shapes.  

Here is an example:

	var series = new BarSeries { Stroke = new Color(0.6, 0.6, 0.9), StrokeThickness = 5, Fill = new Color(0.8, 0.8, 1) };
![Customized BarSeries]()