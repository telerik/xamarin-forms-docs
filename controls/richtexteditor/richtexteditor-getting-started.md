---
title: Getting Started
page_title: Getting Started with Xamarin.Forms RichTextEditor Control
description: Check our &quot;Getting Started&quot; documentation article for Telerik RichTextEditor for Xamarin control.
position: 1
slug: richtexteditor-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RichTextEditor** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RichTextEditor control](#3-adding-richtexteditor-control)
* [Loading HTML Content](#4-loading-html-content)

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

If you don't want to add the complete Telerik.UI.for.Xamarin nuget package, you have the option to add a separate nuget package. For RichTextEditor control you have to install the **Telerik.UI.for.Xamarin.RichTextEditor** nuget package. This nuget will automatically refer the *Telerik.UI.for.Xamarin.Common*, *Telerik.UI.for.Xamarin.DataControls* and *Telerik.UI.for.Xamarin.Primitives* nuget packages.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadRichTextEditor** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.DataControls.dll <br/> Telerik.XamarinForms.Primitives.dll <br/> Telerik.XamarinForms.RichTextEditor.dll<br />Telerik.XamarinForms.SkiaSharp.dll |
| Android  | Telerik.Xamarin.Android.Common.dll <br/> Telerik.Xamarin.Android.Data.dll <br />Telerik.Xamarin.Android.List.dll <br />Telerik.Xamarin.Android.Primitives.dll <br/>Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.DataControls.dll <br/>Telerik.XamarinForms.Primitives.dll <br/>Telerik.XamarinForms.RichTextEditor.dll <br/>Telerik.XamarinForms.SkiaSharp.dll |
| iOS      | Telerik.Xamarin.iOS.dll <br/>Telerik.XamarinForms.Common.dll <br/>Telerik.XamarinForms.DataControls.dll <br />Telerik.XamarinForms.Primitives.dll <br/> Telerik.XamarinForms.RichTextEditor.dll<br />Telerik.XamarinForms.SkiaSharp.dll |
| UWP      | Telerik.Core.dll <br/>Telerik.Data.dll <br/>Telerik.UI.Xaml.Controls.Data.UWP.dll <br /> Telerik.UI.Xaml.Input.UWP.dll<br/>Telerik.UI.Xaml.Primitives.UWP.dll <br/>Telerik.XamarinForms.Common.dll <br/> Telerik.XamarinForms.DataControls.dll<br />Telerik.XamarinForms.Primitives.dll <br/>Telerik.XamarinForms.RichTextEditor.dll <br/>Telerik.XamarinForms.SkiaSharp.dll |

## 3. Adding RichTextEditor control

You could use one of the following approaches:

#### Drag the control from the Toolbox. 

Take a look at the following topics on how to use the toolbox:

* [Telerik UI for Xamarin Toolbox on Windows]({%slug telerik-xamarin-toolbox%})
	
#### Create the control definition in XAML. 

The snippet below shows how you can add **RadRichTextEditor** together with **RichTextEditorToolbar**:

<snippet id='richtexteditor-getting-started-xaml' />

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikRichTextEditor="clr-namespace:Telerik.XamarinForms.RichTextEditor;assembly=Telerik.XamarinForms.RichTextEditor"
```

> RadRichTextEditor relies on WebView for rendering HTML content. There are some limitations for placing WebView on the page which are valid for RichTextEditor as well:
>
> - Nesting RadRichTextEditor inside ScrollView control is not supported. RadRichTextEditor provides its own scrolling mechanism.
>
> - When the RadRichTextEditor is placed inside a StackLayout, you would need to set explicitly its WidthRequest and HeightRequest properties, otherwise the control will not render. This is due to the fact that StackLayout usually wants to size itself according to its children, but a WebView (since it does scrolling) wants to size itself to its parent. You can learn more about this in the [Xamarin.Forms WebView documentation](https://docs.microsoft.com/bg-bg/xamarin/xamarin-forms/user-interface/webview?tabs=windows#layout).

>
> You should either use a Grid as a parent container or define explicitly the size of the RichTextEditor control.


## 4. Loading HTML Content

With RichTextEditor users can create and edit HTML content. In some cases you may need to load formatted text in advance - this can be achieved through the *Source* property of the control:

<snippet id='richtexteditor-getting-started' />

This is the result:

![RichTextEditor Getting Started Example](images/richtexteditor-getting-started.png "RichTextEditor Getting Started Example")

## See Also

- [Key Features]({%slug richtexteditor-key-features%})
- [Commands]({%slug richtexteditor-commands%})
- [RichTextEditor Toolbar]({%slug richtexteditor-toolbar%})
