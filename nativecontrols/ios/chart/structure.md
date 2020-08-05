---
title: Structure
position: .4
---

## Chart for Xamarin.iOS: Structure

<code>TKChart</code> consists of the following elements:

![](../images/chart-overview006.png)

- <code>Plot Area</code> - this is the area where chart data is drawn.

- <code>Series</code> - chart data is represented by series objects. Each series object defines the chart type and contains a set of points to be drawn. The chart can display different series object simultaneously.

- <code>Axes</code> - there are four axes areas that surround the plot area. The axes define the dimensions in which data is drawn inside the plot area. Each axis can be attached to a single or many series.

- <code>Title</code> - this is the chart title. Its style and position can be customized. The chart title is hidden by default.

- <code>Legend</code> - the chart legend displays additional information about series objects. Its style and position can be customized. The chart legend is hidden by default.

In addition to these visual objects, TKChart uses the following protocols:

- <code>DataSource</code> - chart data source is used to supply the chart with data. Setting this property is optional, as you can assign data directly to the series object. In case you decide to use this property, you have to implement the *TKChartDataSource* protocol.

- <code>Delegate</code> - The chart delegate is an optional protocol that allows chart consumers to receive notifications from <code>TKChart</code>. It allows also customizing chart appearance and animations.

## Axes ##

<code>TKChart</code> renders its points in a coordinate system defined by its axes. To do this, axes specify the minimum and maximum values that can be presented on the plot area. There are a few different types of axes that can be used with <code>TKChart</code>. They include: numeric, date/time and categoric. You can assign each axis to different series and you can show multiple axes in a chart. Axes contain various properties to control their position, style and behavior. All chart axes subclass from <code>TKChartAxis</code>.

- Use <code>TKChartNumericAxis</code> to present numeric values.
- Use <code>TKChartDateTimeAxis</code> to present date/time values.
- Use <code>TKChartCategoryAxis</code> to present categoric values.

In order to show multiple axes in <code>TKChart</code>, create several axes and customize their position. Then use the <code>XAxis</code> and <code>YAxis</code> properties of the series to assign them:

```C#
var xAxis = new TKChartNumericAxis ();
xAxis.Position = TKChartAxisPosition.Bottom;
chart.AddAxis (xAxis);

var yAxis1 = new TKChartNumericAxis (new NSNumber (0), new NSNumber (100));
yAxis1.MajorTickInterval = 50;
yAxis1.Position = TKChartAxisPosition.Left;
yAxis1.Style.LineHidden = false;
chart.AddAxis (yAxis1);

var yAxis2 = new TKChartNumericAxis (new NSNumber (0), new NSNumber (200));
yAxis2.MajorTickInterval = 50;
yAxis2.Position = TKChartAxisPosition.Right;
yAxis2.Style.LineHidden = false;
chart.AddAxis (yAxis2);

var incomesData = new List<TKChartDataPoint> ();
var values1 = new [] { 12, 10, 98, 64, 11, 27, 85, 72, 43, 39 };
for (int i=0; i<10; i++) {
    incomesData.Add (new TKChartDataPoint (new NSNumber(i), new NSNumber(values1 [i])));
}

var series = new TKChartLineSeries (incomesData.ToArray());
series.XAxis = xAxis;
series.YAxis = yAxis1;
chart.AddSeries (series);
```

The result from this setup is:

![](../images/chart-overview007.png)

Find further details on this in [Chart Axes](axes/axes) article.

## Series ##

Series define how data should be visually presented on the plot area. Each series has a collection of data points, which it displays according to the series type. <code>TKChart</code> supports several series out of the box. These include: bar, column, line, area, scatter and pie. The base class for all series in <code>TKChart</code> is <code>TKChartSeries</code>.

- [TKChartAreaSeries](series/area) is used to present points in filled areas.
- [TKChartBubbleSeries](series/bubble) is used to present points of various size.
- [TKChartCandlestickSeries](series/candlestick) and [TKChartOhlcSeries](series/ohlc) are used to present stock market data.
- [Financial indicators](series/candlestick) are used to present calculated summary of stock market data.
- [TKChartBarSeries](series/bar) is used to present points as bars (horizontal rectangles).
- [TKChartColumnSeries](series/column) is used to present points as columns (vertical rectangles).
- [TKChartDonutSeries](series/donut) is used to present data as a pie.
- [TKChartSplineSeries](series/spline) is used to present points as a spline.
- [TKChartSplineAreaSeries](series/area) is used to present points in filled areas having a spline line at the top.
- [TKChartLineSeries](series/line) is used to present points as line/spline.
- [TKChartPieSeries](series/pie) is used to present data as pie.
- [TKChartScatterSeries](series/scatter) is used to present data as separate points.

