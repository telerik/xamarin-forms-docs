---
title: ImageEditor Toolbar Styling
page_title: ImageEditor Toolbar Styling
position: 0
slug: imageeditor-toolbar-styling
---

# ImageEditor Toolbar Styling

The RadImageEditor Toolbar could be styled through the Style property. You will need to declare the Style in the ResourceDictionary of the page and set for its TargetType property to be of type **telerikImageEditor:ImageEditorToolbarItem**.

> note In order to enable the style to be applied to all items you should set the *Style.ApplyToDerivedTypes* property to *True*.

You could style the Toolbar using the following properties:

* **TextColor**: Defines the color of all Toolbar items
* **SelectedColor**: Defines the color of the selected Toolbar item.
* **BackgroundColor**: Defines the background color of all Toolbar items.
* **Font Options** (FontSize, FontFamily, FontAttributes): Defines the font options that are applied to all ImageEditorToolbar Items.

## Example

Here is an example how to style the RadImageEditor Toolbar:

The snippet below shows how the ImageEditor is defined:

```XAML
<Grid>
        <Grid.RowDefinitions>
            <RowDefinition />
            <RowDefinition Height="Auto" />
        </Grid.RowDefinitions>
        <telerikImageEditor:RadImageEditor x:Name="imageEditor">
            <telerikImageEditor:RadImageEditor.Source>
                <OnPlatform x:TypeArguments="ImageSource" Default="cat4.jpeg">
                    <On Platform="UWP">Assets\cat4.jpeg</On>
                </OnPlatform>
            </telerikImageEditor:RadImageEditor.Source>
        </telerikImageEditor:RadImageEditor>
        <telerikImageEditor:RadImageEditorToolbar Grid.Row="1" ImageEditor="{x:Reference imageEditor}" />
    </Grid>
```

Then add the Style in the Resources of the page :

```XAML
<ResourceDictionary>
    <Style TargetType="{x:Type telerikImageEditor:ImageEditorToolbarItem}"
           ApplyToDerivedTypes="True">
        <Setter Property="TextColor" Value="Blue" />
        <Setter Property="BackgroundColor" Value="LightSkyBlue" />
        <Setter Property="FontSize" Value="14" />
        <Setter Property="SelectedColor" Value="Black" />
    </Style>
</ResourceDictionary>
```

In addition to this, you need to add the following namespace:

<snippet id='xmlns-telerikimageeditor'/>

This is the result:

![ImageEditor Toolbar Styling](images/imageeditor-toolbar-styling.png "ImageEditor Toolbar Styling")

## See Also

- [Custom Toolbar]({%slug imageeditor-custom-toolbar%})
- [Effects]({%slug imageeditor-effects%})
- [Image Transformations]({%slug imageeditor-image-transformations%})