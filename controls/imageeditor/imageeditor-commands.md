---
title: Commands
page_title: Xamarin ImageEditor Documentation | Commands
description: Check our &quot;Commands&quot; documentation article for Telerik ImageEditor for Xamarin control.
position: 10
slug: imageeditor-commands
---


# Commands

This article explains the commands provided in ImageEditor and ImageEditorToolbar. 

## ImageEditor Commands

From R1 2022 Release RadImageEditor provides commands for programatically editing the image without the usage of the ImageEditorToolbar. The available commands are:

* `CropCommand`(`ICommand`): crop the image.
The `CropCommandContext` object is passed as a parameter to the `CropCommand`. The CropCommandContext has the following properties:
	* `Geometry`(of type `Telerik.XamarinForms.Common.RadGeometry`): specifies the geometry of the crop selection.
	* `Bounds`(of type `Rectangle`): used to get the current crop bounding rectangle.

* `CropInteractiveCommand`(`ICommand`): initiates the crop action.
* `ResizeCommand`: for image resizing. 
The `ResizeCommandContext` object is passed as a parameter to the `ResizeCommand`. The ResizeCommandContext has the following property:
	* `Size`(of type`Xamarin.Forms.Size`): specifies the size which will be used to resize the image.

* `RotateLeftCommand`(`ICommand`): for image rotation 90 degree to the left.

* `RotateRightCommand`: for image rotation 90 degree to the right.

* `BlurCommand`: applies blur to the image.
The `BlurCommandContext` object is passed as a parameter to the `BlurCommand`. The BlurCommandContext has the following property:
	* `Blur`(`int`): specifies the blur value.

* `BrightnessCommand`(`ICommand`) changes the brightness of the image.
The `BrightnessCommandContext` object is passed as a parameter to the `BrightnessCommand`. The BrightnessCommandContext has the following property:
	* `Brightness`(`double`): specifies the brightness value.

* `ContrastCommand`(`ICommand`): changes the image contrast.
The `ContrastCommandContext` object is passed as a parameter to the `ContrastCommand`. The ContrastCommandContext has the following property:
	* `Contrast`(`double`): specifies the contrast value.

* `HueCommand`(`ICommand`): changes the image hue.
The `HueCommandContext` object is passed as a parameter to the `HueCommand`. The HueCommandContext has the following property:
	* `Hue`(`double`): specifies the hue value.

* `SaturationCommand`(`ICommand`): changes the image saturation.
The `SaturationCommandContext` object is passed as a parameter to the `SaturationCommand`. The SaturationCommandContext has the following property:
	* `Saturation`(`double`): specifies the saturation value.

* `SharpenCommand`(`ICommand`): changes the image sharpness.
The `SaturationCommandContext` object is passed as a parameter to the `SharpenCommand`. The SharpenCommandContext has the following property:
	* `Sharpen`(`int`): specifies the sharpen value.


* `FlipHorizontalCommand`(`ICommand`): flips the image horizontally.

* `FlipVerticalCommand`(`ICommand`): flips the image vertically.

Commands which cancel/apply the changes made in interactive commands:

* `CancelInteractiveCommand`- cancels the changes done in interactive command such as `Telerik.XamarinForms.ImageEditor.RadImageEditor.CropInteractiveCommand`.

* `ApplyInteractiveCommand`- applies the changes done in interactive command such as `Telerik.XamarinForms.ImageEditor.RadImageEditor.CropInteractiveCommand`.

When using the `CropInteractiveCommand` you can apply the crop changes using `ApplyInteractiveCommand` and cancel the changes using `CancelInteractiveCommand`.

### Example

ImageEditor definition in XAML:

<snippet id='imageeditor-commands-xaml'/>

**InteractiveCropCommand with Apply and Cancel commands**

<snippet id='imageeditor-interactive-commands-xam'/>

**FlipHorizontal and FlipVerical commands**

<snippet id='imageeditor-flip-commands-xaml'/>

**RotateLeft and RotateRight commands**

<snippet id='imageeditor-rotate-commands-xaml'/>

**BrightnessCommand**

<snippet id='imageeditor-brightness-command-xaml'/>

**HueCommand**

<snippet id='imageeditor-hue-command-xaml'/>

![ImageEditor Commands](images/imageeditor-commands.gif "ImageEditor Commands")

>tip Sample Commands example can be found inside the [SDKBrowser app/ImageEditor/Fetures](https://docs.telerik.com/devtools/xamarin/sdk-browser-overview#sdk-browser-application) folder.

## ImageEditor Toolbar Commands

**RadImageEditorToolbar** provides a ToolbarItem for creating a command.

* `CommandToolbarItem`: Allows executing an arbitrary user-defined command from the toolbar. The CommandToolbarItem has the following properties:

	* `Command`(`ICommand`): Specifies the command to execute.
	* `CommandParameter`(`object`): Specifies a parameter to be passed to the command upon execution.

>tip You could use the CommandToolbarItem when the ImageEditorToolbar AutoGenerateItems property is set to "False".

### Example

Here is an example how the CommandToolbarItem could be used

```XAML
<telerikImageEditor:RadImageEditorToolbar Grid.Row="1" ImageEditor="{x:Reference imageEditor}" AutoGenerateItems="False">
    <telerikImageEditor:CommandToolbarItem Text="Save" Tapped="OnSaveTapped" />
</telerikImageEditor:RadImageEditorToolbar>
```

On the Tapped event we are going to save the image on the device:

```C#
private async void OnSaveTapped(object sender, EventArgs e)
{
    var folderPath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
    var filePath = Path.Combine(folderPath, "image.jpg");

    using (var fileStream = File.Create(filePath))
    {
        await this.imageEditor.SaveAsync(fileStream, ImageFormat.Jpeg, 0.9);
    }
    
    Application.Current.MainPage.DisplayAlert("Success!", "The Image is saved", "OK");
}
```

## See Also

- [Custom Toolbar]({%slug imageeditor-custom-toolbar%})
- [Effects]({%slug imageeditor-effects%})
- [Image Transformations]({%slug imageeditor-image-transformations%})
- [Toolbar Styling]({%slug imageeditor-toolbar-styling%})