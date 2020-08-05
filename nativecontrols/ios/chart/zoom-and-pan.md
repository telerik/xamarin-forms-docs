---
title: Zoom and Pan
position: 16
---

## Chart for Xamarin.iOS: Zoom and Pan

Zoom and Pan feature handles touch events to enable panning and zooming of the associated chart plot area.

## Zoom

<code>TKChart</code> allows the end-user to zoom the plot area on the <code>X</code> and <code>Y</code> axis independently or on both axes together. Zooming in and out on an axis can be enabled by setting the <code>AllowZoom</code> property of the axis to **true**.

To activate this behavior for both axes, you should apply this setting to each axis separately.

```C#
xAxis.AllowZoom = true;
yAxis.AllowZoom = true;
```

<code>TKChartAxis</code> exposes a property <code>ZoomRange</code> of type <code>TKRange</code> by the help of which you can define the allowed zoom range.
 
The zoom level could be also explicitly set to a number by using the <code>Zoom</code> property of <code>TKChartAxis</code>. This way you can control the zoom level at which <code>TKChart</code> appears when initialized.

## Pan

The pan functionality allows moving the visible area of the chart when it is zoomed in. To enable panning, you can use the <code>TKChartAxis</code> property <code>AllowPan</code>. Enabling pan in both sides could be done by setting both directions pan property.
 
```C#
xAxis.AllowPan = true;
yAxis.AllowPan = true;
```

<code>TKChartAxis</code> exposes two properties dedicated to control the pan level of the axis - <code>Pan</code> and <code>NormalizedPan</code> .

<code>Pan</code> property can have any value that is compatible with the axis. If the property is set, the chart's visible area will start from the given value when TKChart is initialized. If the axis is not zoomed enough, then TKChart will visualize the most right/down area depending on the zoom level.

The value of the <code>NormalizedPan</code> property can be set between 0 and 1 and it represents a normalized value of the axis. The chart visible area will be moved based on the calculated value corresponding to the <code>NormalizedPan</code> value depending on the type of the axis.

Additionally you can apply inertia to your pan gesture by setting the <code>AllowPanDeceleration</code> property of the TKChart to **true**.

```C#
chart.AllowPanDeceleration = true;
```