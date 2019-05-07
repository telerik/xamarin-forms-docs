---
title: ImageEditor Custom Toolbar
page_title: ImageEditor Custom Toolbar
position: 4
slug: imageeditor-custom-toolbar
---

# ImageEditor Custom Toolbar

The RadImageEditor Toolbar can be fully customized. You could populate the toolbar with the ToolbarItems needed for editing the image.

## Toolbar Items

When you customize the toolbar you could include the following editing capabilities:

* For **Image Transformations** you could use the Toolbar Items listed above:
	* **CropToolbarItem**
	* **ResizeToolbarItem**
	* **RotateLeftToolbarItem**
	* **RotateRightToolbarItem**
	* **FlipHorizontalToolbarItem**
	* **FlipVerticalToolbarItem**
	
>tip To group the transformations you could use the common ToolbarItem: TransformsToolbarItem. For more details please check the [Image Transformations article]({%slug imageeditor-image-transformations%}).
	
* For applying **Effects** to the image use the following Toolbar Items:
	* **HueToolbarItem**
	* **SaturationToolbarItem**
	* **BrightnessToolbarItem**
	* **ContrastToolbarItem**
	* **BlurToolbarItem**
	* **SharpenToolbarItem**
	
>tip To group the effects you could use the common ToolbarItem: EffectsToolbarItem. For more details please check the [Effects article]({%slug imageeditor-effects%}). 

* For reversing and re-applying actions use the following items:
	* **UndoToolbarItem**
	* **RedoToolbarItem**
	* **ResetToolbarItem**
	
>tip For more details please check the [History article]({%slug imageeditor-history%}).

* For applying Commands use the **CommandToolbarItem** which allows executing an arbitrary user-defined command from the toolbar. It exposes the following properties:
	* **Command**(*ICommand*): Specifies the command to execute. 
	* **CommandParameter**(*object*): Specifies a parameter to be passed to the command upon execution.

## Example

Here is an example how to customize the RadImageEditor Toolbar

Use the following snippet to define the RadImageEditor and RadImageEditor Toolbar:

<snippet id='imageeditor-custom-toolbar'/>

In addition to this, you need to add the following namespace:

<snippet id='xmlns-telerikimageeditor'/>

This is the result:

![ImageEditor Custom Toolbar](images/imageeditor-custom-toolbar.png "ImageEditor Custom Toolbar")

## See Also

- [Image Transformations]({%slug imageeditor-image-transformations%})
- [Effects]({%slug imageeditor-effects%})
- [History]({%slug imageeditor-history%})

