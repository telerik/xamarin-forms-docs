---
title: Getting Started
page_title: Getting Started
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

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget packages following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadPdfViewer** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.Documents.Core.dll<br/>Telerik.Documents.Fixed.dll<br/>Telerik.Zip.dll<br/>Telerik.XamarinForms.PdfViewer.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| Android  | Telerik.Documents.Core.dll<br/>Telerik.Documents.Fixed.dll<br/>Telerik.Zip.dll<br/>Telerik.XamarinForms.PdfViewer.dll<br/>Telerik.Xamarin.Android.Primitives.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.SkiaSharp.dll |
| iOS      | Telerik.Documents.Core.dll<br/>Telerik.Documents.Fixed.dll<br/>Telerik.Zip.dll<br/>Telerik.Xamarin.iOS.dll<br/>Telerik.XamarinForms.PdfViewer.dll <br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll<br/>Telerik.XamarinForms.DataControls.dll |
| UWP      | Telerik.Documents.Core.dll<br/>Telerik.Documents.Fixed.dll<br/>Telerik.Zip.dll<br/>Telerik.Data.dll<br/> Telerik.UI.Xaml.Controls.Data.UWP.dll<br/>Telerik.UI.Xaml.Primitives.UWP.dll<br/>Telerik.XamarinForms.PdfViewer.dll<br/>Telerik.XamarinForms.Common.dll |

## 3. Adding RadPdfViewer control

You could use one of the following approaches:

#### Drag the control from the Toolbox. 

Take a look at the following topics on how to use the toolbox:

* [Telerik UI for Xamarin Toolbox on Windows]({%slug telerik-xamarin-toolbox%})
* [Telerik UI for Xamarin Toolbox on Mac]({%slug telerik-xamarin-toolbox-mac%})
	
#### Create the control definition in XAML.

<snippet id='prfviewer-getting-started-xaml' />

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikPdfViewer="clr-namespace:Telerik.XamarinForms.PdfViewer;assembly=Telerik.XamarinForms.PdfViewer"
```

## 4. Visualize a Pdf Document

>important To visualize the pdf document you will need to set the *Source* property of the control.

* **Source** (DocumentSource): Defines the source of the document.

<snippet id='pdfviewer-getting-started' />

This is the result:

![PdfViewer Getting Started Example](images/pdfviewer-getting-started.png "PdfViewer Getting Started Example")

## See Also

- [Key Features]({%slug pdfviewer-key-features%})
- [Commands]({%slug pdfviewer-commands%})
- [PdfViewer Toolbar]({%slug pdfviewer-toolbar%})
