---
title: Commands
page_title: Commands
position: 10
slug: imageeditor-commands
---

# Commands

**RadImageEditorToolbar** provides a ToolbarItem for creating a command.

* **CommandToolbarItem**: Allows executing an arbitrary user-defined command from the toolbar. The CommandToolbarItem has the following properties:

	* **Command**(*ICommand*): Specifies the command to execute.
	* **CommandParameter**(*object*): Specifies a parameter to be passed to the command upon execution.

>tip You could use the CommandToolbarItem when the ImageEditorToolbar AutoGenerateItems property is set to "False".

## Example

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