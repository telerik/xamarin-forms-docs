---
title: Overview
---

#Overview#

DateTimeContinuousAxis is a special axis that extends the base CartesianAxis class and may be considered as a hybrid between a categorical and a numerical axis. DateTimeContinuousAxis works with categorical data but instead of categories, the axis builds time slots depending on its Minimum, Maximum and MajorStep values.
DateTimeContinuousAxis also expects valid DateTime values so that the data could be plotted correctly. Think of DateTimeContinuousAxis as a timeline where each data point has a certain position, depending on its DateTime value. The timeline range properties are automatically calculated if not set explicitly by the user: the default value of the major step is the smallest difference between any two DateTime values. There might be empty time slots if no data falling into them is found, because the axis behaves like a numerical one.

#Features#

- **Minimum** : The Minimum property defines the start value of the timeline. Specify DateTime.Minimum to clear the value and force the axis to determine it automatically, depending on the smallest DateTime value present.
- **Maximum** : The Maximum property defines the end value of the timeline. Specify DateTime.Maximum to clear the value and force the axis to determine it automatically, depending on the biggest DateTime value present.
- **PlotMode** : The PlotMode property defines the strategy used to position data points along the axis time slots. Three different options are available: { BetweenTicks, OnTicks }.
- **MajorStep** : The MajorStep property defines the user-defined step between two adjacent time slots. Specify double.PositiveInfinity to clear the value and make the axis calculate an automatic step, depending on the smallest difference between any two dates.
- **MajorStepUnit** : The MajorStepUnit property defines what DateTime component the MajorStep property refers to { Year, Quarter, Month, Week, Day, Hour, Minute, Second, Millisecond }.
- **GapLength** : The GapLength property defines the distance (in logical units [0,1]) between two adjacent time slots. The default value is 0.3. As an example, if you have two BarSeries combined in Cluster mode, you can remove the space between the bars by setting the GapLength property to 0.

#Example#

    <telerikChart:RadCartesianChart SelectionPaletteName="LightSelected">
    <telerikChart:RadCartesianChart.BindingContext>
      <viewMoedls:CategoricalViewModel/>
    </telerikChart:RadCartesianChart.BindingContext>

    <telerikChart:RadCartesianChart.HorizontalAxis>
      <telerikChart:DateTimeContinuousAxis LabelFormat="yy" GapLength="0.5" PlotMode="BetweenTicks" MajorStepUnit="Year" MajorStep="2" />
    </telerikChart:RadCartesianChart.HorizontalAxis>
    <telerikChart:RadCartesianChart.VerticalAxis>
      <telerikChart:NumericalAxis/>
    </telerikChart:RadCartesianChart.VerticalAxis>
    <telerikChart:RadCartesianChart.Series>
      <telerikChart:BarSeries ItemsSource="{Binding DateTimeData}">
        <telerikChart:BarSeries.ValueBinding>
          <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
        </telerikChart:BarSeries.ValueBinding>
        <telerikChart:BarSeries.CategoryBinding>
          <telerikChart:PropertyNameDataPointBinding PropertyName="Date"/>
        </telerikChart:BarSeries.CategoryBinding>
      </telerikChart:BarSeries>
    </telerikChart:RadCartesianChart.Series>
    </telerikChart:RadCartesianChart>