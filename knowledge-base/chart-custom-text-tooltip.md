---
title: Customize the Text in Chart Tooltip
description: custom tooltip for chart
type: how-to
page_title: 
slug: chart-custom-text-tooltip
position: 
tags: chart, tooltip, cutomize, android, ios, xamarin.forms, xamarin, behaviot, tooltipbehavior, tooltiptext
ticketid: 1424776
res_type: kb
---

## Environment
<table>
    <tbody>
	    <tr>
	    	<td>Product Version</td>
	    	<td>2019.3.1023.1</td>
	    </tr>
	    <tr>
	    	<td>Product</td>
	    	<td>Chart for Xamarin.Forms</td>
	    </tr>
    </tbody>
</table>


## Description

This help article will show you how to customize the text inside the Chart Tooltip

>important This requirement could be achieved through a custom renderer for each platform. More details about how to create and register custom renderer can be found in our help article [here]({%slug chart-how-to-register-custom-renderer%})

## Solution

Lets create a sample business model:

```C#
public class CategoricalData
{
    public object Category { get; set; }

    public double Value { get; set; }
}
```

and a sample ViewModel:

```C#
public class ViewModel
{
    public ObservableCollection<CategoricalData> Data { get; set; }

    public ViewModel()
    {
        this.Data = GetCategoricalData();
    }

    private static ObservableCollection<CategoricalData> GetCategoricalData()
    {
        var data = new ObservableCollection<CategoricalData>  {
            new CategoricalData { Category = "Greenings", Value = 52 },
            new CategoricalData { Category = "Perfecto", Value = 60 },
            new CategoricalData { Category = "NearBy", Value = 77 },
            new CategoricalData { Category = "Family", Value = 50 },
            new CategoricalData { Category = "Fresh", Value = 56 },
        };
        return data;
    }
}
```

and here is how the Chart control with TooltipBehavior is defined

```XAML
<telerikChart:RadCartesianChart>
    <telerikChart:RadCartesianChart.BindingContext>
        <local:ViewModel />
    </telerikChart:RadCartesianChart.BindingContext>
    <telerikChart:RadCartesianChart.HorizontalAxis>
        <telerikChart:CategoricalAxis LabelFitMode="MultiLine"
                                  PlotMode="OnTicks" />
    </telerikChart:RadCartesianChart.HorizontalAxis>
    <telerikChart:RadCartesianChart.VerticalAxis>
        <telerikChart:NumericalAxis />
    </telerikChart:RadCartesianChart.VerticalAxis>
    <telerikChart:RadCartesianChart.Series>
        <telerikChart:LineSeries ValueBinding="Value"
                             CategoryBinding="Category"
                             DisplayName="Sales 1"
                             ItemsSource="{Binding Data}" />
    </telerikChart:RadCartesianChart.Series>
    <telerikChart:RadCartesianChart.ChartBehaviors>
        <telerikChart:ChartTooltipBehavior TriggerMode="Tap" />
    </telerikChart:RadCartesianChart.ChartBehaviors>
</telerikChart:RadCartesianChart>
```

Then lets move on to the custom renderers:

## Custom Renderer for Android

Create a class which inherits from the **Telerik.XamarinForms.ChartRenderer.Android.CartesianChartRenderer** class and override its **OnElementChanged** method:

```C#
class CustomChartRenderer : Telerik.XamarinForms.ChartRenderer.Android.CartesianChartRenderer
{
    public CustomChartRenderer(Android.Content.Context context) : base(context)
    {

    }
    protected override void OnElementChanged(Xamarin.Forms.Platform.Android.ElementChangedEventArgs<Telerik.XamarinForms.Chart.RadCartesianChart> e)
    {
        base.OnElementChanged(e);

        if (this.Control != null)
        {
            Telerik.XamarinForms.ChartRenderer.Android.RadExtendedCartesianChartView chart = (Telerik.XamarinForms.ChartRenderer.Android.RadExtendedCartesianChartView)this.Control;
            Com.Telerik.Widget.Chart.Visualization.Behaviors.ChartTooltipBehavior tooltip = (Com.Telerik.Widget.Chart.Visualization.Behaviors.ChartTooltipBehavior)chart.Behaviors.Get(0);
            tooltip.SetContentAdapter(new MyTooltipContentAdapter());
        }
    }
}
```

