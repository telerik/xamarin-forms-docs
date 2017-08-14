---
title: Animations
page_title: Alert Animations
position: 4
---

# Alert: Animations

TKAlert supports tree predefined show/dismiss animations: 

<table>

<tr>
<th>Animation Type</th>
<th>Figures</th>
</tr>

<tr>
<td>Fade</td>
<td><img src="../images/alert-animations-fade.gif"></td>
</tr>

<tr>
<td>Scale</td>
<td><img src="../images/alert-animations-scale.gif"></td>
</tr>

<tr>
<td>Slide</td>
<td><img src="../images/alert-animations-slide.gif"></td>
</tr>

</table>

> The animated images above are just for illustration purposes. They are missing some fps quality because of the image processing software used to create these images. In order to get a real understanding of how the animations look and feel, check the Demo application that ships with the UI for Xamarin suite.

These animations can be applied when TKAlert is being shown or dismissed.


## Appear/hide animations

Those animations are applied when showing/dismissing the alert. You can add appear/hide animation by setting the <code>appearAnimation</code> and <code>hideAnimation</code>  property of <code>TKAlertStyle</code>:

<snippet id='alert-animation'/>

<snippet id='alert-animation-swift'/>

```C#
alert.Style.ShowAnimation = TKAlertAnimation.Scale;
alert.Style.DismissAnimation = TKAlertAnimation.Scale;
```

## Gesture animations

TKAlert can recognize gestures. This allows end-users to dismiss the alert with a swipe or a tap gesture.
Enabling gesture recognition in TKAlert could be done as fallows:

<snippet id='alert-dismiss'/>

<snippet id='alert-dismiss-swift'/>

```C#
alert.DismissMode = TKAlertDismissMode.Tap;
```

## Animations duration

Animations are controlled by setting properties of <code>TKAlert</code> class. The animation duration is controlled by setting the <code>animationDuration</code> property:

<snippet id='alert-anim-duration'/>

<snippet id='alert-anim-duration-swift'/>

```C#
alert.AnimationDuration = 0.5f;
```
