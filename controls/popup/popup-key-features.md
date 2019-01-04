---
title: Key Features
page_title: Key Features
position: 2
slug: popup-key-features
---

# Key Features

The purpose of this help article is to show you the key features of the **RadPopup** control. 

## Open / Close the popup

In order to show the RadPopup control you would need to set **IsOpen** property to *True*. By default the popup stays open until the **IsOpen** property is set to *False*.

## Modal popup

You could define whether the popup will be modal or not through the **IsModal** property. When **IsModal** is *True*, the UI behind the popup gets inactive and cannot be used until the popup is closed.

## Placement Configuration

RadPopup provides a few useful properties which will help you position it per your preferences.   

**PlacementTarget** property defines an element relative to which the popup is positioned when it is open. In addition, **Placement** property specifies the way the popup aligns to its placement target. Placement property is of type *PlacementMode* and could be set to any of Top, Right, Left, Bottom or Center options.


## Animation Settings

RadPopup provides two built-in animations played when the popup is shown/hidden. You could apply the animation through **AnimationType** property which exposes the following options:

* None (can be used to disable the animation)
* Fade
* Zoom

You could also customize the duration and easing (acceleration over time) through **AnimationDuration**(in ms) and **AnimationEasing** (of type *Xamarin.Forms.Easing*) properties.

## See Also

- [Getting Started]({% slug popup-getting-started%})
