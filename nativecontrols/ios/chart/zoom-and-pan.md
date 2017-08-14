---
title: Zoom and Pan
position: 16
---

# Chart: Zoom and Pan

## Zoom ##


<code>TKChart</code> allows the end-user to zoom the plot area on the <code>x</code> and <code>y</code> axis independantly or on both axes together. 
Zooming in and out on an axis can be enabled by setting the <code>allowZoom</code> property of the axis to *YES*.
To activate this behaviour for both axes ,you shoud put this settings to each axis.

<snippet id='chart-zoom'/>
<snippet id='chart-zoom-swift'/>
```C#
xAxis.AllowZoom = true;
yAxis.AllowZoom = true;
```

<code>TKChartAxis</code> exposes a property <code>zoomRange</code> of type <code>TKRange</code> by the help of which you can define the allowed zoom range.
 
The zoom level could be also explicitly set to a number by using the <code>zoom</code> property of <code>TKChartAxis</code>.
This way you can control the zoom level at which <code>TKChart</code> appears when initialized.

## Pan ##

The pan functionallity allows moving the visible area of the chart when it is zoomed in. To enable panning, you can use the <code>TKChartAxis</code> property <code>allowPan</code>. Enabling pan in both sides could be done by setting both directions pan property.
 
<snippet id='chart-pan'/>
<snippet id='chart-pan-swift'/>
```C#
xAxis.AllowPan = true;
yAxis.AllowPan = true;
```

<code>TKChartAxis</code> exposes two properties dedicated to control the pan level of the axis - <code>pan</code> and <code>normalizedPan</code> .
The <code>pan</code> property can have any value that is compatible with the axis. If the property is set, the chart's visible area will start from the given value when TKChart is initialized. If the axis is not zoomed enough, then TKChart will visualise the most right/down area depending on the zoom level.

The value of the <code>normalizedPan</code> property could be set between 0 and 1 and it represents a normalized value of the axis. The chart visible area will be moved based on the calculated value corresponding to the <code>normalizedPan</code> value depending on the type of the axis.

Additionally you can apply inertia to your pan gesture by setting the <code>allowPanDeceleration</code> property to true.