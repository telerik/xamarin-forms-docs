---
title: ChartPanAndZoomBehavior
slug: chart-behaviors-pan-and-zoom
---

# ChartPanAndZoomBehavior #

## Overview ##

With **ChartPanAndZoomBehavior**, RadChart handles the gestures drag, pinch open and pinch close which respectively cause panning, zooming in and zooming out of the associated chart plot area.

>important With R2 2018 SP release Behaviors property of RadChart was replaced with **ChartBehaviors**. Behaviors property is marked as obsolete, so please use **ChartBehaviors** instead.

## Features ##

- **ZoomMode**: Gets or sets value that specifies how the chart will respond to a zoom gesture. The available values are:
	- None
	- Horizontal
	- Vertical
	- Both
- **PanMode**: Gets or sets value that specifies how the chart will respond to a pan gesture. The available values are:
	- None
	- Horizontal
	- Vertical
	- Both
- **HandleDoubleTap**: Determines whether a double-tap gesture will be handled by the behavior to reset the values of the Zoom and ScrollOffset (Pan) properties of the chart.

## Example ##

    <telerikChart:RadCartesianChart>
	  <telerikChart:RadCartesianChart.BindingContext>
	    <viewMoedls:CategoricalViewModel/>
	  </telerikChart:RadCartesianChart.BindingContext>
	
	  <telerikChart:RadCartesianChart.ChartBehaviors>
	  <telerikChart:ChartPanAndZoomBehavior ZoomMode="Horizontal" PanMode="Horizontal" HandleDoubleTap="True"  />
	  </telerikChart:RadCartesianChart.ChartBehaviors>
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
	
