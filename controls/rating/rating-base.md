---
title: Key Features
page_title: Xamarin Rating Documentation | Key Features
description: Check our &quot;Key Features&quot; documentation article for Telerik Rating for Xamarin control.
position: 2
slug: rating-base
---

# Key Features

RadRating is presented by two components named [RadShapeRating]({% slug shape-rating %}) and [RadTemplatedRating]({% slug templated-rating %}) in order to provide various visualizations of the rating functionality. 

This topic gives and overview of the key features of the Rating component that are common for both **RadShapeRating** and **RadTemplatedRating**.

>tip RadShapeRating and RadTemplatedRating inherit from the **RatingBase** abstract class that provides their common features.

## Rating Value

RadRating exposes a **Value** property that is used to set and read the number of the selected rating items.

<snippet id='rating-features-value' />
 
## Read-only Mode

RadRating supports read-only mode in which the end user cannot change its Value (the number of the selected items). You could enable the read-only mode through **IsReadOnly** property:

<snippet id='rating-features-readonly' />
 
## Configuration Settings

* **ItemsCount**: Defines the number of the items that are visualized in the rating control. The default value is 5 items;
* **ItemsSpacing**: Specifies the distance between the separate items in pixels. Default value is 10px;

<snippet id='rating-features-configuration' />
 
## Events

RadRating provides the following event:

* **ValueChanged**: Occurs whenever Value property is changed. The ValueChanged event handler receives two parameters:
	* The sender argument which is of type *object*, but can be cast to *RadShapeRating* or *RadTemplatedRating* type;
	* А **ValueChangedEventArgs** object which exposes both old and new values of the **Value** property.
 
## See Also

- [RadShapeRating]({% slug shape-rating %})
- [RadTemplatedRating]({% slug templated-rating %})