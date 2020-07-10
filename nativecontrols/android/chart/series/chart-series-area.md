---
title: AreaSeries
page_title: AreaSeries | RadChartView | Telerik UI for Xamarin.Android Documentation
description: A page desribing the AreaSeries in RadChartView for Android. This article explains the most important things you need to know before using AreaSeries.
slug: chart-series-area
tags: radchartview, areaseries, area, chart
publish: true
position: 3
---

# AreaSeries

**RadCartesianChartView** visualizes **AreaSeries** as an area on the chart that is enclosed by the coordinate axes and straight line segments that connect the data points represented by these series. The **AreaSeries** extend **CategoricalStrokedSeries**, so they are also **CategoricalSeries** and require one **CategoricalAxis** and one **LinearAxis**.

## Example

You can read from the [Getting Started]({% slug chart-gettingstarted %} "Read how to define the MonthResult type") page how to define the `MonthResult` type and declare the **initData()** method.

After you create the method for initialization of sample data, you can create a **RadCartesianChartView** with **AreaSeries** by adding the following code to the **onCreate()** method of your Activity.

```C#
InitData();

RadCartesianChartView chartView = new RadCartesianChartView(this);

AreaSeries areaSeries = new AreaSeries();
areaSeries.CategoryBinding = new MonthResultDataBinding ("Month");
areaSeries.ValueBinding = new MonthResultDataBinding ("Result");
areaSeries.Data = (Java.Lang.IIterable)this.monthResults;
chartView.Series.Add(areaSeries);

CategoricalAxis horizontalAxis = new CategoricalAxis();
chartView.HorizontalAxis = horizontalAxis;

LinearAxis verticalAxis = new LinearAxis();
chartView.VerticalAxis = verticalAxis;

ViewGroup rootView = (ViewGroup)FindViewById(Resource.Id.container);
rootView.AddView(chartView);
```

Here's the result:

![TelerikUI-Chart-Series-Area](images/chart-series-area-1.png "Demo of Cartesian chart with AreaSeries.")

## Customization

**AreaSeries** extend **CategoricalStrokedSeries** which provides the following way to change their style:

* **StrokeColor**: changes the color used to draw lines.
* **StrokeThickness**: changes the width of the lines.

Additionally, **AreaSeries** can change the color of their fill with the **FillColor** property.

You can also customize the appearance of **AreaSeries** by using [Palettes]({% slug chart-palettes %} "Read how to use Palettes in RadChartView").
