---
title: Indicators
page_title: Indicators
position: 0
slug: gauge-indicators
---

# Indicators

The gauge indicators are elements that display data related values in a different manner.

## Needle Indicator

The **GaugeNeedleIndicator** is part of the radial gauge. It presents a single value set by the **Value** property. The needle is intended to visually liken an actual gauge needle. The center of rotation of the needle coincides with the center of the gauge and is directed towards where the value on the gauge axis is. How far the tip of the needle gets is determined by its **Position** and **Offset** properties.

![Gauge example](../images/gauge-needle-indicator.png)

## Custom Needle Shape

You can use a custom shape for the needle by taking advantage of the **Shape** property. In order to achieve the desired output you need to set up the geometry that describes the needle you want. The gauge expects that these conditions are met when a shape geometry is set:

>- The coordinates are relative values between 0 and 1.
>- The rotation pivot point is (0.5, 0.5).
>- The needle's orientation is from (0.5, 0.5) to (1, 0.5).

When the gauge draws the needle, the geometry is scaled to the size it will be displayed with. This size is a result of the diameter of the axis arc, the needle's position and offset. It is then rotated so that the needle points at the value. In the example below, the angle of rotation is 45 and in this case coincides with the needle's value.

![Gauge example](../images/gauge-needle-indicator-shape.png)
![Gauge example](../images/gauge-needle-indicator-shape-rotated.png)
![Gauge example](../images/gauge-needle-indicator-with-grid.png)

Here is an example of a custom needle shape:

<snippet id='gauge-custom-needle-shape'/>

![Gauge example](../images/gauge-custom-needle-shape.png)

## Shape Indicator

The **GaugeShapeIndicator** presents a single value set by the **Value** property. Its size is determined by the **Size** property. The shape indicator is essentially a square box and is drawn so that its center coincides with the point defined by the Position and Offset properties. The shape is rotated around its center so that the default arrow shape always points towards the axis line. 

![Gauge example](../images/gauge-shape-indicator.png)

## Custom Shape

You can use a custom shape for the **GaugeShapeIndicator** by taking advantage of the **Shape** property. In order to achieve the desired output, you need to understand how to set up the geometry that describes the shape you want. The gauge expects that these conditions are met when a shape geometry is set:

>- The coordinates are in relative values between 0 and 1.
>- The rotation pivot point is (0.5, 0.5).
>- The shape's orientation is from (1, 0.5) to (0.5, 0.5).

When the gauge draws the shape, the geometry is scaled to the size it will be displayed with. Then it is moved to the point defined by the Position and Offset properties. It is then rotated so that the shape points at the axis line. 

![Gauge example](../images/gauge-shape-indicator-shape.png)
![Gauge example](../images/gauge-shape-indicator-shape-rotated-1.png)
![Gauge example](../images/gauge-shape-indicator-shape-rotated-2.png)
![Gauge example](../images/gauge-shape-indicator-shape-rotated-3.png)
![Gauge example](../images/gauge-shape-indicator.png)

Here is an example of a custom shape:

<snippet id='gauge-custom-shape'/>

![Gauge example](../images/gauge-shape-custom-shape.png)

## See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Windows]({% slug getting-started-windows %})
- [Getting Started on Mac]({% slug getting-started-mac %})
