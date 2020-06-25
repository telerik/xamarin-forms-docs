---
title: Multiple Axes in Xamarin Chart
description: how to create multiple horizontal and vertical chart axis
type: how-to
page_title: Multiple Chart Axes in Xamarin
slug: chart-xamarin-multiple-axis
position: 
tags: chart, xamarin, multiple, axis, axes, horizontal, vertical, xamarin.forms
ticketid: 1469277
res_type: kb
---

## Environment

<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.2.624.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Chart for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article will show you how to create chart with multiple axis using [Telerik UI for Xamarin RadChart control]({%slug chart-overview%}).

## Solution

Scenario with Multiple vertical and/or horizontal chart axis can be achieved using custom renderer.

Here is a sample RadCartesianChart definition with Line and Bar Series:

```XAML
<Grid>
    <telerikChart:RadCartesianChart Margin="0, 20, 0, 0">

        <telerikChart:RadCartesianChart.BindingContext>
            <local:ViewModel/>
        </telerikChart:RadCartesianChart.BindingContext>

        <telerikChart:RadCartesianChart.HorizontalAxis>
            <telerikChart:CategoricalAxis/>
        </telerikChart:RadCartesianChart.HorizontalAxis>

        <telerikChart:RadCartesianChart.VerticalAxis>
            <telerikChart:NumericalAxis/>
        </telerikChart:RadCartesianChart.VerticalAxis>
        <telerikChart:RadCartesianChart.ChartBehaviors>
            <telerikChart:ChartPanAndZoomBehavior ZoomMode="Both" 
                                                    PanMode="Both" 
                                                    HandleDoubleTap="True"/>
        </telerikChart:RadCartesianChart.ChartBehaviors>
        <telerikChart:RadCartesianChart.Series>
            <telerikChart:BarSeries ItemsSource="{Binding CategoricalData}">
                <telerikChart:BarSeries.ValueBinding>
                    <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
                </telerikChart:BarSeries.ValueBinding>
                <telerikChart:BarSeries.CategoryBinding>
                    <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
                </telerikChart:BarSeries.CategoryBinding>
            </telerikChart:BarSeries>

            <telerikChart:LineSeries ItemsSource="{Binding CategoricalData2}">
                <telerikChart:LineSeries.ValueBinding>
                    <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
                </telerikChart:LineSeries.ValueBinding>
                <telerikChart:LineSeries.CategoryBinding>
                    <telerikChart:PropertyNameDataPointBinding PropertyName="Time"/>
                </telerikChart:LineSeries.CategoryBinding>
            </telerikChart:LineSeries>
        </telerikChart:RadCartesianChart.Series>
    </telerikChart:RadCartesianChart>
</Grid>
```

For the sample project we will use the following business model and ViewModel:

```C#
public class CategoricalData
{
    public object Category { get; set; }
    public double Value { get; set; }
    public DateTime Time { get; set; }
}
public class ViewModel
{
    public ViewModel()
    {
        this.CategoricalData = GetCategoricalData();
        this.CategoricalData2 = GetCategoricalData2();
    }

    public ObservableCollection<CategoricalData> CategoricalData { get; set; }
    public ObservableCollection<CategoricalData> CategoricalData2 { get; set; }

    public static ObservableCollection<CategoricalData> GetCategoricalData()
    {
        var date = DateTime.Today;
        var data = new ObservableCollection<CategoricalData>
        {
            new CategoricalData { Category = "A", Value = 0.63, Time = date.AddDays(1) },
            new CategoricalData { Category = "B", Value = 0.85, Time = date.AddDays(10)},
            new CategoricalData { Category = "C", Value = 0.75, Time = date.AddDays(20)},
            new CategoricalData { Category = "D", Value = 0.96, Time = date.AddDays(30)},
            new CategoricalData { Category = "E", Value = 0.78, Time = date.AddDays(40)},
        };

        return data;
    }

    public static ObservableCollection<CategoricalData> GetCategoricalData2()
    {
        var date = DateTime.Now;
        var data = new ObservableCollection<CategoricalData>
        {
            new CategoricalData { Category = "A", Time = date.AddDays(1) , Value = 0.53},
            new CategoricalData { Category = "B", Time = date.AddDays(10), Value = 0.65},
            new CategoricalData { Category = "C", Time = date.AddDays(20), Value = 0.55},
            new CategoricalData { Category = "D", Time = date.AddDays(30), Value = 0.76},
            new CategoricalData { Category = "E", Time = date.AddDays(40), Value = 0.58},
        };

        return data;
    }
}
```

