---
title: CategoricalAxis
---

# CategoricalAxis #

When **RadCartesianChart** visualizes **CategoricalSeries**, it needs an axis that can represent the different categories. The **CategoricalAxis** extends the base **CartesianAxis** class and is used to displays a range of categories. Categories are built depending on the Category value of each CategoricalDataPoint present in the owning CategoricalSeries chart series. The axis is divided into discrete slots and each data point is visualized in the slot corresponding to its categorical value.
## Example ##
	<telerikChart:RadCartesianChart>
	  <telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:CategoricalAxis/>
	  </telerikChart:RadCartesianChart.HorizontalAxis>
	</telerikChart:RadCartesianChart
## Features ##
### GapLength ###
Defines the distance (in logical units) between two adjacent categories. Default value is 0.3. For example if you have BarSeries, you can decrease the space between the bars from the different categories by setting the GapLength to a value lower than 0.3.

	<telerikChart:CategoricalAxis GapLength="0.6"/>
### MajorTickInterval ###
### PlotMode ###