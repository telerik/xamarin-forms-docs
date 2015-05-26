---
title: ScatterSplineSeries
slug: chart-series-scatter-spline-series
---

# ScatterSplineSeries #

## Overview ##

The **ScatterSplineSeries** are represented on the chart as data points connected with curved line segments. The **ScatterSplineSeries** inherit from the[**ScatterPointSeries**]({% slug chart-series-scatter-point-series %}) class and also require both axes of the chart to be of type **NumericalAxis**.

## Features ##

- **Stroke** (Color): changes the color used to draw lines.
- **StrokeThickness** (double): changes the width of the lines.


## Example ##

Here is an example of how to create a basic RadCartesianChart with ScatterSplineSeries in xaml:

	<telerikChart:RadCartesianChart>
	  <telerikChart:RadCartesianChart.BindingContext>
	    <viewMoedls:ScatterViewModel/>
	  </telerikChart:RadCartesianChart.BindingContext>
	  <telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:NumericalAxis/>
	  </telerikChart:RadCartesianChart.HorizontalAxis>
	  <telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:NumericalAxis/>
	  </telerikChart:RadCartesianChart.VerticalAxis>
	  <telerikChart:RadCartesianChart.Series>
	    <telerikChart:ScatterSplineSeries ItemsSource="{Binding ScatterData}">
	      <telerikChart:ScatterSplineSeries.XValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
	      </telerikChart:ScatterSplineSeries.XValueBinding>
	      <telerikChart:ScatterSplineSeries.YValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
	      </telerikChart:ScatterSplineSeries.YValueBinding>
	    </telerikChart:ScatterSplineSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>

Where:

	xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
Here is an example of how to create a RadCartesianChart with ScatterSplineSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    BindingContext = new ScatterViewModel()
	};
	
	var series = new ScatterSplineSeries();
	series.SetBinding(ScatterSplineSeries.ItemsSourceProperty, new Binding("ScatterData"));   
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

Here is the result:
	
![Basic ScatterSplineSeries](images/cartesian-scatter-spline-series-basic-example.png)

Here we make some customization:

	var series = new ScatterSplineSeries { Stroke = new Color(0.6, 0.6, 0.9), StrokeThickness = 5 };