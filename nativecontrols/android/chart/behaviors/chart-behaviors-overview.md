---
title: Overview
page_title: RadChartView Behaviors  | Telerik UI for Xamarin.Android Documentation
description: A page about the behaviours in RadChartView for Android. This article explains how to use the behaviors supported in RadChartView.
slug: chart-behaviors-overview
tags: radchartview, behaviors, overview, chart
publish: true
position: 0
---

# Behaviors

Each chart can be enabled with interactivity through its Behaviors. A behavior is generally an abstraction that handles user input in a **RadChartView** instance and optionally provides visual feedback upon some action. The following behaviors are available:

* [PanAndZoomBehavior]({% slug chart-behaviors-panzoom %} "Read more about PanAndZoomBehavior"): When this behavior is added to **RadCartesianChartView**, the gestures drag, pinch open and pinch close respectively cause panning, zooming in and zooming out of the associated chart plot area.
* [TrackballBehavior]({%slug chart-android-behaviors-trackball %}): This behavior is responsible for rendering concise information about several data points in a small popup which displays over its relevant data points. A vertical line is also drawn through the data points for maximum clarity.
* [TooltipBehavior]({%slug chart-android-behaviors-tooltip %}): This behavior is used for rendering concise information about a data point in a small popup.
* [ChartSelectionBehavior]({%slug chart-android-behaviors-selection %}): Handles selecting and deselecting of either data points or series.

## Getting Started

In order to add a behavior, you simply need to add a new behavior of the desired type to the behaviors collection of your chart instance:


```C#
RadCartesianChartView chartView = new RadCartesianChartView(this);

ChartPanAndZoomBehavior behavior = new ChartPanAndZoomBehavior();
chartView.Behaviors.Add(behavior);
```
