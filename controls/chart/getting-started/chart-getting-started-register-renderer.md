---
title: Register Chart Renderers
page_title: Register Chart Renderers
position: 2
slug: chart-getting-started-register-renderer
publish: false
---

# Register the RadChart renderer

>important With R2 2017 release of Telerik UI for Xamarin you do not need to manually define control renderers. The following instructions are valid for versions prior R2 2017. 

## Android Project

You have to add the following lines to the **MainActivity.cs** file outside the scope of the namespace just after the using statements:
  
<pre><code class='language-cs'>
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(Telerik.XamarinForms.ChartRenderer.Android.CartesianChartRenderer))]
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(Telerik.XamarinForms.ChartRenderer.Android.PieChartRenderer))]
</code></pre>

## iOS Project

You have to add the following lines to the **AppDelegate.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(Telerik.XamarinForms.ChartRenderer.iOS.CartesianChartRenderer))]
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(Telerik.XamarinForms.ChartRenderer.iOS.PieChartRenderer))]
</code></pre>

You also have to call the `TelerikForms.Init()` method right after the `Forms.Init()` call.

<pre><code class='language-cs'>
public override bool FinishedLaunching(UIApplication app, NSDictionary options)
{
    new Telerik.XamarinForms.ChartRenderer.iOS.PieChartRenderer();
    new Telerik.XamarinForms.ChartRenderer.iOS.CartesianChartRenderer();

    Xamarin.Forms.Forms.Init();
    Telerik.XamarinForms.Common.iOS.TelerikForms.Init();

    this.LoadApplication(new App());

    return base.FinishedLaunching(app, options);
}
</code></pre>

## UWP Projects

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: Xamarin.Forms.Platform.UWP.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(Telerik.XamarinForms.ChartRenderer.UWP.CartesianChartRenderer))]
[assembly: Xamarin.Forms.Platform.UWP.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(Telerik.XamarinForms.ChartRenderer.UWP.PieChartRenderer))]
</code></pre>

## Windows 8.1 and Windows Phone 8.1 Projects

You have to add the following lines to edit the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: Xamarin.Forms.Platform.WinRT.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(Telerik.XamarinForms.ChartRenderer.WinRT.CartesianChartRenderer))]
[assembly: Xamarin.Forms.Platform.WinRT.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(Telerik.XamarinForms.ChartRenderer.WinRT.PieChartRenderer))]
</code></pre>

## Windows Phone 8 Project

You have to add the following lines to the **MainPage.xaml.cs** file outside the scope of the namespace just after the using statements:

<pre><code class='language-cs'>
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(Telerik.XamarinForms.ChartRenderer.WinPhone.CartesianChartRenderer))]
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadPieChart), typeof(Telerik.XamarinForms.ChartRenderer.WinPhone.PieChartRenderer))]
</code></pre>

# See Also

- [Chart Getting Started]({% slug chart-getting-started %})