### Android Custom Renderer:

Create a class inside the Android project, for example **CustomChartRenderer** that inherits from **Telerik.XamarinForms.ChartRenderer.Android.CartesianChartRenderer**

```C#
public class CustomChartRenderer : Telerik.XamarinForms.ChartRenderer.Android.CartesianChartRenderer
{
    public CustomChartRenderer(Context context) : base(context)
    {

    }

    protected override void OnElementChanged(Xamarin.Forms.Platform.Android.ElementChangedEventArgs<Telerik.XamarinForms.Chart.RadCartesianChart> e)
    {
        base.OnElementChanged(e);

        var series = this.Control.Series.ToArray();

        AddSecondaryHorizontalAxis(series[1]);
        AddSecondaryVerticalAxis(series[1]);
    }

    private void AddSecondaryVerticalAxis(Java.Lang.Object lineSeries)
    {
        if (lineSeries is Com.Telerik.Widget.Chart.Visualization.CartesianChart.Series.Categorical.LineSeries)
        {
            var series = lineSeries as Com.Telerik.Widget.Chart.Visualization.CartesianChart.Series.Categorical.LineSeries;

            Com.Telerik.Widget.Chart.Visualization.CartesianChart.Axes.LinearAxis verticalAxisBar = new Com.Telerik.Widget.Chart.Visualization.CartesianChart.Axes.LinearAxis();
            verticalAxisBar.HorizontalLocation = Com.Telerik.Widget.Chart.Engine.Axes.Common.AxisHorizontalLocation.Right;
            series.VerticalAxis = verticalAxisBar;
        }
    }

    private void AddSecondaryHorizontalAxis(Java.Lang.Object lineSeries)
    {
        if (lineSeries is Com.Telerik.Widget.Chart.Visualization.CartesianChart.Series.Categorical.LineSeries)
        {
            var series = lineSeries as Com.Telerik.Widget.Chart.Visualization.CartesianChart.Series.Categorical.LineSeries;

            Com.Telerik.Widget.Chart.Visualization.CartesianChart.Axes.DateTimeCategoricalAxis horizontalAXis = new Com.Telerik.Widget.Chart.Visualization.CartesianChart.Axes.DateTimeCategoricalAxis();
            horizontalAXis.VerticalLocation = Com.Telerik.Widget.Chart.Engine.Axes.Common.AxisVerticalLocation.Top;
            series.HorizontalAxis = horizontalAXis;
        }
    }
}
```

and register the renderer:

```C#
[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(ChartAxis.Droid.CustomChartRenderer))]
```

### iOS Custom Renderer:

Create a call inside the iOS project, for example **CustomChartRenderer** which inherits from **Telerik.XamarinForms.ChartRenderer.iOS.CartesianChartRenderer**

```C#
public class CustomChartRenderer : Telerik.XamarinForms.ChartRenderer.iOS.CartesianChartRenderer
{
    public CustomChartRenderer()
    {

    }

    protected override void UpdateNativeWidget()
    {
        base.UpdateNativeWidget();

        TelerikUI.TKChartNumericAxis tKChartNumericAxis = new TelerikUI.TKChartNumericAxis();
        tKChartNumericAxis.Position = TelerikUI.TKChartAxisPosition.Right;
        this.Control.AddAxis(tKChartNumericAxis);
        var lineSeries = this.Control.Series[1] as TelerikUI.TKChartLineSeries;
        lineSeries.YAxis = tKChartNumericAxis;


        TelerikUI.TKChartDateTimeAxis dateTimeAxis = new TelerikUI.TKChartDateTimeAxis();
        dateTimeAxis.Position = TelerikUI.TKChartAxisPosition.Top;
        dateTimeAxis.MajorTickInterval = 10;
        dateTimeAxis.MajorTickIntervalUnit = TelerikUI.TKChartDateTimeAxisIntervalUnit.Days;
        this.Control.AddAxis(dateTimeAxis);
        lineSeries.XAxis = dateTimeAxis;
    }
}
```

and register the renderer:

```C#
[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(ChartAxis.iOS.CustomChartRenderer))]
```

## See Also

- [Android chart Axes Overview]({%slug chart-axes-overview%})
- [iOS chart Axes Overview]({%slug chart-ios-axes-overview%})