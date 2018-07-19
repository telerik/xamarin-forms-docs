---
title: Animations
page_title: Animations
position: 0
slug: gauge-animations
---

# Animations

All gauge indicators are being animated upon initial load and upon value change. The animations are enabled by default and you have full control over them via the **AnimationSettings** property. 

By default the property of the indicator is null and in this case the **AnimationSettings** property of the gauge is taken into consideration. This allows you to control all animations by setting only one property - the property of the gauge. If you need an indicator to be animated differently, you can set its **AnimationSettings** property as it has a higher precedence than the gauge's property.

The ***AnimationSettings** class contains the following properties:

* Duration*(int)*: Define the duration of the animation in milliseconds.
* Easing: Define the easing of the animation.
* Enabled*(bool)*: Define if the animation will be enabled or not. By default the Enabled property is *true*.

## Example

Here is an example how to set the AnimationSettings property:

<snippet id='gauge-animations'/>

>important [SDK Samples Browser application]({%slug developer-focused-examples%}) contais Animations example that shows how the AnimationSettings propery works. The example can be found in the Features section of the Gauge control.

## See Also

- [Indicators]({%slug gauge-indicators%})
- [Positioning]({%slug gauge-positioning%})
- [Ranges]({%slug gauge-ranges%})
