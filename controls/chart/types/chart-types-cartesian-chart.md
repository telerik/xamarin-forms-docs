---
title: Cartesian Chart
position: 1
slug: chart-types-cartesian-chart
---
# RadCartesianChart #

This chart visualizes its data points using the Cartesian coordinate system. The X and Y axes define how the coordinates of each point in the plot area are calculated and the series type define the way these data points will be visualized.  
![Cartesian Chart](images/cartesian-chart-example.png)

## Properties

The RadCartesianChart control has the following properties:

* **HorizontalAxis**: Gets or sets the visual Axis instance that will be used to plot points along the horizontal (X) axis.
* **VesrticalAxis**: Gets or sets the visual Axis instance that will be used to plot points along the vertical (Y) axis.
* **Series**: Gets a collection of all series presented by the chart instance.
* **Palette**: Gets or sets the **ChartPalette** instance that defines the appearance of the chart.
* **PaletteName**: Gets or sets the name of the predefined Palette that will be applied to the chart.
* **SelectionPalette**: Gets or sets the **ChartPalette** instance that defines the appearance of the chart for selected series and/or data points.
* **SelectionPaletteName**: Gets or sets the name of the predefined SelectionPalette that will be applied to the chart.
* **Behaviors**: Gets a collection of all enabled behaviors.
* **Grid**: Gets or sets the CartesianChartGrid instance used to decorate the chart plot area with grid and strip lines.
* **Annotations**: Gets a collection of all annotations presented by the chart instance.
* **MaxZoom**: Gets or sets the maximum allowed zoom.

## Methods

> All chart methods should be called after the native element has been loaded.

* **SetPanOffset**(Point offset): Sets an offset to the chart measured from the upper left corner in pixels.
* **SetZoom**(Size zoom): Sets the zoom of the chart.

## Supported Axes ##

**RadCartesianChart** needs to have two axes which will be used to calculate correctly the position of each data point. Usually one of the axes will be used to display the category of each data point and the other will represent its value. Here are the supported axes:

- [**Categorical**]({% slug axes-categorical-axis %}): Arranges the plotted data points in categories where the key of each category is the point's value (if available) for that axis or its index within the points collection. The point's coordinate, specified by this axis is discrete and is calculated depending on the size of the category slot where the point resides.
- [**Numerical**]({% slug axes-numerical-axis %}): Calculates the coordinate of each data point, depending on the actual numerical value this point provides for the axis. A NumericalAxis exposes Minimum and Maximum properties to allow for explicit definition of the range of values visible on this axis. If these properties are not specified, the axis will automatically calculate the range, depending on the minimum and maximum data point values.
- [**Date-Time Continuous**]({% slug axes-date-time-continuous-axis %}): This is a special axis that expects each data point to provide a DateTime structure as its value for this axis. You can think of DateTimeContinuousAxis as a timeline where the coordinate of each data point is calculated depending on the position of its associated DateTime on the timeline. The base unit (or the timeline step) of the axis is calculated depending on the smallest difference between any two dates.

## Supported Series ##
The following Cartesian series are available:

- **Categorical**: Categorical series need a [**Numerical**]({% slug axes-numerical-axis %}) and a [**Categorical**]({% slug axes-categorical-axis %})/[**Date-Time Continuous**]({% slug axes-date-time-continuous-axis %}) axis in order to get properly plotted.
    - [**Bar**]({% slug chart-series-bar-series %}): Data points are represented by a box where the height (width) of the box is the distance between the point’s numerical value and the categorical axis that plots the point. Bars may be either "horizontal" or "vertical" depending on whether the categorical axis is specified as an "X-axis" or as a "Y-axis".
    - [**Line**]({% slug chart-series-line-series %}): Data points are connected with straight line segments.
    - [**Spline**]({% slug chart-series-spline-series %}): Data points are connected with smooth line segments.
    - [**Area**]({% slug chart-series-area-series %}): Data points and the corresponding coordinate axis enclose an area that may be optionally stroked and/or filled.
    - [**SplineArea**]({% slug chart-series-spline-area-series %}): An area, where points are connected with smooth rather than straight segments.

