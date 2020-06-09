---
title: Numerical Axis
page_title: Xamarin Chart Documentation | Numerical Axis
slug: axes-numerical-axis
description: Check our &quot;Numerical Axis&quot; documentation article for Telerik Chart for Xamarin control.
---

# NumericalAxis

## Overview

The **NumericalAxis** plots the associated data points using each point's numerical value, provided for the axis.  It will build a numerical range (user-defined or automatically calculated) and will determine each data point X or Y coordinate (depending on whether the axis is specified as Horizontal or as Vertical).

The axis works with either categorical or scatter data. For categorical data the axis uses the **ValueBinding** property of the data points, while for scatter data the axis uses the **XValueBinding** or the **YValueBinding** property depending on whether the axis is horizontal or vertical.

The **NumericalAxis** inherits from the base **Axis** class. You can see the inherited properties [here]({% slug axes-overview %}).

## Features

- **LabelFormat**: Provides a format string that will be used when converting the label value to string. For example any numeric format like `"N"`, `"P2"`.
- **Minimum**: Defines the minimum value of the axis. By default, the axis itself will calculate the minimum, depending on the minimum value of the plotted data points.
- **Maximum**: Defines the maximum value of the axis. By default, the axis itself will calculate the maximum, depending on the maximum value of the plotted data points.
- **RangeExtendDirection**: Defines a value that specifies how the actual range of the axis (when auto-calculated) should be extended. By default the axis will calculate its minimum and maximum in such a way that the data is best visualized. For example, if the maximum data point value is 50, the axis will make its Maximum 50 + MajorStep, so that the plotted data will not intersect with the top of the plot area. The available values are:
	- None
	- Positive
	- Negative
	- Both
- **MajorStep**: Specifies the step at which the major ticks are positioned on the axis. If this property is set to 0, the axis automatically calculate the step so that the data will be visualized in the best possible way.

## Example

```XAML
<telerikChart:NumericalAxis LabelFormat="C"
							MajorStep="0.5"
							Minimum="-1"
							Maximum="1" />
```

>important A sample Format Axis Label example can be found in the Chart/Customization folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Axis Overview]({%slug axes-overview%})
- [Categorical Axis]({%slug axes-categorical-axis%})
- [DateTimeContinuous Axis]({%slug axes-date-time-continuous-axis%})
