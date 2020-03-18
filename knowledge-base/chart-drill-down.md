---
title: Drill down charts in xamarin.forms
description: How to create drill down chart in xamarin.forms
type: how-to
page_title: Drill down in chart for xamarin
slug: chart-drill-down
position: 
tags: chart, drill, down, xamarin, xamarin.forms, line chart, bar chart, series
ticketid: 1458155
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.1.218.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Chart for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article will show you how the drill down functionality can be implemented in Telerik UI for Xamarin RadChart control.

## Solution

Here is a sample RadCartesianChart definition with Bar Series:

```XAML
<telerikChart:RadCartesianChart x:Name="chart">
    <telerikChart:RadCartesianChart.BindingContext>
        <local:ViewModel/>
    </telerikChart:RadCartesianChart.BindingContext>
    <telerikChart:RadCartesianChart.HorizontalAxis>
        <telerikChart:CategoricalAxis />
    </telerikChart:RadCartesianChart.HorizontalAxis>
    <telerikChart:RadCartesianChart.VerticalAxis>
        <telerikChart:NumericalAxis Minimum="0"/>
    </telerikChart:RadCartesianChart.VerticalAxis>
    <telerikChart:RadCartesianChart.Series>
        <telerikChart:BarSeries ItemsSource="{Binding People}"
                                CategoryBinding="Name"
                                ValueBinding="TripsCount"
                                AllowSelect="True"
                                x:Name="barSeries"/>
    </telerikChart:RadCartesianChart.Series>
    <telerikChart:RadCartesianChart.Behaviors>
        <telerikChart:ChartSelectionBehavior DataPointSelectionMode="Single"
                                                SeriesSelectionMode="None" 
                                                SelectionChanged="SelectionChangedHandler" />
    </telerikChart:RadCartesianChart.Behaviors>
</telerikChart:RadCartesianChart>
```

For the demo we will need the following business models:

The Person business model:

```C#
public class Person
{
    public Person(string name, ObservableCollection<Trip> trips)
    {
        this.Name = name;
        this.Trips = trips;
    }

    public string Name { get; set; }

    public int TripsCount
    {
        get { return this.Trips.Count; }
    }

    public ObservableCollection<Trip> Trips { get; set; }
}
```

The Trip business model

```C#
public class Trip
{
    public Trip(string destination, string type)
    {
        this.Destination = destination;
        this.Type = type;
    }

    public string Destination { get; set; }

    public string Type { get; set; }
}
```

and the Tripagregate business model:

```C#
public class TripsAgregate
{
    public string Type { get; set; }

    public int Count { get; set; }
}
```

then we will need a ViewModel:

```C#
public class ViewModel
{
    public ViewModel()
    {
        this.LoadData();
    }

    public ObservableCollection<Person> People { get; set; }

    private void LoadData()
    {
        this.People = new ObservableCollection<Person>()
        {
            new Person("Jonh", new ObservableCollection<Trip>()
            {
                new Trip("Bulgaria", "ByPlane"),
                new Trip("Boston", "ByCar"),
                new Trip("San Francisco", "ByPlane"),
                new Trip("Schenectady", "ByCar"),
            }),

            new Person("George", new ObservableCollection<Trip>()
            {
                new Trip("New York", "ByPlane"),
                new Trip("Bulgaria", "ByPlane"),
                new Trip("Boston", "ByCar"),
                new Trip("San Francisco", "ByPlane"),
                new Trip("Schenectady", "ByPlane"),
                new Trip("Boston", "ByCar"),
                new Trip("San Francisco", "ByPlane"),
                new Trip("Schenectady", "ByPlane"),
            }),

            new Person("Mark", new ObservableCollection<Trip>()
            {
                new Trip("New York", "ByPlane"),
                new Trip("Bulgaria", "ByPlane"),
            }),
        };
    }
}
```

then lets create the drill down effect:

1. The Tapped data item is found using the [ChartSelectionBehavior](https://docs.telerik.com/devtools/xamarin/controls/chart/behaviors/chart-behaviors-selection-behavior).
2. Then new data for the Chart is generated and shown depending on the item tapped.

here is the SelectionChanged event:

```C#
private void SelectionChangedHandler(object sender, EventArgs e)
{
    var selectedPoint = (sender as ChartSelectionBehavior).SelectedPoints.FirstOrDefault();
    var selectedPerson = (selectedPoint.DataItem as Person);
    if (selectedPerson != null)
    {
        var tripsByType = new ObservableCollection<TripsAgregate>()
        {
             new TripsAgregate() { Type="ByCar", Count = selectedPerson.Trips.Count(t=>t.Type == "ByCar")},
              new TripsAgregate() { Type="ByPlane", Count = selectedPerson.Trips.Count(t=>t.Type == "ByPlane")}
        };

        this.barSeries.ItemsSource = null;

        // choose which series you want to use. Note that some chart series require both axis to be numerical. for more details review our documentation. 
        var series = new LineSeries();
        series.ValueBinding = new PropertyNameDataPointBinding("Count");
        series.CategoryBinding = new PropertyNameDataPointBinding("Type");

        series.ItemsSource = tripsByType;

        this.chart.Series.Add(series);
        //this.barSeries.ValueBinding = new PropertyNameDataPointBinding("Count");
        //this.barSeries.CategoryBinding = new PropertyNameDataPointBinding("Type");

        //this.barSeries.ItemsSource = tripsByType;
    }
}
```