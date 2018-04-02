---
title: BarSeries
slug: chart-series-bar-series
position: 0
---

# BarSeries #

## Overview ##

**RadCartesianChart** visualizes each data point from the **BarSeries** as a rectangle. These rectangles (or bars) can be displayed either horizontally, or vertically, depending on whether the **CategoricalAxis** is the vertical axis or the horizontal. When the horizontal axis is categorical, the rectangles are displayed vertically. This means that they have equal width while their height represents the numerical value of each of the data points. On the other hand, when the vertical axis is categorical, the rectangles have equal height, while their width represents the value of the data point. 

The **BarSeries** inherits from **CategoricalSeries** and requires one **CategoricalAxis** and one **NumericalAxis**. 

>tip You could check the common CategoricalSeries features that are also applicable to **BarSeries** at the following link: [Series Features]({%slug chart-series-overview %}##features).

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

	public class CategoricalData
	{
	    public object Category { get; set; }
	    public double Value { get; set; }
	}

	public class CategoricalViewModel
	{
	    private static Random random = new Random();
	    private static string[] categories = new string[] { "Greenings", "Perfecto", "NearBy", "Family", "Fresh" };
	
	    public CategoricalViewModel()
	    {
	        this.CategoricalData = GetCategoricalData();
	    }
	
	    public ObservableCollection<CategoricalData> CategoricalData { get; set; }
	
	    public static ObservableCollection<CategoricalData> GetCategoricalData()
	    {
	        var data = new ObservableCollection<CategoricalData>();
	        for (int i = 0; i < categories.Length; i++)
	        {
	            data.Add(new CategoricalData() { Value = random.Next(50, 100), Category = categories[i] });
	        }
	
	        return data;
	    }
	}


And here is the result:

![Basic BarSeries](images/cartesian-bar-series-basic-example.png)

## See Also
- [Categorical Series Overview]({%slug chart-series-overview %})
- [Categorical Series Orientation]({%slug chart-series-orientation %})
- [Cartegorical Series Combine Mode]({%slug chart-series-combine-mode %})