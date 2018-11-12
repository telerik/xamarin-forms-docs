---
title: Properties and Events
page_title: Properties and Events
position: 3
slug: sidedrawer-features-properties-events
---
# Introduction
This article describes the properties and the events that are specific for the **RadSideDrawer** component.

# Properties
- **DrawerContent** (View): Gets or sets the drawer (initially hidden) content.
- **MainContent** (View which gets or sets the (initially visible) content of the component.
- **IsOpen** (bool): Gets or sets a value indicating if the drawer content is visible.
- **DrawerLength** (double): Gets or sets how much the drawer content should be extended over the main content in opened position.
- **DrawerLocation** (SideDrawerLocation): Gets or sets the location from which the drawer will be opened. This property can be set to one of the following values: {Left, Right, Top or Bottom}.
- **DrawerTransitionDuration** (double): Gets or sets the duration of the chosen transition.
- **DrawerTransitionType** (SideDrawerTransitionType): Gets or sets the transition of the component. This property can be set to one of the following values: {Fade, Push, Reveal, ReverseSlideOut, ScaleUp, SlideAling, SlideInOnTop, Custom}.
- **DrawerTransitionFadeOpacity** (double): Gets or sets the opacity of the fade layer of the component. This controls the fade layer opacity on Android or the dim opacity on iOS.
- **Commands** (ObservableCollection): A collection with elements of type **ICommand** containing all user defined commands.
- **AreGesturesEnabled**(bool): Gets or sets ability for gestures to open and close the drawer

# Events

- **DrawerOpening**: Raised when the drawer starts opening.
- **DrawerOpened**: Raised when the drawer is already opened.
- **DrawerClosing**: Raised when the drawer starts closing.
- **DrawerClosed**: Raised when the drawer is already closed.

# See Also

[Commands]({%slug sidedrawer-features-commands%})
