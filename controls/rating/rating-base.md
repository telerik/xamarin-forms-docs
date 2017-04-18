---
title: Rating Base
page_title: Rating Base
position: 1
slug: rating-base
---

**RadRatingBase** is an abstract class that provides the basic features of the rating component. It exposes the following members:
 - (bool) **IsReadOnly** - Gets or sets a value indicating if the component responses to UI interaction. End users will not be able to chanve the value if true.
 - (int) **ItemsCount** - Gets or sets the number of the items that are visualized.
 - (double) **ItemsSpacing** - Gets or sets the distance between the separate items.
 - (double) **Value** - Gets or sets the number of the selected rating items.
 - (event) **ValueChanged** - Invoked whenever Value property is changed.

The rest of the features come with the other two components [RadShapeRating]({% slug shape-rating %}) and [RadTemplatedRating]({% slug templated-rating %}).