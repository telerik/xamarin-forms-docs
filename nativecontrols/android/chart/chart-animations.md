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

## ChartView for Xamarin.Android: Animations

In this article, you will learn to use the animations feature in **RadChartView for Xamarin.Android**.

## Overview

The animations for **RadChartView** are enabled by a class called **ChartAnimationPanel**. The animation panel is a custom layout to which the chart must be added.

You can either use АddView() to add the ChartView instance (this means the panel can also be configured through XML) or also through the Chart property. For example:

```C#
ChartAnimationPanel animationPanel = new ChartAnimationPanel(this.Activity);
animationPanel.Chart = chartView;
// or animationPanel.AddView(chartView);
```

Then when the ChartView is added, you have to add animations for each series. The animations are added with the animationPanel.AaddAnimation() method:

```C#
animationPanel.AddAnimation(new ChartFadeAnimation(series));
```

>Note that the ChartFadeAnimation constructor accepts a series object. If a chart animation is initialized without a series object and this animation is
added directly to the animation panel an exception will be thrown. Animations without associated series can only be used with ChartAnimationGroup which
provides its associated series to its child animations as will be shown later.

# Supported Animations

The currently supported animations are ChartFadeAnimation, ChartTranslateAnimation, ChartRotateAnimation, ChartScaleAnimation and ChartAnimationGroup.

## ChartFadeAnimation

```C#
ChartFadeAnimation fade = new ChartFadeAnimation(series);
fade.StartOpacity = 0.3f;
```

## ChartTranslateAnimation

ChartTranslateAnimation is used, as the name suggests, to move a series into view.

```C#
ChartTranslateAnimation translateAnimation = new ChartTranslateAnimation(series);
translateAnimation.StartX = -200;
translateAnimation.StartY = -200;
``` 

## ChartRotateAnimation

```C#
ChartRotateAnimation rotateAnimation = new ChartRotateAnimation(series);
rotateAnimation.StartAngle = -90f;
rotateAnimation.PivotX = 500;
rotateAnimation.PivotY = 500;
```

## ChartAnimationGroup

ChartAnimationGroup does not animate the chart by itself since it is a container for multiple animations. The child animations can be started either in SEQUENTIAL or CONCURRENT mode. This is done with the SequenceMode property.

If the sequence mode is SEQUENTIAL the duration of group itself will be divided by the number of children and each child animation will be as long as the result from that division.

```C#
ChartAnimationGroup group = new ChartAnimationGroup(series);
group.SequenceMode = ChartAnimationSequenceMode.SEQUENTIAL;
group.AddAnimation(new ChartFadeAnimation());
group.AddAnimation(new ChartScaleAnimation());
```

## Common API

Finally every animation has a common API. Each animation implements the IChartAnimation interface which looks like this:

```C#
public interface IChartAnimation
{	
    long Duration {get; set;}  //defines the duration of the animation
	long InitialDelay {get; set;} //delays the start of the animation
    IInterpolator Interpolator {get; set;}  //defines the rate of change of the animation 
    ChartSeries Series {get;}
	
    void AddAnimationFinishedListener(IChartAnimationFinishedListener listener);
    void RemoveAnimationFinishedListener(IChartAnimationFinishedListener listener);
	void SetInitialValues(SeriesAnimationView view);
	ViewPropertyAnimatorCompat Start(SeriesAnimationView viewToAnimate);  
}
```
