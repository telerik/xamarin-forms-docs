---
title: Linear Layout
page_title: RadDataForm Linear Layout | Telerik UI for Xamarin.Android Documentation
description: Explains how to use and customize the data form linear layout.
slug: data-form-linear-layout
tags: dataform, data, form, layout
position: 11
publish: true
---

## DataForm for Xamarin.Android: Linear Layout

RadDataForm can easily arrange its editors in a linear layout instead of the default table layout. This can be done with the **DataFormLinearLayoutManager** class. 

```C#
// The context argument of the manager is the app context/activity.
dataForm.LayoutManager = new DataFormLinearLayoutManager(context);
```

The linear manager can also change its orientation:

```C#
linearLayoutManager.Orientation = (int)Android.Widget.Orientation.Horizontal;
```

Finally, DataFormLinearLayoutManager can be initialized with a special linear layout inflated from XML. 

Assuming the app project contains a layout called R.layout.data_form_custom_linear_layout, the manager can be initialized like this:

```C#
// Note that the orientation of the linear layout specified in the XML 
// will be overwritten by the orientation of the manager itself.
// Another important detail is that the XML must have the LinearLayout 
// object as the root element.
DataFormLinearLayoutManager manager = 
	new DataFormLinearLayoutManager(context, 
		Resource.Layout.data_form_custom_linear_layout);
```
