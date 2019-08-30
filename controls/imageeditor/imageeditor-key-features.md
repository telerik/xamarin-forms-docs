---
title: Key Features
page_title: Key Features
position: 2
slug: imageeditor-key-features
---

# Key Features

The purpose of this help article is to show you the key features of the RadImageEditor control.

## Image Source

RadImageEditor control enables you to visualize images through the following property

* **Source**(of type *Xamarin.Forms.ImageSource*): Specifies the source of the image. For more details about the Source property check the [Images in Xamarin.Forms](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/user-interface/images?tabs=windows) article.

The images could be loaded from:

* **File**
* **Uri**
* **Resource**
* **Stream**

## Save Images

RadImageEditor control gives you the option to save the currently edited image using the **SaveAsync** method. The SaveAsync method has the following overloads:

* **SaveAsync(Stream outputStream, ImageFormat imageFormat, double imageQuality)**
Saves the currently edited image to the specified stream, encoding it with the given format and quality.

* **SaveAsync(Stream outputStream, ImageFormat imageFormat, double imageQuality, Size maximumSize)**
Saves the currently edited image to the specified stream, encoding it with the given format, quality and size.

* **SaveAsync(Stream outputStream, ImageFormat imageFormat, double imageQuality, double scaleFactor)**
Saves the currently edited image to the specified stream, encoding it with the given format, quality and scale.

where:

* **outputStream** (*Stream*): Specifies the output stream to save the image to.
* **imageFormat** (*ImageFormat*): Specifies the image format to encode the image to. The available options from ImageForat enumeration are **Jpeg** and **Png**.
* **imageQuality** (*double*): Specifies the output stream to save the image to. The range is between 1 and 0, where the value of 1 specifies the maximum possible quality, resulting in minimum compression and the value of 0 specifies the minimum possible quality, resulting in maximum compression.
* **maximumSize** (*Size*): Specifies the output stream to save the image to. If the original image size is larger than the maximumSize, the SaveAsync will save the image in the submitted maximumSize but the aspect ratio will be kept.
* **scaleFactor** (*double*): Specifies a scale factor, which can be used to reduce the size of the final image. For example when setting values below 1 downscale the image before saving, which reducing the final image size and values above 1 upscale the image before saving, which increasing the final image size.

>note The saved image contains all currently applied changes in the editor.

### Example

Here is how the RadImageEditor and RadImageEditorToolbar are defined:

<snippet id='imageeditor-save-image'/>

* **Save with original size**:

<snippet id='imageeditor-saveimage-original'/>

* **Save with specific size**:

<snippet id='imageeditor-saveimage-specific-size'/>

* **Save with downscaled**:

<snippet id='imageeditor-saveimage-downscaled'/>

>important [SDK Browser application](https://github.com/telerik/xamarin-forms-sdk) contains a sample SaveImage example. You can find it in the **ImageEditor/Features** folder.

## Zoom Level Support

* **ZoomLevel**(*double*): Specifies the current zoom level of the viewed image. The default value is 1. A zoom level of 1 means the image is displayed with its original size. 

The RadImageEditor exposes properties for applying min and max zoom values: 

* **MinZoomLevel**(*double*): Specifies the minimum zoom level of the image. The default value is 0.1. Setting the ZoomLevel property is coerced between MinZoomLevel and MaxZoomLevel.
* **MaxZoomLevel**(*double*): Specifies the maximum zoom level of the image. The default value is 10. Setting the ZoomLevel property is coerced between MinZoomLevel and MaxZoomLevel.

>important [SDK Browser application](https://docs.telerik.com/devtools/xamarin/sdk-browser-overview#sdk-browser-application) contains a sample ZoomLevel example. You can find it in the **ImageEditor/Features** folder.

### Example

Here is an example how to use the RadImageEditor Min and Max Zoom Level:

<snippet id='imageeditor-zoom-level'/>

In addition to this, you need to add the following namespace:

<snippet id='xmlns-telerikimageeditor'/>

## See Also

- [ImageEditor Toolbar]({%slug imageeditor-toolbar%})
- [Custom Toolbar]({%slug imageeditor-custom-toolbar%})
