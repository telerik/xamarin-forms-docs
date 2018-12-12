---
title: Register Chart Renderers
page_title: Register Chart Renderers
position: 2
slug: chart-how-to-register-custom-renderer
---

# Register the RadChart renderer

When certain features are available in the native control on a given platform, but not exposed in Xamarin.Forms you would need to create a **custom renderer**. This will allow you to access the native control and configure it as per your needs.

This article will guide you how to register custom renderer for RadChart control.

You will need to create a class for each platform and register your custom renderer using the ExportRenderer assembly level attribute.

>important BradientBars example demonstrates how to create custom renderer for each platform and it can be found in the Chart/Customization folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## Android Project

Register custom renderer for CartesianChart

```C#
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(Telerik.XamarinForms.ChartRenderer.Android.CartesianChartRenderer))]
```

Register custom renderer for PieChart

```C#
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(Telerik.XamarinForms.ChartRenderer.Android.PieChartRenderer))]
```

## iOS Project

Register custom renderer for CartesianChart

```C#
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(Telerik.XamarinForms.ChartRenderer.iOS.CartesianChartRenderer))]
```

Register custom renderer for PieChart

```C#
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(Telerik.XamarinForms.ChartRenderer.iOS.PieChartRenderer))]
```

## UWP Projects

Register custom renderer for CartesianChart

```C#
[assembly: Xamarin.Forms.Platform.UWP.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(Telerik.XamarinForms.ChartRenderer.UWP.CartesianChartRenderer))]
```

Register custom renderer for PieChart

```C#
[assembly: Xamarin.Forms.Platform.UWP.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(Telerik.XamarinForms.ChartRenderer.UWP.PieChartRenderer))]
```

## See Also

- [How To Create Custom Renderer]({%slug chart-how-to-create-custom-renderer%})
- [Categorical Series Combine Mode]({%slug chart-series-combine-mode%})
- [Chart Legend]({%slug chart-features-legend%})
