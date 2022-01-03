---
title: Set the width of chart candles 
description: how I can set the width of candles
type: how-to
page_title: Set width to the candles of the chart candlesstick series
slug: chart-set-width-candles-stick-series
position: 
tags: chart. series, width, candles
ticketid: 1547538
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.3.1110.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Chart for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article will show you how to apply a width to the iOS Chart CandlesStickSeries. 

## Solution

The native `TKChartCandlestickSeries` inherits from `TKChartOhlcSeries` which inherits from `TKChartColumnSeries`. 
There are `MaxColumnWidth` and `MinColumnWidth` properties inside the `TKChartColumnSeries`. 

Applying a width to the candles can be achieved using these two properties. The solution requires a custom renderer for iOS.

1. Create a class inside the iOS project for example `CustomChartRenderer` which inherits from `CartesianChartRenderer`. 

1. Override the `OnElementChanged` method and implement the if statement to check whether the series is `TKChartCandlestickSeries`. Inside the if statement set `MaxColumnWidth` and `MinColumnWidth`:

```C#
using System.Linq;
using Telerik.XamarinForms.ChartRenderer.iOS;
using TelerikUI;
using TestACV.iOS;
using Xamarin.Forms;
using Xamarin.Forms.Platform.iOS;

[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(CustomChartRenderer))]

namespace TestACV.iOS
{
    public class CustomChartRenderer : CartesianChartRenderer
    {
        protected override void OnElementChanged(ElementChangedEventArgs<Telerik.XamarinForms.Chart.RadCartesianChart> e)
        {
            base.OnElementChanged(e);
            if (this.Control != null)
            {
                if (this.Control.Series.FirstOrDefault() is TKChartCandlestickSeries series)
                {
                    series.MaxColumnWidth = 20;
                    series.MinColumnWidth = 15;
                }
            }
        }
    }
}
```
