---
title: Placeholder Layout
page_title: RadDataForm Placeholder Layout | Telerik UI for Xamarin.Android Documentation
description: Explains how to use and customize the data form placeholder layout.
slug: data-form-placeholder-layout
tags: dataform, data, form, layout
position: 12
publish: true
---

## DataForm for Xamarin.Android: Placeholder Layout

To use the placeholder layout developers must create an instance of the **DataFormPlaceholderLayoutManager** class.

```C#
// The second argument must have a ViewGroup as the root element in the XML. 
// This can be any view group.
dataForm.LayoutManager =
	new DataFormPlaceholderLayoutManager(context, Resource.Layout.placeholder_layout);
```

The placeholder_layout root element must contain **ViewGroup** objects where each child has a tag
that is set to the **name** of the property which will be edited there. For example consider this simple XML:

```XML
<?xml version="1.0" encoding="utf-8"?>
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <FrameLayout
        android:layout_gravity="start|top"
        android:tag="Name"
        android:layout_width="150dp"
        android:layout_height="wrap_content"/>
</FrameLayout>
```

Here the only child element has a tag set to "Name". This tag will be compared to the properties of the edited object and the editor responsible
for editing the Name property will be inserted in the Name placeholder. The placeholder is positioned in the
top left corner of the root layout. Similarly, all other editors can be placed at arbitrary positions or even in a hierarchy of view groups allowing
very complex layouts.

Finally, it is important to note that **a placeholder for every editor must be provided**. Also you may need to call **dataForm.setFillViewport(true)** in order to consume the whole space from the view port.