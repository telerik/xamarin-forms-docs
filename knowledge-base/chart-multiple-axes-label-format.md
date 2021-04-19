---
title: How to apply label format to the chart multiple axes
description: set label format to the chart second vertical or horizontal axes
type: how-to
page_title: Chart Multiple Axes with Label Format
slug: chart-multiple-axes-label-format
position: 
tags: chart, axes, label format, multiple axes, xamarin, android
ticketid: 1365823
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td></td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Chart for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This Help article will show you how to apply LabelFormat to second horizontal ot vertical axis. 

## Solution

### Approach for Android

You will need to create a custom renderer and set the LabelFormat property to the horizontal/vertical axis.

Here is the Chart definition in XAML

```XAML
<Grid>
    <telerikChart:RadCartesianChart Margin="0, 20, 0, 0">
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

The used Business Model and ViewModel

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

Then create a class (for example CustomChartRenderer) inside the Android project which inherits from CartesianChartRenderer:

```C#
using Android.Content;
[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(App6.Droid.CustomChartRenderer))]
namespace App6.Droid
{
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
                // set LabelFormat property
				verticalAxisBar.LabelFormat = "%.2f";
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
                // set LabelFormat property
				horizontalAXis.LabelFormat = "dd-MM-yy";
                series.HorizontalAxis = horizontalAXis;
            }
        }
    }
}
```
