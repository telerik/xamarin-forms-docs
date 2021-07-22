---
title: ImageEditor Source from byte[] array
description: image editor source from byte array
type: how-to
page_title: Add imageeditor source from byte[] array
slug: imageeditor-image-source-byte-array
position: 
tags: 
ticketid: 1528365
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.1.224.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>ImageEditor for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

This article shows how-to set ImageEditor source from byte[]

## Solution

The source is a standard Xamarin.Forms [ImageSource object](https://docs.microsoft.com/en-us/dotnet/api/Xamarin.Forms.ImageSource?view=xamarin-forms). It is the same thing as if you were setting a normal `Image` control's source property.

The Source of the Image and ImageEditor are the same: 

* **FileImageSource**
* **FontImageSource**
* **StreamImageSource**
* **UriImageSource**

How do I convert a byte[] into a Stream so I can use it for a StreamImageSource

## ImageSource FromStream

You can pass a byte[] to instantiate an in-memory stream:

```C#
byte[] myImgBytes = new byte[10];
using (var stream = new MemoryStream(myImgBytes))
{
    
}
```

### Using Task 

This defines a Task that returns a MemoryStream that you can use with the `FromStream` extension method.

For Images the source looks like this:

```C#
ImageSource.FromStream(()=> new MemoryStream(myImgBytes));
```

For RadImageEditor you can pass that final ImageSource object to the RadImageEditor Source like this:

```C#
imgEditor.Source = ImageSource.FromStream(()=> new MemoryStream(myImgBytes));
```
