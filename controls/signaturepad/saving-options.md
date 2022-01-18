---
title: Saving Options
page_title: Xamarin SignaturePad Documentation | Saving Options
description: Check our &quot;Saving Options&quot; documentation article for Telerik SignaturePad for Xamarin control.
position: 3
tags: sing pad, signature, xamarin, xamarin.forms, pad, signature pad
slug: signaturepad-saving-options
---

# Saving Options

SignaturePad provides `SaveImageAsync` method you can utilize to get the image drawn by the user inside the plot area. The method has two overloads, so you can choose the exact settings for retrieving the encoded image, such as format, quality, colors, etc. You will get the image as a stream, so you can further use it according to the specific application requirements.

* `SaveImageAsync(Stream outputStream)`
* `SaveImageAsync(Stream outputStream, SaveImageSettings settings)`

**SaveImageSettings** class is used to set the exact settings when saving the image as a memory stream. Here are the available options:

* `ImageFormat` (of type *Telerik.XamarinForms.Input.ImageFormat*): Defines the format of the saved image, available options are `ImageFormat.Jpeg` and `ImageFormat.Png`;
* `ImageQuality` (*double*): Defines the quality of the encoded image, when using a lossy compression format: the value of 1 specifies the maximum possible quality, resulting in minimum compression; the value of 0 specifies the minimum possible quality, resulting in maximum compression.
* `ScaleFocus`: Sets a scale factor, which can be used to reduce the size of the final image: values below 1 downscale the image before saving, thus reducing the final image size; values above 1 upscale the image before saving, thus increasing the final image size.
* `BackgroundColor, StrokeColor, StrokeThickness`: Apply styling options to the signature inside the encoded image.

Check below a quick example on how you can get the image through SaveImageAsync method and use it as a Source of a Xamarin.Forms.Image control.

Add a sample SignaturePad instance:

<snippet id='signaturepad-saving-image-xaml' />

Add a sample Image control to the page:

<snippet id='signaturepad-image-control' />

Use the following snippet for saving the image as a Jpeg in a memory stream and use the stream as a source of the defined Image control:

<snippet id='signaturepad-saving-image-method' />

Here is how a sample signature looks with used saving settings as in the snippet above:

![SignaturePad Saving Image](images/signaturepad-saving-options.png)

## See Also

- [Signature Configuration]({% slug signaturepad-configuration%})
- [Events]({% slug signaturepad-events%})
- [Commands]({% slug signaturepad-commands%})