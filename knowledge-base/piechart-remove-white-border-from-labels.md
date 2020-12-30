---
title: Remove white boxes from Pie Chart Donut Chart
description: how to remove the border around the labels inside the pie chart donut chart
type: how-to
page_title: Remove white border from pie chart donut chart
slug: piechart-remove-white-border-from-labels
position: 
tags: chart, pie, donut, white, border, label, android, xamarin.forms
ticketid: 1160751
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.3.1207.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Chart for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This help article will show you how to remove the white border around the labels in the Pie Chart / Donut Chart on Android

## Solution

This scenario could be achieved using a custom renderer. 

Create a class inside the Android project, for example CustomPieChartRenderer which inherits from PieChartRenderer. Override the OnElementChanged method and assign a custom class to the Label Renderer for its series:

## Solution for PieChart with PieSeries


RadPieChart definition

```XAML
<telerikChart:RadPieChart>
    <telerikChart:RadPieChart.Series>
        <telerikChart:PieSeries ShowLabels="True"
                                ValueBinding="Value"
                                ItemsSource="{Binding Data}" />
    </telerikChart:RadPieChart.Series>
</telerikChart:RadPieChart>
```

the used business model and view model:

```C#
public class CategoricalData
{
    public object Category { get; set; }

    public double Value { get; set; }
}

public class ViewModel
{
    public ObservableCollection<CategoricalData> Data { get; set; }

    public ViewModel()
    {
        this.Data = GetCategoricalData();
    }

    private static ObservableCollection<CategoricalData> GetCategoricalData()
    {
        var data = new ObservableCollection<CategoricalData>
    {
        new CategoricalData { Category = "Data1", Value = 100 },
    };
        return data;
    }
}
```

The custom renderer and custom label renderer implementations:

```C#
using Android.Content;
using Android.Graphics;
using Android.Runtime;
using App5.Droid;
using Com.Telerik.Widget.Chart.Engine.ElementTree;
using Com.Telerik.Widget.Chart.Visualization.PieChart;
using System;
using System.Linq;
using Telerik.XamarinForms.Chart;
using Telerik.XamarinForms.ChartRenderer.Android;
using Xamarin.Forms.Platform.Android;

[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(CustomPieChartRenderer))]
namespace App5.Droid
{
    public class CustomPieChartRenderer : PieChartRenderer
    {
        public CustomPieChartRenderer(Context context) : base(context)
        {

        }

        protected override void OnElementChanged(ElementChangedEventArgs<RadPieChart> e)
        {
            base.OnElementChanged(e);

            var series = this.Control.Series.ToArray()?.FirstOrDefault() as Com.Telerik.Widget.Chart.Visualization.PieChart.PieSeries;
            if (series != null)
            {
                series.LabelRenderer = new CustomPieSeriesLabelRenderer(series) { LabelFormat = "{0:F1} %" };
            }
        }
    }
    class CustomPieSeriesLabelRenderer : PieSeriesLabelRenderer
    {
        private readonly Paint strokePaint = new Paint();

        protected CustomPieSeriesLabelRenderer(IntPtr javaReference, JniHandleOwnership transfer)
            : base(javaReference, transfer)

        {
        }

        public CustomPieSeriesLabelRenderer(Com.Telerik.Widget.Chart.Visualization.PieChart.PieSeries p0)
            : base(p0)
        {
        }


        public override void RenderLabel(Canvas canvas, ChartNode node)
        {
            this.strokePaint.Color = Color.Transparent;
            LabelStrokePaint = strokePaint;

            base.RenderLabel(canvas, node);
        }

        protected override void DrawLabelText(Canvas canvas, string text, float p2, float p3)
        {
            base.DrawLabelText(canvas, text, p2, p3);
        }

        protected override void DrawLabelBackground(Canvas canvas, Path path, int p2)
        {
            base.DrawLabelBackground(canvas, path, p2);
        }

        protected override Paint GetLabelFillPaint(int p0)
        {
            return base.GetLabelFillPaint(p0);
        }
    }
}
```

## Solution with PieChart with Donut Series

RadPieChart definition

```XAML
<telerikChart:RadPieChart>
    <telerikChart:RadPieChart.Series>
        <telerikChart:DonutSeries ShowLabels="True"
                                  InnerRadiusFactor="0.4"
                                  ValueBinding="Value"
                                  ItemsSource="{Binding Data}" />
    </telerikChart:RadPieChart.Series>
</telerikChart:RadPieChart>
```

the used business model and view model:

```C#
public class CategoricalData
{
    public object Category { get; set; }

    public double Value { get; set; }
}

public class ViewModel
{
    public ObservableCollection<CategoricalData> Data { get; set; }

    public ViewModel()
    {
        this.Data = GetCategoricalData();
    }

    private static ObservableCollection<CategoricalData> GetCategoricalData()
    {
        var data = new ObservableCollection<CategoricalData>
    {
        new CategoricalData { Category = "Data1", Value = 100 },
    };
        return data;
    }
}
```

The custom renderer  and custom Label Renderer implementatons

```C#
using Android.Content;
using Android.Graphics;
using Android.Runtime;
using App5.Droid;
using Com.Telerik.Widget.Chart.Engine.ElementTree;
using Com.Telerik.Widget.Chart.Visualization.PieChart;
using System;
using System.Linq;
using Telerik.XamarinForms.Chart;
using Telerik.XamarinForms.ChartRenderer.Android;
using Xamarin.Forms.Platform.Android;

[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(CustomPieChartRenderer))]
namespace App5.Droid
{
    public class CustomPieChartRenderer : PieChartRenderer
    {
        public CustomPieChartRenderer(Context context) : base(context)
        {

        }

        protected override void OnElementChanged(ElementChangedEventArgs<RadPieChart> e)
        {
            base.OnElementChanged(e);

            var series = this.Control.Series.ToArray()?.FirstOrDefault() as Com.Telerik.Widget.Chart.Visualization.PieChart.DoughnutSeries;
            if (series != null)
            {
                series.LabelRenderer = new CustomPieSeriesLabelRenderer(series) { LabelFormat = "{0:F1} %" };
            }
        }
    }
    class CustomPieSeriesLabelRenderer : PieSeriesLabelRenderer
    {
        private readonly Paint strokePaint = new Paint();

        protected CustomPieSeriesLabelRenderer(IntPtr javaReference, JniHandleOwnership transfer)
            : base(javaReference, transfer)

        {
        }

        public CustomPieSeriesLabelRenderer(Com.Telerik.Widget.Chart.Visualization.PieChart.PieSeries p0)
            : base(p0)
        {
        }


        public override void RenderLabel(Canvas canvas, ChartNode node)
        {
            this.strokePaint.Color = Color.Transparent;
            LabelStrokePaint = strokePaint;

            base.RenderLabel(canvas, node);
        }

        protected override void DrawLabelText(Canvas canvas, string text, float p2, float p3)
        {
            base.DrawLabelText(canvas, text, p2, p3);
        }

        protected override void DrawLabelBackground(Canvas canvas, Path path, int p2)
        {
            base.DrawLabelBackground(canvas, path, p2);
        }

        protected override Paint GetLabelFillPaint(int p0)
        {
            return base.GetLabelFillPaint(p0);
        }
    }
}
```
