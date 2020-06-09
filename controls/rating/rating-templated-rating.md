---
title: Templated Rating
page_title: Xamarin Rating Documentation | Templated Rating
description: Check our &quot;Templated Rating&quot; documentation article for Telerik Rating for Xamarin control.
position: 4
slug: templated-rating
---

# Templated Rating

**RadTemplatedRating** component is designed to be used in the cases where it is easier to provide a template (e.g. just an image) for the rating items instead of creating custom **RadPathGeometry**. On top of the [common Rating API]({% slug rating-base %}) this component adds the following members:

* **ItemTemplate** (*DataTemplate*): Defines the template used in the rating item.
* **SelectedItemTemplate** (*DataTemplate*): Specifies the template used in the selected rating item.

> Both templates should be set in order the control to function as expected.

Here is how the rating component can be setup:

<snippet id='rating-templates'/>

Check the result in the image below:

![](images/rating-templates.png)

## See Also

- [Key Features]({% slug rating-base %})
- [Shape Rating]({% slug shape-rating %})
