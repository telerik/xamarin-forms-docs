---
title: Animations
page_title: Xamarin BusyIndicator Documentation | Animations
description: Check our &quot;Animations&quot; documentation article for Telerik BusyIndicator for Xamarin control.
position: 2
slug: busyindicator-features-animations
---

# Animations

## Built-in Animations

**RadBusyIndicator** provides a set of built-in animations. You can change the selected animation through the **AnimationType** property.

The **AnimationType** property is an enum that accepts values from **Animation1** to **Animation10**. **Animation1** is the default.

![BusyIndicator animations list](images/busyindicator-features-animations-0.png) 

> The animation will be displayed only when the **IsBusy** property is set to **True**.
	
### Changing animation size and color

You can use the following properties to change the size and color of the animated element (animation content):

* **AnimationContentWidthRequest**
* **AnimationContentHeightRequest**
* **AnimationColor**

By default, the size of the animation content is 25x25 pixels.

The snippet below shows how to configure the predefined RadBusyIndicator animations:

<snippet id='busyindicator-animations-settings' />

Here is the result on different platforms:

![BusyIndicator Settings](images/busyindicator-animations-settings.png)

> **AnimationContentWidthRequest**, **AnimationContentHeightRequest** and **AnimationColor** won't be applied if you use custom animations.
	
## Custom animation

You can create a custom animation by using a combination of 3 properties - AnimationType, BusyContent, and Animations:

* To tell the control that you use a custom animation, set the **AnimationType** to **Custom**.
* Add the content that you want to animate to **BusyContent**.
* The custom animation is added in the **Animations** collection of the busy indicator.

The following example demonstrates how to create a custom animation that changes the opacity of a text (blinking effect).

### Defining custom animation in Xaml

<snippet id='busyindicator-animations-xaml'/>
<snippet id='busyindicator-animations-code'/>

### Defining custom animation in code-behind

<snippet id='busyindicator-animations-csharp'/>

## See Also

- [Project Wizard]({% slug project-wizard %})
- [Getting Started]({% slug busyindicator-getting-started %})