---
title: NumericalAxis
---
# Overview #

# Features #

- **Minimum** : Gets or sets the minimum value of the axis. By default, the axis itself will calculate the minimum, depending on the minimum value of the plotted data points.
- **Maximum** : Gets or sets the maximum value of the axis. By default, the axis itself will calculate the maximum, depending on the maximum value of the plotted data points.
- **RangeExtendDirection**: Defines a value that specifies how the actual range of the axis (when auto-calculated) should be extended. By default the axis will calculate its minimum and maximum in such a way that the data is best visualized. For example, if the maximum data point value is 50, the axis will make its Maximum 50 + MajorStep, so that the plotted data will not intersect with the top of the plot area. Four different values are available:
{ None, Positive, Negative, Both }.
- **MajorStep**: Specifies the step at which the major ticks are positioned on the axis. If this property is set to 0, the axis automatically calculate the step so that the data will be visualized in the best possible way.

#Example#

    <telerikChart:RadCartesianChart SelectionPaletteName="LightSelected">
    <telerikChart:RadCartesianChart.BindingContext>
      <viewMoedls:CategoricalViewModel/>
    </telerikChart:RadCartesianChart.BindingContext>

    <telerikChart:RadCartesianChart.HorizontalAxis>
      <telerikChart:CategoricalAxis />
    </telerikChart:RadCartesianChart.HorizontalAxis>
    <telerikChart:RadCartesianChart.VerticalAxis>
      <telerikChart:NumericalAxis Minimum="-20"  MajorStep="10" RangeExtendDirection="None"/>
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
