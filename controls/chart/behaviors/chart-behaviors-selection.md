---
title: Chart Selection Behavior
slug: chart-behaviors-selection
---

# Overview #

ChartSelectionBehavior is responsible for selecting, deselecting and reporting the selection of either data points or series. In other words, the selection behavior can target data points, series or both if required.

# Features #

- **DataPointSelectionMode** : Gets or sets the ChartSelectionMode that controls the selection behavior of the data points within the chart series { None, Single, Multiple }.
- **SeriesSelectionMode**: Gets or sets the ChartSelectionMode that controls the selection behavior of the series within the plot area { None, Single, Multiple }.
- **SelectedPoints** : Retrieves all the points from all series within the chart plot area that are currently selected.
- **SelectedSeries** : Retrieves all the series instances within the plot area that are currently selected.

- **ClearSelecton() method** : Removes the current selection within the chart.
- **SelectionChanged EventHandler** : Occurs when a selection has been made.

# Example #

Here's an example that shows how to add ChartSelectionBehavior to a RadChart, set its selection mode and handle its SelectionChanged event where you can get the selected points/series:



    <telerikChart:RadCartesianChart SelectionPaletteName="LightSelected">
    <telerikChart:RadCartesianChart.BindingContext>
      <viewMoedls:CategoricalViewModel/>
    </telerikChart:RadCartesianChart.BindingContext>

    <telerikChart:RadCartesianChart.Behaviors>
      <telerikChart:ChartSelectionBehavior DataPointSelectionMode="Single" SeriesSelectionMode="None" SelectionChanged="SelectionChangedHandler" />
    </telerikChart:RadCartesianChart.Behaviors>
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

Here's the event handler in the code behind:

        private void SelectionChangedHandler(object sender, EventArgs e)
        {
            var selectedPoint = (sender as ChartSelectionBehavior).SelectedPoints.FirstOrDefault();
        }