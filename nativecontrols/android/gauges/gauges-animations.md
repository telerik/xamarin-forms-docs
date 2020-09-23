---
title: Animations
page_title: RadGaugeView Animations | Telerik UI for Xamarin.Android Documentation
description: This article explains how to use animations with **RadGaugeView**
slug: gauge-android-animations
tags: radgaugeview, gauge, animations
position: 4
publish: true
---

## Gauges for Xamarin.Android: Animations

### Built-in animations

**RadGaugeView** has built-in animations that allows animating its indicators. Turning the animations on is as easy as setting 2 properties. You should use <code>Animated</code> boolean property of an indicator to allow the animations and then use <code>AnimationDuration</code> which, as its name says, is used to set the duration of the animation.

```C#
needle.Animated = true;
needle.AnimationDuration = 500;
```

You can also set a timing function using TimeInterpolator.

```C#
needle.Interpolator = new AccelerateDecelerateInterpolator();
```

After the indicator's animations are turned on, when a change in its value occurs runtime, the indicator will be animated from the previous to the new value. It is also possible to set a value from which the animations start every time the value is changed. This can be achieved through indicator's <code>AnimationStartValue</code> property.

