---
title: ScatterAreaSeries
slug: chart-series-scatter-area-series
position: 0
---

# ScatterAreaSeries #

## Overview ##

**RadCartesianChart** visualizes **ScatterAreaSeries** as the area enclosed by the coordinate axes and straight line segments that connect the series data points. The **ScatterAreaSeries** inherit from the **[ScatterPointSeries]()** class and also require both axes of the chart to be of type **NumericalAxis**.

## Features ##

**ScatterAreaSeries** provides the following properties to change its style:

- **Stroke** (Color): changes the color used to draw lines.
- **StrokeThickness** (double): changes the width of the lines.
- **Fill** (Color): changes the color of the chart area.

## Example ##

Here is an example of how to create a basic RadCartesianChart with ScatterAreaSeries in xaml:

	<telerikChart:RadCartesianChart>
	  <telerikChart:RadCartesianChart.BindingContext>
	    <viewModels:ScatterViewModel/>
	  </telerikChart:RadCartesianChart.BindingContext>
	  <telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:NumericalAxis/>
	  </telerikChart:RadCartesianChart.HorizontalAxis>
	  <telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:NumericalAxis/>
	  </telerikChart:RadCartesianChart.VerticalAxis>
	  <telerikChart:RadCartesianChart.Series>
	    <telerikChart:ScatterAreaSeries ItemsSource="{Binding ScatterData}">
	      <telerikChart:ScatterAreaSeries.XValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
	      </telerikChart:ScatterAreaSeries.XValueBinding>
	      <telerikChart:ScatterAreaSeries.YValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
	      </telerikChart:ScatterAreaSeries.YValueBinding>
	    </telerikChart:ScatterAreaSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>
Where:

	xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
Here is an example of how to create a RadCartesianChart with ScatterAreaSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    BindingContext = new ScatterViewModel()
	};
	
	var series = new ScatterAreaSeries();
	series.SetBinding(ScatterAreaSeries.ItemsSourceProperty, new Binding("ScatterData"));   
	series.XValueBinding = new PropertyNameDataPointBinding("XValue");
	series.YValueBinding = new PropertyNameDataPointBinding("YValue");
	
	chart.Series.Add(series);
Here is the sample data:
	
	public class NumericalData
	{
	    public double XValue { get; set; }
	    public double YValue { get; set; }
	}

	public class ScatterViewModel
	{
	    private static Random random = new Random();
	
	    public ScatterViewModel()
	    {
	        this.ScatterData = GetScatterData(10, 0.1, 0.1, this.GenerateX, this.GenerateY);
	    }
	
	    public ObservableCollection<NumericalData> ScatterData { get; set; }
	
	    public static ObservableCollection<NumericalData> GetScatterData(int dataCount, double xDispersion, double yDispersion, Func<int, double> xFunc, Func<int, double> yFunc)
	    {
	        var data = new ObservableCollection<NumericalData>();
	        for (int i = 0; i < dataCount; i++)
	        {
	            data.Add(new NumericalData() { XValue = xFunc(i) + xDispersion * random.NextDouble(), YValue = yFunc(i) + yDispersion * random.NextDouble() });
	        }
	
	        return data;
	    }
	
	    private double GenerateX(int i)
	    {
	        return 1 + Math.Sin(i);
	    }
	
	    private double GenerateY(int i)
	    {
	        return i;
	    }
	}



![Basic ScatterAreaSeries](images/cartesian-scatter-area-series-basic-example.png)

Here we make some customization:

	var series = new ScatterAreaSeries { Stroke = new Color(0.6, 0.6, 0.9), StrokeThickness = 5, Fill = new Color(0.8, 0.8, 1) };
