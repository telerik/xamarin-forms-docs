---
title: Chart Label Format for secondary Y-Axis
description: 
type: how-to
page_title: Label Format for Chart secondary Y-Axis
slug: chart-label-format-multple-axes
position: 
tags: chart, xamarin, label format, y axis, multiple axes
ticketid: 1507582
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.3.1106.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Chart for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This help article will show you how to apply LabelFormat to the chart multiple axes. Secondary Y / X axes.

## Solution

You will need to screate a custom renderer

Here is the Chart Definition in XAML

```XAML
<telerikChart:RadCartesianChart>
    <telerikChart:RadCartesianChart.BindingContext>
        <local:ViewModel/>
    </telerikChart:RadCartesianChart.BindingContext>
    <telerikChart:RadCartesianChart.HorizontalAxis>
        <telerikChart:CategoricalAxis/>
    </telerikChart:RadCartesianChart.HorizontalAxis>
    <telerikChart:RadCartesianChart.VerticalAxis>
        <telerikChart:NumericalAxis LabelFormat="p1"/>
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
        <telerikChart:LineSeries ItemsSource="{Binding CategoricalData2}">
            <telerikChart:LineSeries.ValueBinding>
                <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
            </telerikChart:LineSeries.ValueBinding>
            <telerikChart:LineSeries.CategoryBinding>
                <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
            </telerikChart:LineSeries.CategoryBinding>
        </telerikChart:LineSeries>
    </telerikChart:RadCartesianChart.Series>
</telerikChart:RadCartesianChart>
```

The business model and ViewModel used

```C#
public class CategoricalData
{
    public object Category { get; set; }
    public double Value { get; set; }
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
        var data = new ObservableCollection<CategoricalData>
    {
        new CategoricalData { Category = "A", Value = 0.63},
        new CategoricalData { Category = "B", Value = 0.85},
        new CategoricalData { Category = "C", Value = 0.75},
        new CategoricalData { Category = "D", Value = 0.96},
        new CategoricalData { Category = "E", Value = 0.78},
    };

        return data;
    }

    public static ObservableCollection<CategoricalData> GetCategoricalData2()
    {
        var data = new ObservableCollection<CategoricalData>
    {
        new CategoricalData { Category = "A", Value = 0.53},
        new CategoricalData { Category = "B", Value = 0.65},
        new CategoricalData { Category = "C", Value = 0.55},
        new CategoricalData { Category = "D", Value = 0.76},
        new CategoricalData { Category = "E", Value = 0.58},
    };

        return data;
    }
}
```

## Custom Renderer Implementation for Android

Create a class inside the **Android** project which inherits from `CartesianChartRenderer`. Use the `Model.LabelValueToStringConverter` of the axes in order to set the format you want to apply to the chart axes.

```C#
using Android.Content;
using Telerik.XamarinForms.Chart;

[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(CustomAxesLabels.Droid.CustomChartRenderer))]
namespace CustomAxesLabels.Droid
{
    public class CustomChartRenderer : Telerik.XamarinForms.ChartRenderer.Android.CartesianChartRenderer
    {
        public CustomChartRenderer(Context context) : base(context)
        {

        }

        protected override void OnElementChanged(Xamarin.Forms.Platform.Android.ElementChangedEventArgs<Telerik.XamarinForms.Chart.RadCartesianChart> e)
        {
            base.OnElementChanged(e);
            if (e.NewElement is RadCartesianChart chart)
            {
                var series = this.Control.Series.ToArray();
                AddSecondaryVerticalAxis(series[1]);
            }
        }

        private void AddSecondaryVerticalAxis(Java.Lang.Object lineSeries)
        {
            if (lineSeries is Com.Telerik.Widget.Chart.Visualization.CartesianChart.Series.Categorical.LineSeries)
            {
                var series = lineSeries as Com.Telerik.Widget.Chart.Visualization.CartesianChart.Series.Categorical.LineSeries;

                Com.Telerik.Widget.Chart.Visualization.CartesianChart.Axes.LinearAxis verticalAxisBar = new Com.Telerik.Widget.Chart.Visualization.CartesianChart.Axes.LinearAxis();
                verticalAxisBar.HorizontalLocation = Com.Telerik.Widget.Chart.Engine.Axes.Common.AxisHorizontalLocation.Right;
                
				
				// here is how to apply Label Format to the second vertical axes
				verticalAxisBar.Model.LabelValueToStringConverter = new Telerik.XamarinForms.ChartRenderer.Android.LinearAxisLabelFormatter("P2", null);
                series.VerticalAxis = verticalAxisBar;
            }
        }
    }
}
```