---
title: Properties and Events
page_title: Properties and Events
position: 2
slug: sidedrawer-features-properties-events
---
# Introduction
This article describes the properties and the events that are specific for the **RadSideDrawer** component.

# Properties
- **DrawerContent** - of type View which gets or sets the drawer (initially hidden) content.
- **MainContent** - of type View which gets or sets the (initially visible) content of the component.
- **IsOpen** - of type bool which gets or sets a value indicating if the drawer content is visible.
- **DrawerLength** - of type double which gets or sets how much the drawer content should be extended over the main content in opened position.
- **DrawerLocation** - of type SideDrawerLocation which gets or sets the location from which the drawer will be opened. This property can be set to one of the following values: {Left, Right, Top or Bottom}.
- **DrawerTransitionDuration** - of type double which gets or sets the duration of the chosen transition.
- **DrawerTransitionType** - of type SideDrawerTransitionType which gets or sets the transition of the component. This property can be set to one of the following values: {Fade, Push, Reveal, ReverseSlideOut, ScaleUp, SlideAling, SlideInOnTop}.
- **DrawerTransitionFadeOpacity** - of type double which gets or sets the opacity of the fade layer of the component. This controls the fade layer opacity on Android or the dim opacity on iOS.
- **Commands** - a collection of type ICommand containing all user defined commands.


# Events

- **DrawerOpening** - invoked when the drawer starts opening.
- **DrawerOpened** - invoked when the drawer is already opened.
- **DrawerClosing** - invoked when the drawer starts closing.
- **DrawerClosed** - invoked when the drawer is already closed.

# See Also

[Commands]({%slug sidedrawer-features-commands%})