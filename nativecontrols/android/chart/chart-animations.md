---
title: Animations
page_title: RadChartView Animations | Telerik UI for Xamarin.Android Documentation
description: An article about the animations in RadChartView for Android. This article explains how to use the chart animations.
slug: chart-animations
tags: radchartview, animations, chart
url: /chart-animations
position: 10
publish: true
---

# RadChartView: Animations

In this article, you will learn to use the animations feature in **RadChartView for Android**.

## Overview

The animations for **RadChartView** are enabled by a class called **ChartAnimationPanel**. The animation panel is a custom layout to which the chart must be added.
Developers can either use addView() to add the chart (this means the panel can also be configured through XML) and also through the setChart() method. For example:

``` Java
ChartAnimationPanel animationPanel = new ChartAnimationPanel(context);
animationPanel.setChart(chart);
// or animationPanel.addView(chart);
```
```C#
animationPanel.Chart = chart;
// or animationPanel.AddView(chart);
```

Then when the chart is added, developers have to add animations for each series. The animations are added with the animationPanel.addAnimation() method:
```Java
animationPanel.addAnimation(new ChartFadeAnimation(series));
```
```C#
animationPanel.AddAnimation(new ChartFadeAnimation(series));
```

>Note that the ChartFadeAnimation constructor accepts a series object. If a chart animation is initialized without a series object and this animation is
added directly to the animation panel an exception will be thrown. Animations without associated series can only be used with ChartAnimationGroup which
provides its associated series to its child animations as will be shown later.

# Supported Animations

The currently supported animations are ChartFadeAnimation, ChartTranslateAnimation, ChartRotateAnimation, ChartScaleAnimation and ChartAnimationGroup.

## ChartFadeAnimation

```Java
ChartFadeAnimation fade = new ChartFadeAnimation(series);
fade.setStartOpacity(0.3f);
```
```C#
ChartFadeAnimation fade = new ChartFadeAnimation(series);
fade.StartOpacity = 0.3f;
```

## ChartTranslateAnimation

ChartTranslateAnimation is used, as the name suggests, to move a series into view.
```Java
ChartTranslateAnimation translateAnimation = new ChartTranslateAnimation(series);
translateAnimation.setStartX(-200);
translateAnimation.setStartY(-200);
```
```C#
ChartTranslateAnimation translateAnimation = new ChartTranslateAnimation(series);
translateAnimation.StartX = -200;
translateAnimation.StartY = -200;
``` 

## ChartRotateAnimation

```Java
ChartRotateAnimation rotateAnimation = new ChartRotateAnimation(series);
rotateAnimation.setStartAngle(-90f);
rotateAnimation.setPivotX(500);
rotateAnimation.setPivotY(500);
```
```C#
ChartRotateAnimation rotateAnimation = new ChartRotateAnimation(series);
rotateAnimation.StartAngle = -90f;
rotateAnimation.PivotX = 500;
rotateAnimation.PivotY = 500;
```

## ChartAnimationGroup

ChartAnimationGroup does not animate the chart by itself since it is a container for multiple animations.
The child animations can be started either in SEQUENTIAL or CONCURRENT mode. This is done with the setSequenceMode() method.
If the sequence mode is SEQUENTIAL the duration of group itself will be divided by the number of children and each child animation
will be as long as the result from that division.

```Java
ChartAnimationGroup group = new ChartAnimationGroup(series);
group.setSequenceMode(ChartAnimationSequenceMode.SEQUENTIAL);
group.addAnimation(new ChartFadeAnimation());
group.addAnimation(new ChartScaleAnimation());
```
```C#
ChartAnimationGroup group = new ChartAnimationGroup(series);
group.SequenceMode = ChartAnimationSequenceMode.SEQUENTIAL;
group.AddAnimation(new ChartFadeAnimation());
group.AddAnimation(new ChartScaleAnimation());
```

## Common API

Finally every animation has a common API. Each animation implements the ChartAnimationInterface which looks like this:
```Java
public interface ChartAnimation {
    ViewPropertyAnimatorCompat start(SeriesAnimationView viewToAnimate);
    void setInitialValues(SeriesAnimationView view);
    void setDuration(long value);
    long getDuration();
    void setInterpolator(Interpolator value);
    Interpolator getInterpolator();
    void setInitialDelay(long value);
    long getInitialDelay();
    ChartSeries getSeries();
    void addAnimationFinishedListener(ChartAnimationFinishedListener listener);
    void removeAnimationFinishedListener(ChartAnimationFinishedListener listener);
}
```
```C#
public interface ChartAnimation
{
	ViewPropertyAnimatorCompat start(SeriesAnimationView viewToAnimate);
    void setInitialValues(SeriesAnimationView view);
    long Duration {get; set;}
    Interpolator Interpolator {get; set;}
    long InitialDelay {get; set;}
    ChartSeries Series {get;}
    void AddAnimationFinishedListener(ChartAnimationFinishedListener listener);
    void RemoveAnimationFinishedListener(ChartAnimationFinishedListener listener);
}
```
