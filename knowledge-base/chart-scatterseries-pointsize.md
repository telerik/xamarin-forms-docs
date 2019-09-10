---
title: How to change point size of the ScatterPointSeries of RadChart
description: Shows how to customize the point size of Chart ScatterPointSeries through renderers
type: how-to
page_title: How to make the bubbles of the scatter chart bigger on Android/iOS
slug: chart-scatterseries-pointsize
position: 
tags: chart, scatterpointseries, bubbles, size
ticketid: 1427839
res_type: kb
---

## Environment
<table>
    <tbody>
	    <tr>
	    	<td>Product Version</td>
	    	<td>2019.2.802.1</td>
	    </tr>
	    <tr>
	    	<td>Product</td>
	    	<td>Chart for Xamarin</td>
	    </tr>
    </tbody>
</table>


## Description

The **The ScatterPointSeries** are represented on the chart as not connected data points. You could modify the size of the points displayed in the plot area through [custom renderers]({%slug chart-how-to-register-custom-renderer%}) on Android and iOS.

## Solution

* For Android you would need to set **PointSize** property of the ScatterPointSeries:

```C#
using Android.Content;
using ChartCustomPoints.Droid;
using Telerik.XamarinForms.Chart;
using Telerik.XamarinForms.ChartRenderer.Android;
using Xamarin.Forms.Platform.Android;

[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(CustomChartRenderer))]
namespace ChartCustomPoints.Droid
{
    public class CustomChartRenderer : CartesianChartRenderer
    {
        public CustomChartRenderer(Context context) : base(context)
        {

        }
        protected override void OnElementChanged(ElementChangedEventArgs<RadCartesianChart> e)
        {
            base.OnElementChanged(e);
            var series = this.Control.Series.ToArray();
            var scatterSeries = series[0] as Com.Telerik.Widget.Chart.Visualization.CartesianChart.Series.Scatter.ScatterPointSeries;
            scatterSeries.PointSize = 30;
        }

    }
}
```

* For iOS you would need to apply **PointShape** of the Style of the TKChartScatterSeries:

```C#
using ChartCustomPoints.iOS;
using System.Drawing;
using Telerik.XamarinForms.Chart;
using Telerik.XamarinForms.ChartRenderer.iOS;
using TelerikUI;
using Xamarin.Forms.Platform.iOS;

[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(CustomChartRenderer))]
namespace ChartCustomPoints.iOS
{
    public class CustomChartRenderer : CartesianChartRenderer
    {
        protected override void OnElementChanged(ElementChangedEventArgs<RadCartesianChart> e)
        {
            base.OnElementChanged(e);
            
            if (this.Control == null) return;

            var series = this.Control.Series;
            var scatterSeries = series[0] as TKChartScatterSeries;

            scatterSeries.Style.PointShape = new TKPredefinedShape(TKShapeType.Circle, new SizeF(30, 30));            
        }
    }
}
```

## See Also

- [Chart ScatterPointSeries]({%slug chart-series-scatter-point-series%})
- [Chart Custom Renderers]({%slug chart-how-to-register-custom-renderer%})
