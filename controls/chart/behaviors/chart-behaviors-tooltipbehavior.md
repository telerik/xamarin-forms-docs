---
title: Chart ToolTip Behavior
slug: chart-behaviors-tooltipbehavior
---

#Overview#

ChartTooltipBehavior is responsible for rendering concise information about a data point in a small popup which displays close to its relevant data point.

#Features#

- **TriggerMode** : Determines the gestures on which the ChartToolTipBehavior should show a tool tip { Tap, Hold }.


#Example#

    <telerikChart:RadCartesianChart>
    <telerikChart:RadCartesianChart.BindingContext>
      <viewMoedls:CategoricalViewModel/>
    </telerikChart:RadCartesianChart.BindingContext>

    <telerikChart:RadCartesianChart.Behaviors>
      <telerikChart:ChartTooltipBehavior TriggerMode="Tap"/>
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