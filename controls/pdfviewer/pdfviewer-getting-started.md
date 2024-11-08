---
title: Getting Started
page_title: Getting Started with Xamarin.Forms PdfViewer Control
description: Check our &quot;Getting Started&quot; documentation article for Telerik PdfViewer for Xamarin control.
position: 1
slug: pdfviewer-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RadPdfViewer** control in your application.

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadPdfViewer control](#3-adding-radpdfviewer-control)
* [Visualize a Pdf Document](#4-visualize-a-pdf-document)

## 1. Setting up the app

Start by setting up the app. See the following articles for detailed instructions:

* [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%}).
* [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%}).

## 2. Adding the required Telerik references

To add the required Telerik references to your project, choose one of the three options:

* Add the entire [**Telerik.UI.for.Xamarin** NuGet package]({%slug telerik-nuget-server%}).
* Add only the **Telerik.UI.for.Xamarin.PdfViewer** NuGet package.

    The NuGet package manager will automatically add the following dependencies: *Telerik.UI.for.Xamarin.Common*, *Telerik.UI.for.Xamarin.Primitives*, *Telerik.UI.for.Xamarin.SkiaSharp*, *SkiaSharp* and *SkiaSharp.Views.Forms*.

* Add the references to all required Telerik assemblies manually.

    The following table presents the required assemblies for the **RadPdfViewer** component:

    | Platform | Assemblies |
    | -------- | ---------- |
    | Portable | Telerik.Documents.Core.dll<br/>Telerik.Documents.Fixed.dll<br/>Telerik.XamarinForms.PdfViewer.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
    | Android  | Telerik.Documents.Core.dll<br/>Telerik.Documents.Fixed.dll<br/>Telerik.Xamarin.Android.Primitives.dll<br/>Telerik.Xamarin.Android.Common.dll<br/>Telerik.XamarinForms.PdfViewer.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
    | iOS      | Telerik.Documents.Core.dll<br/>Telerik.Documents.Fixed.dll<br/>Telerik.Xamarin.iOS.dll<br/>Telerik.XamarinForms.PdfViewer.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
    | UWP      | Telerik.Core.dll<br/>Telerik.Documents.Core.dll<br/>Telerik.Documents.Fixed.dll<br/>Telerik.UI.Xaml.Primitives.UWP.dll<br/>Telerik.XamarinForms.PdfViewer.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives<br/>Telerik.XamarinForms.SkiaSharp.dll |

>important Add a reference to the **Telerik.Documents.Core.dll** and **Telerik.Documents.Fixed.dll** assemblies to each project. The assemblies are located in the `\Binaries\Portable` folder of your Telerik UI for Xamarin installation.

## 3. Adding RadPdfViewer control

Use one of the following approaches:

#### Drag the control from the Toolbox. 

Take a look at the following topics on how to use the toolbox:

* [Telerik UI for Xamarin Toolbox on Windows]({%slug telerik-xamarin-toolbox%})
	
#### Create the control definition in XAML.

<snippet id='prfviewer-getting-started-xaml' />

After you create the control definition, add the following namespace:

```XAML
xmlns:telerikPdfViewer="clr-namespace:Telerik.XamarinForms.PdfViewer;assembly=Telerik.XamarinForms.PdfViewer"
```

## 4. Visualize a Pdf Document

To visualize the pdf document, set the *Source* property of the control:

<snippet id='pdfviewer-getting-started' />

This is the result:

![PdfViewer Getting Started Example](images/pdfviewer-getting-started.png "PdfViewer Getting Started Example")

>note The example below shows a pdf document visualized as an EmbeddedResource. This is one of the options for loading a pdf with the PdfViewer control. For all available options, see the [Key Features]({%slug pdfviewer-key-features%}) topic.

## See Also

- [Key Features]({%slug pdfviewer-key-features%})
- [Commands]({%slug pdfviewer-commands%})
- [PdfViewer Toolbar]({%slug pdfviewer-toolbar%})
