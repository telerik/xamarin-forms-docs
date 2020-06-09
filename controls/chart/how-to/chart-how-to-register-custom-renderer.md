---
title: Register Chart Renderers
page_title: Xamarin Chart Documentation | Register Chart Renderers
description: Check our &quot;Register Chart Renderers&quot; documentation article for Telerik Chart for Xamarin control.
position: 2
slug: chart-how-to-register-custom-renderer
---

# Register the RadChart renderer

When certain features are available in the native control on a given platform, but not exposed in Xamarin.Forms you would need to create a **custom renderer**. This will allow you to access the native control and configure it as per your needs.

This article will guide you how to register custom renderer for RadChart control.

You will need to create a class for each platform and register your custom renderer using the ExportRenderer assembly level attribute.

>important GradientBars example demonstrates how to create custom renderer for each platform and it can be found in the Chart/Customization folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## Android Project

Register custom renderer for CartesianChart.

```C#
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(Telerik.XamarinForms.ChartRenderer.Android.CartesianChartRenderer))]
```


Register custom renderer for PieChart

```C#
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(Telerik.XamarinForms.ChartRenderer.Android.PieChartRenderer))]
```

>note See the native [Android RadChartView documentation](https://docs.telerik.com/devtools/xamarin/nativecontrols/android/chart/chart-overview) for more information.


## iOS Project

Register custom renderer for CartesianChart

```C#
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(Telerik.XamarinForms.ChartRenderer.iOS.CartesianChartRenderer))]
```

Register custom renderer for PieChart

```C#
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(Telerik.XamarinForms.ChartRenderer.iOS.PieChartRenderer))]
```

>note See the native [iOS TKChart documentation](https://docs.telerik.com/devtools/xamarin/nativecontrols/ios/chart/overview) for more information.

## UWP Projects

Register custom renderer for CartesianChart

```C#
[assembly: Xamarin.Forms.Platform.UWP.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(Telerik.XamarinForms.ChartRenderer.UWP.CartesianChartRenderer))]
```

Register custom renderer for PieChart

```C#
[assembly: Xamarin.Forms.Platform.UWP.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(Telerik.XamarinForms.ChartRenderer.UWP.PieChartRenderer))]
```

>note See the native [UWP RadChart documentation](https://docs.telerik.com/devtools/universal-windows-platform/controls/radchart/overview) for more information. 

## See Also

- [How To Create Custom Renderer]({%slug chart-how-to-create-custom-renderer%})
- [Categorical Series Combine Mode]({%slug chart-series-combine-mode%})
- [Chart Legend]({%slug chart-features-legend%})