```C#
public class MyTooltipContentAdapter : Java.Lang.Object, Com.Telerik.Android.Primitives.Widget.Tooltip.Contracts.ITooltipContentAdapter
{
    public bool ApplyDefaultStyles { get; set; }
    public Com.Telerik.Android.Common.IFunction CategoryToStringConverter { get; set; }
    public Com.Telerik.Android.Common.IFunction ValueToStringConverter { get; set; }

    public Android.Views.View GetView(Java.Lang.Object[] p0)
    {
        Android.Content.Context context = Xamarin.Forms.Forms.Context;
        Android.Widget.LinearLayout linearLayout = new Android.Widget.LinearLayout(context);
        linearLayout.Orientation = Android.Widget.Orientation.Vertical;
        linearLayout.SetBackgroundColor(Android.Graphics.Color.Gray);

        foreach (Com.Telerik.Widget.Chart.Engine.DataPoints.CategoricalDataPoint dataPoint in p0)
        {
            Android.Widget.TextView textView = new Android.Widget.TextView(context);
            textView.Text = string.Format("Value of {0} is $ {1}", dataPoint.Category, dataPoint.Value);
            linearLayout.AddView(textView);
        }

        return linearLayout;
    }
}
```


Then register the custom renderer:

```
[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(CustomChartRenderer))]
```

## Custom Renderer for iOS

Create a class which inherits from the **Telerik.XamarinForms.ChartRenderer.iOS.CartesianChartRenderer** and override its **OnElementChanged** method. Inside it create a new instance of the *CartesianChartDelegate* class.

```C#

class CustomChartRenderer : Telerik.XamarinForms.ChartRenderer.iOS.CartesianChartRenderer
{
    public CustomChartRenderer()
    {
    }

    protected override void OnElementChanged(Xamarin.Forms.Platform.iOS.ElementChangedEventArgs<Telerik.XamarinForms.Chart.RadCartesianChart> e)
    {
        base.OnElementChanged(e);

        Telerik.XamarinForms.ChartRenderer.iOS.TKExtendedChart control = this.Control;
        if (control != null)
        {
            this.Control.Trackball.SnapMode = TelerikUI.TKChartTrackballSnapMode.ClosestPoint;
            this.Control.Delegate = new MyChartDelegate(this.Element);
        }
    }
}
```

Inside the MyChartDelegate class override the **TrackballDidTrackSelection** method and implement a custom logic for customizing the tooltip text:

```C#
public class MyChartDelegate : CartesianChartDelegate
{
    public MyChartDelegate(RadCartesianChart chart) : base(chart)
    {
           
    }

    public override void TrackballDidTrackSelection(TelerikUI.TKChart chart, TelerikUI.TKChartSelectionInfo[] selection)
    {
        StringBuilder str = new StringBuilder();
        bool first = true;
        foreach (TelerikUI.TKChartSelectionInfo info in selection)
        {
            var point = info.DataPoint as TelerikUI.TKChartDataPoint;
            if (!first)
            {
                str.Append("\n");
            }
            else
            {
                first = !first;
            }
            str.Append(string.Format("Value of {0} is $ {1}", point.DataXValue, point.DataYValue));
        }
        chart.Trackball.Tooltip.Text = str.ToString();
    }
}
```

Then register the custom renderer:

```
[assembly: Xamarin.Forms.ExportRenderer(typeof(Telerik.XamarinForms.Chart.RadCartesianChart), typeof(CustomChartRenderer))]
```
