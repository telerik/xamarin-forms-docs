---
title: Badge Styling
page_title: Xamarin Badge Documentation | Badge Styling
description: Check our &quot;Badge Styling&quot; documentation article for Telerik BadgeView for Xamarin control.
position: 9
slug: badgeview-styling
---

# Badge Styling

Use the following properties to style the look of the badge:

* **BadgeText**(*string*): Defines the badge text.
* **BadgeTextColor**(*Xamarin.Forms.Color*): Defines the badge text color.
* **BadgeTextMargin**(*Xamarin.Forms.Thickness*): Defines the mergin of the badge text.
* **BadgeFontSize**(*double*): Defines the font size of the badge text.
* **BadgeFontFamily**(*string*): Defines the badge text font family.
* **BadgeFontAttributes**(*FontAttributes*): Defines the badge text font attributes.
* **BadgeBackgroundColor**(*Xamarin.Forms.Color*): Defines the background color of the badge.
* **BadgeBorderColor**(*Xamarin.Forms.Color*): Defines the badge border color. 
* **BadgeBorderThickness**(*Xamarin.Forms.Thickness*): Defines the thickness of the badge border.
* **BadgeCornerRadius**(*Xamarin.Forms.Thickness*): Defines the corner radius of the badge border.
* **BadgeMinimumWidth**(*double*): Defines the minimum width of tha badge.
* **BadgeMinimumHeight**(*double*): Defines the minimum height of the badge.

>important Use `BadgeType` for predefined types for the badge. If you set the `BadgeText` it will override the predefined icon for the padge type.

## Example

The BadgeView definition with some of the above properties set.

<snippet id='badgeview-styling'/>

Use the following namespace:

<snippet id='xmlns-telerikprimitives'/>

The final Result::

![Badge Styling](images/badgeview-badge-styling.png)

>tip Badge Styling Example can be found inside the FeaturesCategory folder in SDK Browser Application/Examples/BadgeViewControl

## See Also

- [Key Features]({%slug badgeview-key-features%})
- [Badge Position and Alignment]({%slug badgeview-position-alignment%})
- [Badge Animation]({%slug badgeview-animation%})
- [CustomizAation]({%slug badgeview-customization%})