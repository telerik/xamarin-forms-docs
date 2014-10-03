---
title: ChartTrackBallBehavior
slug: chart-behaviors-trackball
---
# Overview #
**ChartTrackBallBehavior** is responsible for rendering concise information about several data points in a small popup which displays over its relevant data points. A horizontal or vertical line is also drawn through the data points for maximum clarity.

# Features #

- **ShowTrackInfo**:  Determines whether the visual information for all the closest data points will be displayed.

# Example #

    <telerikChart:RadCartesianChart>
	  <telerikChart:RadCartesianChart.BindingContext>
	    <viewMoedls:CategoricalViewModel/>
	  </telerikChart:RadCartesianChart.BindingContext>
	
	  <telerikChart:RadCartesianChart.Behaviors>
	    <telerikChart:ChartTrackBallBehavior ShowTrackInfo="True"  />
	  </telerikChart:RadCartesianChart.Behaviors>
	  <telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:CategoricalAxis/>
	  </telerikChart:RadCartesianChart.HorizontalAxis>
	  <telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:NumericalAxis/>
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

Here is how the trackball looks:

![Tooltip Behavior Windows Phone](chart-behaviors-trackball-behavior-WP.png)
![Tooltip Behavior Android](chart-behaviors-trackball-behavior-andro.png)
![Tooltip Behavior iOS](chart-behaviors-trackball-behavior-iOS.png)