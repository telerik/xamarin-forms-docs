---
title: Badge Animation
page_title: Xamarin BadgeView Documentation | RadBadgeView Animation
description: Check our &quot;Badge Animation&quot; documentation article for Telerik BadgeView for Xamarin control.
tags: badge, animation, badgeview for xamarin, badge for xamarin
position: 4
slug: badgeview-animation
---

# Badge Animation

BadgeView allows you to display the badge indicator using animation. The following properties are related to the Badge animation feature:

**BadgeAnimationType**(enum of type *Telerik.XamarinForms.Primitives.BadgeAnimationType*): Specifies the type of the animation applied to the BadgeView. You can choose between two options: `None` and `Scale`. The default BadgeAnimationType is `Scale`. 

**BadgeAnimationDuration**(*int*): Specifies the duration for the badge animation in milliseconds. The default value is `300`.

**BadgeAnimationEasing**([Xamarin.Forms.Easing](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/user-interface/animation/easing)): Specifies the Easing of the badge animation. The default value is `SinInOut`.

## Example

Here is the Animation properties set to the RadBadgeVierw control:

<snippet id='badgeview-animation'/>

>tip Badge Animation example is located inside the SDK Browser Application/Examples/BadgeViewControl/Features Category folder.

## See Also

- [Predefined Badges]({%slug badgeview-predefined-badges%})
- [Badge Position and Alignment]({%slug badgeview-position-alignment%})