---
title: Animations
page_title: Animations
position: 0
slug: gauge-animations
---

# Animations

All gauge indicators are being animated upon initial load and upon value change. The animations are enabled by default and you have full control over them via the **AnimationSettings** property. By default the property of the indicator is null and in this case the **AnimationSettings** property of the gauge is taken into consideration. This allows you to control all animations by setting only one property - the property of the gauge. If you need an indicator to be animated differently, you can set its **AnimationSettings** property as it has a higher precedence than the gauge's property.

<snippet id='gauge-animations'/>

## See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Windows]({% slug getting-started-windows %})
- [Getting Started on Mac]({% slug getting-started-mac %})
