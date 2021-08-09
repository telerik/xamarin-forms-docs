---
title: Insert and Edit Images
page_title: Xamarin RichTextEditor Documentation | Insert and Edit Images
description: Check our &quot;Insert Edit Images&quot; documentation article for Telerik RichTextEditor for Xamarin control.
position: 6
slug: richtexteditor-insert-images
---

# Insert and Edit Images

From R3 2021 release the RichTextEditor control allows you to add(insert) images and edit the current selected image using built-in toolbar items. 

## Insert Images

RichTextEditor Toolbar has a support for inserting images. You can easily insert image using a predefined RichTextEditor toolbar item - `AddImageToolbarItem`. 

When tapping on `AddImageToolbarItem` the `PickImage` event is raised. 

Default look of the `AddImageToolbarItem`:

![RichTextEditor AddImage](images/add-image-toolbar-item.png)

### Events: 

* **PickImage**: Raised when the user has requested to pick an image in the RadRichTextEditor. The PickImage event handler receives two parameters:
	* The `sender` which is the RichTextEditor control;
	* `PickImageEventArgs` provides the following methods:
		* `Accept` - Invoke this method when the user has picked an image. Recieves one paramerter `imagesource` of type RichTextImageSource (Specifies the RichTextImageSource for the picked image);
		* `Cancel` - Invoke this method when the user has cancelled the operation;

* **InsertImageError**: Raised when trying to insert an image in the RadRichTextEditor. The InsertImageError event handler receives two parameters:
	* The `sender` which is the RichTextEditor control;
	* `InsertImageErrorEventArgs` provides the following methods:
		* `Source` - of type RichTextImageSource. The property allows you to get the source of the image (read-only property).

* **IsImageSelectedChanged**: Raised when an image inside the editor is selected. The IsImageSelectedChanged event handler receives two parameters:
	* The `sender` which is the RichTextEditor control;
	* `RadValueChangedEventArgs<bool>` provides `NewValue` and `OldValue` properties of type **bool**, indicating the `IsImageSelected` property change.

### Methods

* `GetImageAsync` method returns asynchronously the current selected image (or null in case there is no image). The RichTextImage object contains the Source, Title, Width and Height of the image;

### Commands

* **InsertImageCommand**(*ICommand*)
* **RemoveImageCommand**(*ICommand*)

## Built-in Toolbar Items for editing images

Built-in Toolbar editing options for currently selected image:

* `EditImageToolbarItem`(*InsertImageToolbarItem*): allows you to resize the image. In addition the toolbar allows you to pick an image if you haven't selected one. 
* `CutToolbarItem`(*RichTextEditorToolbarItem*): allows you to cut the selected HTML/image from the clipboard.
* `CopyToolbarItem`(*RichTextEditorToolbarItem*): allows you to copy the selected HTML to the clipboard. 
* `PastePlainTextToolbarItem`(*RichTextEditorToolbarItem*): allows you to paste plain text from the clipboard.
* `RemoveImageToolbarItem`(*RichTextEditorToolbarItem*): allows you to remove/delete the currently selected image.

How the editing toolbar looks when image is selected: 

![RichTextEditor AddImage](images/rte-edit-image-toolbar-items.png)

## Edit Image ToolbarItem

EditImageToolbarItem allows you to resize the image. When tapping on the edit icon, a dialog is displayed. 

![RichTextEditor AddImage](images/items.png)

## See Also

- [Key Features]({%slug richtexteditor-key-features%})
- [RadRichTextEditor Toolbar]({%slug richtexteditor-toolbar%})
- [Commands]({%slug richtexteditor-commands%})
