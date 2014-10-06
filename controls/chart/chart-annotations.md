---
title: Annotations
position: 8
slug: chart-annotations
---

#Overview#

**Annotations** are visual elements used to highlight certain areas on the plot. They can be used as comments or as markers for specific values on the plot. You can practically use any visual element as template for the annotation.

RadChart provides support for the following types of annotations:

- **Cartesian GridLineAnnotations**: this annotation is visually represented by straight lines across the chart that marks a specific value on the associated Cartesian axis.
- **Cartesian PlotBandAnnotations**: this annotation is visually represented by a band across the chart that marks a specific range on the associated Cartesian axis.

# CartesianGridLineAnnotation #

The **CartesianGridLineAnnotation** represents a vertical or horizontal line that crosses the entire plot area.

##Features##

- **Axis** : the CartesianGridLineAnnotation should be associated with horizontal or vertical cartesian axis explicitly.
- **Value** : the place on the associated axis where a line crosses it.

> Note: When the associated axis is numerical - a numeric value is expected, and when it is a CategoricalAxis - a category is expected. 

# CartesianPlotBandAnnotation #

The **CartesianPlotBandAnnotation** represents a vertical or horizontal area that crosses the entire plot area.  

##Features##

- **Axis** : the cartesian plotband annotation needs to be associated with horizontal or vertical axis explicitly.
- **From** : the starting value for the plotband.
- **To** : the ending value for the plotband.
- **Fill** :  Gets or sets the Fill. 

#Example#

    <telerikChart:RadCartesianChart x:Name="chart">
      <telerikChart:RadCartesianChart.BindingContext>
        <viewMoedls:CategoricalViewModel/>
      </telerikChart:RadCartesianChart.BindingContext>
	  
      <telerikChart:RadCartesianChart.HorizontalAxis>
        <telerikChart:CategoricalAxis />
      </telerikChart:RadCartesianChart.HorizontalAxis>
      <telerikChart:RadCartesianChart.VerticalAxis>
        <telerikChart:NumericalAxis x:Name="verticalAxis"/>
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

In the code behind: 

	var lineAnnotation = new CartesianGridLineAnnotation()
	{
	    Axis = this.chart.VerticalAxis, 
	    Value = 80,
	    Stroke = Color.Green,
	    StrokeThickness = Device.OnPlatform(0.5, 2, 2),
	    DashArray = Device.OnPlatform(null, new double[] { 4, 2 }, new double[] { 4, 2 })
	
	};
	
	var bandAnnotation = new CartesianPlotBandAnnotation()
	{
	    Axis = this.chart.VerticalAxis,
	    From = 70,
	    To = 75,
	    Fill = Color.FromHex("33A9A9A9"),
	    StrokeThickness = 2,
	    Stroke = Color.Transparent
	};
	
	
	this.chart.Annotations.Add(lineAnnotation);
	this.chart.Annotations.Add(bandAnnotation);

![Annotations](chart-annotations.png)