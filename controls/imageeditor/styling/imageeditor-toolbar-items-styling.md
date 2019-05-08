---
title: ImageEditor ToolbarItems Styling
page_title: ImageEditor ToolbarItems Styling
position: 3
slug: imageeditor-toolbar-items-styling
---

# ImageEditor ToolbarItems Styling

The RadImageEditor control comes with various editing capabilities and they could be used as items included in the **RadImageEditorToolbar**.

Tha RadImageEditorToolbar provides tha following properties:

* **AutoGenerateItems**(*bool*): Specifies whether to auto-populate the toolbar with default items. The default value is true.
* **ImageEditor**(from type *RadImageEditor*): Specifies the image editor this toolbar is attached to. All toolbar items execute their actions against the specified image editor.
* **OverflowButtonText**(*string*): Specifies the text of the overflow button. 
* **OverflowButtonFontFamily**(*String*): Specifies the font family of the overflow button, which is displayed when there are more buttons than currently visible.
* **OverflowButtonTemplate**(*DataTemplate*): Specifies the template of the overflow button, which is displayed when there are more buttons than currently visible.


## Example

Here is an example how to use the default RadImageEditor Toolbar and its properties:

Use the following snippet to define the RadImageEditor and RadImageEditor Toolbar:

<snippet id='imageeditor-getting-started-xaml'/>

In addition to this, you need to add the following namespace:

<snippet id='xmlns-telerikimageeditor'/>

This is the result:

![ImageEditor Toolbar](images/imageeditor-toolbar.png "ImageEditor Toolbar")

## See Also

- [Custom Toolbar]({%slug imageeditor-custom-toolbar%})
- [Effects]({%slug imageeditor-effects%})
- [Image Transformations]({%slug imageeditor-image-transformations%})