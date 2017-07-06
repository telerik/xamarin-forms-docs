---
title: Overview
page_title: RadChartView Behaviors  | Telerik UI for Android Documentation
description: A page about the behaviours in RadChartView for Android. This article explains how to use the behaviors supported in RadChartView.
slug: chart-behaviors-overview
tags: radchartview, behaviors, overview, chart
publish: true
position: 0
---

# RadChartView: Behaviors

Each chart can be enabled with interactivity through its Behaviors. A behavior is generally an abstraction that handles user input in a **RadChartView** instance and optionally provides visual feedback upon some action. The following behaviors are available:

* [PanAndZoomBehavior]({% slug chart-behaviors-panzoom %} "Read more about PanAndZoomBehavior"): When this behavior is added to **RadCartesianChartView**, the gestures drag, pinch open and pinch close respectively cause panning, zooming in and zooming out of the associated chart plot area.

## Getting Started

In order to add a behavior, you simply need to add a new behavior of the desired type to the behaviors collection of your chart instance:

```Java
	RadCartesianChartView chartView = new RadCartesianChartView(this);

	ChartPanAndZoomBehavior behavior = new ChartPanAndZoomBehavior();
	chartView.getBehaviors().add(behavior);
```
```C#
	RadCartesianChartView chartView = new RadCartesianChartView(this);

	ChartPanAndZoomBehavior behavior = new ChartPanAndZoomBehavior();
	chartView.Behaviors.Add(behavior);
```
