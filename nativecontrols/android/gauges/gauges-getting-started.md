---
title: Getting Started
page_title: RadGaugeView Getting Started | Telerik UI for Android Documentation
description: A getting started page for RadGaugeView for Android. This article explains what are the steps to create a RadGaugeView instance from scratch.
slug: gauge-gettingstarted
tags: radgaugeview, gettingstarted, gauge
position: 1
publish: true
---

#Gauges: Getting Started

This article demonstrates how to setup an instance of **RadGaugeView** from scratch.

#Initialization

In order to use **RadGuageView** you need to add reference to the **Gauges** library which is part of Telerik UI for Android.

After your project is set up referencing the library you are ready to add a gauge to your activity. **RadGaugeView** is a base class for TelerikUI gauges so you need to instanciate a subclass. The most common way is to describe the gauge in the XML layout of your activity.

```XML
<com.telerik.widget.gauge.RadRadialGaugeView
    android:id="@+id/radial_gauge"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:layout_margin="20dp"/>
```

Then you can access the gauge in your activity and add scales and indicators to it.

```Java
RadRadialGaugeView gauge = Util.getLayoutPart(rootView, R.id.radial_gauge, RadRadialGaugeView.class);
```
```C#
RadRadialGaugeView gauge = (RadRadialGaugeView)rootView.FindViewById(Resource.Id.radial_gauge);
```

##Adding scales

After the gauge is loaded in the activity/fragment you are ready to add scales and indicators to it. The base class that represents a scale in **RadGaugeView** is **GaugeScale**. It has maximum and minimum values and a set of indicators that show values on the scale. You can also set the count of labels and ticks drawn on the scale. The code below demonstrates how to instanciate and configure a scale:

```Java
GaugeRadialScale scale = new GaugeRadialScale(getContext());
scale.setMinimum(0);
scale.setMaximum(6);
scale.setMajorTicksCount(7);
scale.setMinorTicksCount(9);
scale.setLabelsCount(7);
scale.setLineVisible(false);
scale.setRadius(0.95f);
scale.setTicksOffset(0);
```
```C#
GaugeRadialScale scale = new GaugeRadialScale(this.Context);
scale.Minimum = 0;
scale.Maximum = 6;
scale.MajorTicksCount = 7;
scale.MinorTicksCount = 9;
scale.LabelsCount = 7;
scale.LineVisible = false;
scale.Radius = 0.95f;
scale.TicksOffset = 0;
```

After the scale is configured you are ready to add indicators to it. In this example you will add a radial needle and radial bar indicators to the scale. The needle points to a specific value and the bar shows a range on the scale.

```Java
int[] colors = new int[] {
        Color.rgb(221,221,221),
        Color.rgb(157,202,86),
        Color.rgb(240,196,77),
        Color.rgb(226,118,51),
        Color.rgb(167,1,14)
};

float rangeWidth = scale.getMaximum() / colors.length;
float start = 0;
for (int color : colors) {
    GaugeRadialBarIndicator indicator = new GaugeRadialBarIndicator(getContext());
    indicator.setMinimum(start);
    indicator.setMaximum(start + rangeWidth);
    indicator.setFillColor(color);
    scale.addIndicator(indicator);
    start += rangeWidth;
}

GaugeRadialNeedle needle = new GaugeRadialNeedle(getContext());
needle.setValue(2);
scale.addIndicator(needle);
```
```C#
int[] colors = new int[] {
    Color.Rgb(221,221,221),
    Color.Rgb(157,202,86),
    Color.Rgb(240,196,77),
    Color.Rgb(226,118,51),
    Color.Rgb(167,1,14)
};

float rangeWidth = scale.Maximum / colors.Length;
float start = 0;
foreach (var color in colors)
{
    GaugeRadialBarIndicator indicator = new GaugeRadialBarIndicator(this.Context);
    indicator.Minimum = start;
    indicator.Maximum = start + rangeWidth;
    indicator.FillColor = color;
    scale.AddIndicator(indicator);
    start += rangeWidth;
}

GaugeRadialNeedle needle = new GaugeRadialNeedle(this.Context);
needle.Value = 2;
scale.AddIndicator(needle);
```

The last thing that you need to do is to add the scale to the gauge:

```Java
gauge.addScale(scale);
```
```C#
gauge.AddScale(scale);
```

![TelerikUI-Gauges-GettingStarted](images/gauges-getting-started.png "This is how the gauge should look like.")