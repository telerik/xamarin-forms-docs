---
title: ScatterPointSeries
slug: chart-series-scatter-point-series
---

# ScatterPointSeries #

## Overview ##

The **ScatterPointSeries** are represented on the chart as not connected data points. Each scatter data point has to provide values for the X and Y coordinate on the **RadCartesianChart**. The **ScatterPointSeries** require both axes of the chart to be of type **NumericalAxis**.

## Features ##

- **XValueBinding** : Gets or sets the binding that will be used to fill the XValue of ScatterDataPoint members of the DataPoints collection.
- **YValueBinding** : Gets or sets the binding that will be used to fill the YValue of ScatterDataPoint members of the DataPoints collection.

## Example ##

Here is an example of how to create a basic RadCartesianChart with ScatterPointSeries in xaml:

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
	    <telerikChart:ScatterPointSeries ItemsSource="{Binding ScatterData}">
	      <telerikChart:ScatterPointSeries.XValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
	      </telerikChart:ScatterPointSeries.XValueBinding>
	      <telerikChart:ScatterPointSeries.YValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
	      </telerikChart:ScatterPointSeries.YValueBinding>
	    </telerikChart:ScatterPointSeries>
	  </telerikChart:RadCartesianChart.Series>
	</telerikChart:RadCartesianChart>
Where:

	xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
Here is an example of how to create a RadCartesianChart with ScatterPointSeries in code:

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new NumericalAxis(),
	    BindingContext = new ScatterViewModel()
	};
	
	var series = new ScatterPointSeries();
	series.SetBinding(ScatterPointSeries.ItemsSourceProperty, new Binding("ScatterData"));   
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
And here is the result:

![Basic ScatterPointSeries](images/cartesian-scatter-point-series-basic-example.png)
