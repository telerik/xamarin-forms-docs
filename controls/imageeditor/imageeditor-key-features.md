---
title: Key Features
page_title: Key Features
position: 2
slug: imageeditor-key-features
---

# Key Features Toolbar

The purpose of this help article is to show you the key features of the RadPdfViewer control.

## Image Source

RadImageEditor control enables you to visualize images through the following property

* **Source**(of type *Xamarin.Forms.ImageSource*): Specifies the source of the image.

The images could be loaded from:
* **File**
* **Uri**
* **Stream**

## Zoom Level Support

* **ZoomLevel**(*double*): Specifies the current zoom level of the viewed image. The default value is 1. A zoom level of 1 means the image is displayed with its original size. 

The RadImageEditor exposes properties for applying min and max zoom values: 

* **MinZoomLevel**(*double*): Specifies the minimum zoom level of the image. The default value is 0.1. Setting the ZoomLevel property is coerced between MinZoomLevel and MaxZoomLevel.
* **MaxZoomLevel**(*double*): Specifies the maximum zoom level of the image. The default value is 10. Setting the ZoomLevel property is coerced between MinZoomLevel and MaxZoomLevel.

>important **SDK Browser application** contains a sample ZoomLevel example. You can find it in the **ImageEditor/Features** folder.

### Example

Here is an example how to use the RadImageEditor Min and Max Zoom Level:

<snippet id='imageeditor-zoom-level'/>

In addition to this, you need to add the following namespace:

<snippet id='xmlns-telerikimageeditor'/>

## BusyIndicator Template

A default busy template is shown when the image is loading. You could easily define a custom busy template through the following property:

* **BusyIndicatorTemplate**(*DataTemplate*): Specifies a DataTemplate to be used when displaying a busy indicator during long running asynchronous operations, e.g. when loading an image. When no template is specified, a default busy indicator is shown.

### Example

Here is an example how to use the RadImageEditor BusyIndicatorTemplate:

<snippet id='imageeditor-busy-template'/>

In addition to this, you need to add the following namespace:

<snippet id='xmlns-telerikimageeditor'/>

This is the result:

![ImageEditor BusyTemplate](images/imageeditor-busy-template.png "ImageEditor BusyTemplate")

>important **SDK Browser application** contains a sample BusyTemplate example. You can find it in the **ImageEditor/Features** folder.

## See Also

- [ImageEditor Toolbar]({%slug imageeditor-toolbar%})
- [Custom Toolbar]({%slug imageeditor-custom-toolbar%})
