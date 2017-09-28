---
title: Getting Started
page_title: Getting Started
position: 0
slug: gauge-getting-started
---

# Getting Started

This article will walk you through the setting up of a simple RadRadialGauge.

In order to set up the gauge you need to define the elements of the gauge you want to use. You need to set the axis minimum, maximum and step, so that the values of the indicators and the ranges are within the axis range and they can be positioned properly. Normally you will need at least one indicator, but you can add as many as needed. Adding gauge ranges is not necessary but is often valuable as they help give additional information about values within that range, for example too low, too high, or normal. 

>Before you proceed, please, take a look at these articles and follow the instructions to setup your app:

>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})
>- [Required Telerik Assemblies]({%slug gauge-getting-started-required-assemblies%})
> **RadRadialGauge** is rendered via the SkiaSharp graphics library so you need to install [SkiaSharp.Views.Forms](https://www.nuget.org/packages/SkiaSharp.Views.Forms/1.55.0).

### Setting up the gauge

Below you can see an example of a **RadRadialGauge** with a linear axis, two indicators and three gauge ranges.

Add the following namespaces:

<snippet id='xmlns-telerikgauges'/>
<snippet id='ns-telerikgauges'/>

Proceed with defining the component:

<snippet id='gauge-getting-started-xaml'/>
<snippet id='gauge-getting-started-csharp'/>

Here is the result:
 
![Gauge example](../images/gauge-gettingstarted.png)

> You can follow this tutorial to set up also the RadVerticalGauge and RadHorizontalGauge controls which expose the same API.

### Gauge types

There are 3 gauge types that you can use to display different layout - radial and linear. You can read more about this in the [Gauge Types]({%slug gauge-types-radial%}) section.

>important The **SDK Browser** and the **QSF** applications contain different examples that show Gauges' main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

### See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Windows]({% slug getting-started-windows %})
- [Getting Started on Mac]({% slug getting-started-mac %})
- [Axis]({%slug gauge-axis%})
- [Indicators]({%slug gauge-indicators%})
- [Ranges]({%slug gauge-ranges%})
