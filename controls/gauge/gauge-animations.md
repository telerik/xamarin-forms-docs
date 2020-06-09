---
title: Animations
page_title: Xamarin Gauge Documentation | Animations
description: Check our &quot;Animations&quot; documentation article for Telerik Gauge for Xamarin control.
position: 3
slug: gauge-animations
---

# Animations

All gauge indicators are being animated upon initial load and upon value change. The animations are enabled by default and you have full control over them via the **AnimationSettings** property. 

**AnimationSettings** property could be applied to the Gauge or separaptely to the indicators. By default the property of the indicator is null and in this case the **AnimationSettings** property of the gauge is taken into consideration. This allows you to control all animations by setting only one property - the property of the gauge. If you need an indicator to be animated differently, you can set its **AnimationSettings** property as it has a higher precedence than the gauge's property.

The **AnimationSettings** class contains the following properties:

* Duration *(int)*: Defines the duration of the animation in milliseconds.
* Easing: Defines the easing of the animation.
* Enabled *(bool)*: Specifies whether the animation will be enabled or not. By default the Enabled property is *true*.

## Example

Here is an example how to set the AnimationSettings property:

<snippet id='gauge-animations'/>

Here is a gif animation that shows all animations provided in the Gauge control:

![Gauge Animations](images/gauge-animations.gif)

>important [SDK Samples Browser application]({%slug developer-focused-examples%}) contains Animations example that shows how the AnimationSettings property works. The example can be found in the Features section of the Gauge control.

## See Also

- [Indicators]({%slug gauge-indicators%})
- [Positioning]({%slug gauge-positioning%})
- [Ranges]({%slug gauge-ranges%})
