---
title: Shape Rating
page_title: Shape Rating
position: 3
slug: shape-rating
---

# Shape Rating

**RadShapeRating** component is designed to be used in the simplest scenarios where an ordinary rating component is required. This control allows easy customization of the colors and shape of the default rating item.

## Shape Types

RadShapeRating exposes **ItemShape** property of type *RadPathGeometry* which is used to define the shape of the rating items.

For easy and fast setup RadRating includes several simple shapes that can be used for rating items out of the box. This is accomplished through the static **Geometries** class which resides in the **Telerik.XamarinForms.Primitives.SkiaSharp.Rating** namespace. This class exposes static properties that return predefined shapes. 

>tip For more details on RadPath and RadPathGeometry check the documentation here: [RadPath Overview]({%slug path-overview%}).

Here is how each of the geometries can be used:

- **Star** (default)

<snippet id='rating-geometries-star'/>

![](images/rating-star.png)

- **Circle**

<snippet id='rating-geometries-circle'/>

![](images/rating-circle.png)

- **Diamond**

<snippet id='rating-geometries-diamond'/>

![](images/rating-diamond.png)

- **Heart**

<snippet id='rating-geometries-heart'/>

![](images/rating-heart.png)

- Custom RadPathGeometry Shape:

<snippet id='rating-geometries-customgeometry' />

where *telerikCommon* namespace is defined like this:

<snippet id='xmlns-telericommon' />

![](images/rating-triangle.png)

## Shapes Styling

You can control the visual appearance of the predefined shapes through the following styling settings:

* **ItemFill** (*Color*): Specifies the color used to fill the rating item.
* **ItemStroke** (*Color*): Defines the color used by the border around the geometry.
* **ItemStrokeThickness** (*double*): Sets the width of the border around the geometry.
* **SelectedItemFill** (*Color*): Defines the color used to fill the selected rating item.
* **SelectedItemStroke** (*Color*): Sets the color used by the border around the selected geometry.
* **SelectedItemStrokeThickness** (*double*): Specifies the width of the border around the selected geometry.

<snippet id='rating-geometries-styling' />

![Rating Styling](images/rating-styles.png)

## See Also

- [Key Features]({% slug rating-base %})
- [Templated Rating]({% slug templated-rating %})