When <code>TKChart</code> contains more than one series of type bar or column, it clusters the series in groups. You can choose also to show the same information as stacked bars/columns. This is done by setting the <code>StackInfo</code> property of the series:

```C#
var values1 = new [] { 12, 10, 98, 64, 11, 27, 85, 72, 43, 39 };
var values2 = new [] { 87, 22, 29, 87, 65, 99, 63, 12, 82, 87 };
var expensesData = new List<TKChartDataPoint>();
var incomesData = new List<TKChartDataPoint>();
for (int i=0; i<10; i++) {
    expensesData.Add(new TKChartDataPoint(new NSNumber(i), new NSNumber(values2[i])));
    incomesData.Add(new TKChartDataPoint(new NSNumber(i), new NSNumber(values1[i])));
}

var stackInfo = new TKChartStackInfo(new NSNumber(1), TKChartStackMode.Stack);

var series1 = new TKChartColumnSeries(expensesData.ToArray());
series1.Title = "Expenses";
series1.StackInfo = stackInfo;
chart.AddSeries(series1);

var series2 = new TKChartColumnSeries(incomesData.ToArray());
series2.Title = "Incomes";
series2.StackInfo = stackInfo;
chart.AddSeries(series2);
```

The result from this setup is:

![](../images/chart-overview008.png)

Line and area series also allow stacking by using the <code>StackInfo</code> property.

Series appearance can be changed by using the <code>Style</code> property.

## Interaction ##

<code>TKChart</code> is an interactive component that supports gestures like touch, pan and rotate. The main actions that are supported are selection and pan/zoom interaction.

The <code>AllowPan</code> and <code>AllowZoom</code> properties of TKChartAxis should be set to *true* in order to allow pan/zoom functionality.

The <code>SelectionMode</code> property of TKChartSeries should be set to <code>TKChartSelectionModeSeries</code> or <code>TKChartSelectionModeDataPoint</code> in order to allow selection for the specified series.

Find further details about selection and pan/zoom functionality in the corresponding articles.

## Animations ##

<code>TKChart</code> allows animating chart points by using the CoreAnimation framework. There are built-in animations specific for every series type and you can define your own animations by implementing methods in the chart delegate.

You can customize the default animation by implementing the TKChartDelegate interface and overriding its <code>AnimationForSeries</code> method:

The <code>АllowAnimations</code> property of TKChart should be set to *true* in order to work with animations.

```C#
public override CAAnimation AnimationForSeries (TKChart chart, TKChartSeries series, TKChartSeriesRenderState state, CGRect rect)
{
    var duration = 0.0;
    var animations = new List<CAAnimation> ();
    for (int i=0; i<(int)state.Points.Count; i++) {
        var pointKeyPath = state.AnimationKeyPathForPointAtIndex ((uint)i);
        var keyPath = pointKeyPath + ".x";
        var point = state.Points.ObjectAtIndex((uint)i) as TKChartVisualPoint;
        var animation = new CABasicAnimation ();
        animation.KeyPath = keyPath;
        animation.Duration = (double) (r.Next (100)) / 100.0;
        animation.From = new NSNumber(0);
        animation.To = new NSNumber(point.X);
        animations.Add (animation);
        duration = Math.Max(animation.Duration, duration);
    }

    var group = new CAAnimationGroup ();
    group.Duration = duration;
    group.Animations = animations.ToArray();
    return group;
}
```

This method returns a single animation, therefore if you create multiple animations, you should group them inside CAAnimationGroup.

Besides the CoreAnimation framework, </code>TKChart</code> allows animating its points by adding real world physics by using the new UIKitDynamics framework introduced in iOS 7. With this framework you can add different behaviors like gravity, elasticity and forces. Read further details about this advanced topic in [UIKit Dynamics Animations](animations/custom-uikit-dynamics) article.

