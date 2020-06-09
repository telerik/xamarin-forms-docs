---
title: Properties
page_title: Xamarin SideDrawer Documentation | Properties
description: Check our &quot;Properties&quot; documentation article for Telerik SideDrawer for Xamarin control.
position: 2
slug: sidedrawer-features-properties
---
# Properties

RadSideDrawer control exposes the following properties:

* **DrawerContent** (*View*): Specifies the drawer (initially hidden) content.
* **MainContent** (*View*) Specifies the (initially visible) content of the component.
* **IsOpen** (*bool*): Specifies a value indicating if the drawer content is visible.
* **DrawerLength** (*double*): Defines how much the drawer content should be extended over the main content in opened position.
* **DrawerLocation** (*SideDrawerLocation*): Specifies the location from which the drawer will be opened. The following options are available: 
	* **Left** 
	* **Right**
	* **Top**
	* **Bottom**

* **DrawerTransitionDuration** (*double*): Defines the duration of the chosen transition.
* **DrawerTransitionType** (of type *Telerik.XamarinForms.Primitives SideDrawerTransitionType*): Defines the transition of the component. This property can be set to one of the following values: 
	* **Fade**, **Push**, **Reveal**, **ReverseSlideOut**, **ScaleUp**, **SlideAling**, **SlideInOnTop**, **Custom**
	
* **DrawerTransitionFadeOpacity** (*double*): Defines the opacity of the fade layer of the component. This controls the fade layer opacity on Android or the dim opacity on iOS.
* **AreGesturesEnabled** (*bool*): Specifies ability for gestures to open and close the drawer.
* **TouchTargetThreshold** (*double*): Defines the touchable area (number of pixels from the screen edges) that will allow to open the DrawerContent. 

>important A sample Location example can be found in the SideDrawer/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

[Events]({%slug sidedrawer-features-events%})
[Commands]({%slug sidedrawer-features-commands%})
