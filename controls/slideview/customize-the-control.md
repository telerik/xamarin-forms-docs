---
title: Customize the Control
page_title: Customize the Control
position: 2
slug: sideview-customize-the-control
---

# Customize the Control

**RadSlideView** has several properties which you can use to customize its appearance and behavior. This article lists them briefly.

### Customizing the indicators

The indicators are the little ellipses displayed under the selected view. The control allows you to easily change their color and size. You can do that via the following properties:

- **ShowIndicators**: This property sets the visibility of the indicators. You can hide them by setting it to False.

- **IndicatorColor**: This property sets the color of the indicators except the selected one.

- **SelectedIndicatorColor**: This property sets the color of the selected indicator.

- **IndicatorsSpacing**: This property sets the spacing between the indicators.

### Customizing the slide buttons

The slide buttons can be customized via the following properties:

- **ShowButtons**: This property sets the buttons visibility. You can hide them by setting it to False.

- **SlideButtonsColor**: This property sets the buttons color.

- **SlideButtonsSize**: This property sets the buttons size.


### Disabling the animation

The control supports a built-in sliding animation which is enabled by default. To disable it you can set the control's **IsAnimated** property to False.

### Disabling swiping

You can disable the swiping and allow the end user to change the view only with the slide buttons. To do this set the **IsSwipingEnabled** property to False.

### Enabling infinity scrolling

By default when you reach to the last view, the 'next' slide button won't do anything. You can alter this and allow repeating of the views when you reach the last view, via the **IsInfiniteScrollingEnabled** property.

### Setting orientation

You change the orientation of the slide animation via the **Orientation** property of RadSlideView.

### See Also
- [Getting Started]({% slug slideview-getting-started %})
- [ItemTemplate]({% slug slideview-features-itemtemplate %})