Each of the above series of the same type may be combined in either [stacks or clusters]({% slug chart-series-combine-mode %}). Combinations are formed when more than one data point from different series fall within the same category. The "Cluster" combine mode will position such points next to each other while the "Stack" combine mode will arrange such points in a stack-like structure. When stacks are formed, the numerical axis (if present) will consider each stack as a single entity and its sum will be the actual value used rather than each point’s one.

- **Scatter**: Scatter series need two Numerical axes in order to get properly plotted. Scatted data provides both the X and the Y coordinate.
    - [**ScatterPoint**]({% slug chart-series-scatter-point-series %}): Data points are represented by an arbitrary template.
    - [**ScatterLine**]({% slug chart-series-scatter-line-series %}): Data points are connected with straight line segments.
    - [**ScatterSpline**]({% slug chart-series-scatter-spline-series %}): Data points are connected with smooth line segments.
    - [**ScatterArea**]({% slug chart-series-scatter-area-series %}): Data points and the horizontal axis enclose an area that may be optionally stroked and/or filled.
    - [**ScatterSplineArea**]({% slug chart-series-scatter-spline-area-series %}): A ScatterArea, where points are connected with smooth rather than straight segments.

## Example ##

1. Define RadCartesianChart:  
	- XAML definition:
	
			<telerikChart:RadCartesianChart>
			</telerikChart:RadCartesianChart>

	- C# definition:
	
			var chart = new RadCartesianChart();

1. The RadCartesianChart control needs two axes - horizontal and vertical to plot its data.
	- XAML definition:

			<telerikChart:RadCartesianChart.HorizontalAxis>
			  <telerikChart:CategoricalAxis/>
			</telerikChart:RadCartesianChart.HorizontalAxis>
			<telerikChart:RadCartesianChart.VerticalAxis>
			  <telerikChart:NumericalAxis/>
			</telerikChart:RadCartesianChart.VerticalAxis>

	- C# definition:
	
			chart.HorizontalAxis = new CategoricalAxis();
			chart.VerticalAxis = new NumericalAxis();

1. After that you can add the series to the RadCartesianChart.Series collection:

	- XAML definition:

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

	- C# definition:
	
			var series = new BarSeries();
			series.SetBinding(BarSeries.ItemsSourceProperty, new Binding("CategoricalData"));
			series.ValueBinding = new PropertyNameDataPointBinding("Value");
			series.CategoryBinding = new PropertyNameDataPointBinding("Category");            
			chart.Series.Add(series);
1. You also have to set a BindingContext of the chart if none of its parents have a context:
 
	- XAML definition:
	
			<telerikChart:RadCartesianChart.BindingContext>
			  <local:ViewModel/>
			</telerikChart:RadCartesianChart.BindingContext>
	Where `local` is

			xmlns:local="clr-namespace:[The namespace where the ViewModel class is defined];assembly=[The assembly name]"
	- C# definition:
		
			chart.BindingContext = new ViewModel();

Here is the full definition of the chart:

		<telerikChart:RadCartesianChart>
		  <telerikChart:RadPieChart.BindingContext>
		    <local:ViewModel/>
		  </telerikChart:RadPieChart.BindingContext>
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

And this is the sample data

		public class CategoricalData
		{
		    public object Category { get; set; }
		
		    public double Value { get; set; }
		}

		public class ViewModel
		{
		    public ViewModel()
		    {
		        this.CategoricalData = GetCategoricalData();
		    }
		
		    public ObservableCollection<CategoricalData> CategoricalData { get; set; }
		
		    public static ObservableCollection<CategoricalData> GetCategoricalData()
		    {
		        var data = new ObservableCollection<CategoricalData>
		        {
		            new CategoricalData { Category = "A", Value = 0.63 },
		            new CategoricalData { Category = "B", Value = 0.85 },
		            new CategoricalData { Category = "C", Value = 0.75 },
		            new CategoricalData { Category = "D", Value = 0.96 },
		            new CategoricalData { Category = "E", Value = 0.78 },
		        };
		
		        return data;
		    }
		}
