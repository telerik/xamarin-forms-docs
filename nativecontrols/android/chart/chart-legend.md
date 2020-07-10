---
title: Legend
page_title: RadChartView Legend | Telerik UI for Xamarin.Android Documentation
description: An article about the legend in RadChartView for Android. This article explains how to add legend to your RadChartView and how to accosiate it to the different visualizations.
slug: chart-legend
tags: radchartview, legend, chart
url: /chart-legend
publish: true
---

# Legend

In this article, you will learn to use the built-in legend in **RadChartView for Android**.

## Overview

You can start from the [BarSeries]({% slug chart-series-bar %} "Read how to create a chart with BarSeries") example and add a second instance of the **BarSeries** with stack combine mode. Then you need to set their legend title and create a new instance of **RadLegendView**. **RadLegendView** needs a legend provider which will provide the data. You can use **RadCartesianChartView** as a **LegendProvider**:

```C#
barSeries1.CombineMode = ChartSeriesCombineMode.Stack;
barSeries2.CombineMode = ChartSeriesCombineMode.Stack;

barSeries1.LegendTitle = "first";
barSeries2.LegendTitle = "second";

RadLegendView legendView = new RadLegendView (this);
legendView.LegendProvider = chartView;

LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(460,100);
layoutParams.SetMargins(10,10,10,10);
legendView.LayoutParameters = layoutParams;

LinearLayout linearLayout = new LinearLayout(this);
linearLayout.Orientation = Android.Widget.Orientation.Vertical;

linearLayout.AddView(legendView);
linearLayout.AddView(chartView);

ViewGroup rootView = (ViewGroup)FindViewById(Resource.Id.container);
rootView.AddView(linearLayout);
```
	
Here's the result:

![TelerikUI-Chart-Legend](images/chart-legend-1.png "Demo of Cartesian chart with BarSeries with Legend.")


The legend for the pie chart is a little bit different. The pie series does not have a legend title because each point in the series means something different, the title is taken from the data points with a name binding. For example:

```C#
PieSeries series = new PieSeries();

// This assumes that the data models have a property with the signature public string Name { get; }.
series.NameBinding = new PropertyNameDataPointBinding("Name");
``` 

## Orientation

The default behavior of the RadLegendView is to show the legend items vertically. However you can change the orientation of the items to horizontal with LegendOrientation property:

```C#
legendView.LegendOrientation = OrientationHelper.Horizontal;
```

The possible values for the orientation are:

* OrientationHelper.Horizontal
* OrientationHelper.Vertical

## Scrolling

By default the scroll of the legend items is **disabled**. In order to enable the horizontal and vertical scroll you can use:

```C#
legendView.SetCanScrollHorizontally(true);
legendView.SetCanScrollVertically(true);
```

## Selection

**RadLegendView** supports selection by setting the **AllowSelection** property to true. 

```C#
legendView.AllowSelection = true;
```

The **LegendItemSelected** event can be used to determine the selected `LegendItem`.

```C#
private void LegendViewOnLegendItemSelected(object sender, LegendSelectionEventArgs e)
{
    var title = (e.P0 as LegendItem)?.Title;
}
```
