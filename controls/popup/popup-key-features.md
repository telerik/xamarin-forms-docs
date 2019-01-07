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

## Setting Content

To host content inside RadPopup control you can either add it directly as a child element or use the popup’s **ContentTemplate** property.

The example below demonstrates how you could create a sample DataTemplate and set it as RadPopup ContentTemplate.

First, add the needed DataTemplate to the page Resources:


## Modal popup

You could define whether the popup will be modal or not through the **IsModal** Boolean property. When **IsModal** is *True*, the UI behind the popup gets inactive and cannot be used until the popup is closed.

In addition, **OutsideBackgroundColor** property lets you customize the color outside the modal popup to indicate the user cannot interact with the UI behind it.

Below is an example on how you could create a modal popup.

## Placement Configuration

RadPopup provides a few useful properties which will help you position it per your preferences.   

**PlacementTarget** property defines an element relative to which the popup is positioned when it is open. In addition, **Placement** property specifies the way the popup aligns to its placement target. Placement property is of type *PlacementMode* and could be set to any of Top, Right, Left, Bottom or Center options.

* **PlacementTarget**: Defines an element relative to which the popup is positioned when it is open;
* **Placement**: Specifies the way the popup aligns to its placement target. Placement property is of type *PlacementMode* and can be set to any of the Top, Right, Left, Bottom or Center options;
* **HorizontalOffset / VerticalOffset**: Specifies the horizontal/vertical distance between the placement target and the alignment point.  

Note that in the example RadPopup is defined inline through *RadPopup.Popup* attached property applied to the Button control, so the Button is considered as PlacementTarget of RadPopup.

## Animation Settings

RadPopup provides two built-in animations played when the popup is shown/hidden. You could apply the animation through **AnimationType** property which exposes the following options:

* None (use it to disable the animation)
* Fade
* Zoom

You could also customize the duration and easing (acceleration over time) through **AnimationDuration**(in ms) and **AnimationEasing** (of type *Xamarin.Forms.Easing*) properties.

## See Also

- [Getting Started]({% slug popup-getting-started%})
