---
title: Shape Rating
page_title: Shape Rating
position: 2
slug: shape-rating
---

# Overview

The **RadShapeRating** component is designed to be used in the simplest scenarios where an ordinary rating component is required. This control allows easy customization of the colors and shape of the default rating item. On top of the API provided by the [RadRatingBase]({% slug rating-base %}) the RadShapeRating provides the following members:

- (Color) **ItemFill** - Gets or sets the color used to fill the rating item.
- (Color) **ItemStroke** - Gets or sets the color used by the border around the geometry.
- (double) **ItemStrokeThickness** - Gets or sets the width of the border around the geometry.
- (Color) **SelectedItemFill** - Gets or sets the color used to fill the selected rating item.
- (Color) **SelectedItemStroke** - Gets or sets the color used by the border around the selected geometry.
- (double) **SelectedItemStrokeThickness** - Gets or sets the width of the border around the selected geometry.
- (RadPathGeometry) **ItemShape** - Gets or sets the geometry that will be visualized inside the rating item.

For easy and fast setup we provide several simple shapes that can be used for rating items out of the box. We provide the static **Geometries** class which resides in the **Telerik.XamarinForms.Controls.SkiaSharp.Rating** namespace. This class exposes static properties that return predefined shapes. All properties are of type **RadPathGeometry** and can be set as **ItemShape** of the RadShapeRating component.

Here is how each of the geometries look like:

- **Star**
![](images/rating-overview.png)

- **Circle**
![](images/rating-circle.png)

- **Diamond**
![](images/rating-diamond.png)

- **Heart**
![](images/rating-heart.png)

Here is an example demonstrating how each of these predefined shapes can be used.
