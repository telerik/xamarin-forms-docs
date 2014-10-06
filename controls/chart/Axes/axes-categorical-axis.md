---
title: CategoricalAxis
slug: axes-categorical-axis
---

# CategoricalAxis #

When **RadCartesianChart** visualizes **CategoricalSeries**, it needs an axis that can represent the different categories. The **CategoricalAxis** extends the base **CartesianAxis** class and is used to displays a range of categories. Categories are built depending on the Category value of each CategoricalDataPoint present in the owning CategoricalSeries chart series. The axis is divided into discrete slots and each data point is visualized in the slot corresponding to its categorical value.

- **GapLength** :
Defines the distance (in logical units [0,1]) between two adjacent categories. Default value is 0.3. For example if you have BarSeries, you can decrease the space between the bars from the different categories by setting the GapLength to a value lower than 0.3.

- **MajorTickInterval** :  Defines the step at which major ticks are generated. The default value is 1. This property will also affect axis labels as they are generated on a per major tick basis.

- **PlotMode** : Defines the strategy used to position data points along the axis category slots. The possible values are:
	- BetweenTicks
	- OnTicks

#Example#

    <telerikChart:RadCartesianChart SelectionPaletteName="LightSelected">
	  <telerikChart:RadCartesianChart.BindingContext>
	    <viewMoedls:CategoricalViewModel/>
	  </telerikChart:RadCartesianChart.BindingContext>
	    
	  <telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:CategoricalAxis PlotMode="OnTicks" MajorTickInterval="2" GapLength="0.5"/>
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

![CategoricalAxis](axes-categorical-axis-example.png)