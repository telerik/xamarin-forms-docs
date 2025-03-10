---
title: Overview
page_title: Xamarin PdfProcessing Documentation | Overview
description: Check our &quot;Overview&quot; documentation article for Telerik PdfProcessing for Xamarin.
description: Overview
slug: radpdfprocessing-overview
tags: overview
published: True
position: 0
CTAControlName: PdfProcessing
---

# Overview

>**RadPdfProcessing** is part of the **Telerik Document Processing** libraries. The full documentation for this component is available at [https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/overview).
            
__RadPdfProcessing__ is a processing library that allows creation, import and export of PDF documents.

![RadPdfProcessing Overview image](images/pdfprocessing_overview.png)

The API of RadPdfProcessing contains two different editors, enabling you to choose between editing in a flow-like manner, or using the much more powerful and flexible fixed document structure and drawing on the page.
            
The document model of the library provides support for:

* [**Pages**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/model/radfixedpage): Adding, modifying or removing of pages in a document. The properties enable you to change the size of the page, its rotation and more.

* **Automatic layout**: Although the PDF format is fixed, sometimes you will need to insert the content in a way that flows on the page. RadPdfProcessing enables to achieve this easily by using  [blocks](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/editing/block), [tables](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/editing/table) and [lists](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/editing/list).

* [**Images**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/model/image): Decoded on demand to achieve better performance. The API enables you to obtain the encoded image data. You can also control the image quality when saving the document.

* [**Geometries**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/concepts/geometry): Enable you to describe the geometry of a 2D shape.

* [**Form XObjects**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/model/form): The Form XObjects enables you to describe composite objects (consisting of text, images, vector elements, etc.) within a PDF file and reuse this content among the document, for smaller document size and better rendering performance.

* [**Interactive Forms**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/model/interactive-forms/overview): Create and modify PDF files containing textboxes, buttons, listboxes and other interactive controls making available for the PDF file user to interactively fill some data in the PDF document and/or digitally sign the filled document. You can flatten the fields as well.

* [**Clipping**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/concepts/clipping): You can define the outline of other content elements like images and paths.

* [**Annotations**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/model/annotations-and-destinations): Associate an object with a location on a page of the PDF document.

* [**Destinations**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/model/annotations-and-destinations): Defines a particular view of a document.

* [**Colors and Color Spaces**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/concepts/colors-and-color-spaces): Support for different types of both.

* [**Fonts**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/concepts/fonts): Support for the standard PDF fonts, Type0, Type1, Type3, CIDFontType2, TrueType and more.

* [**Text and Graphic properties**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/editing/text-and-graphic-properties): Provide options for changing the properties of the different elements in the document elements so you can achieve a unique look.

* [**Password Protection**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/formats-and-conversion/pdf/pdfformatprovider/settings#import-settings)

* [**Merge documents**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/model/radfixeddocument) and [**document pages**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/formats-and-conversion/pdf/pdfstreamwriter/pdfpagesource).

* [**PdfFileStream**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/formats-and-conversion/pdf/pdfstreamwriter/overview): The API exposes a functionality that provides option for exporting PDF files with unmatched performance and minimized memory footprint. Extremely useful when you need to add some content to existing document, merge or split documents.

* [**Import of PDF and export to PDF and plain text**](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/formats-and-conversion/plain-text/textformatprovider)

## Required references

You have two options to add the required Telerik references to your Xamarin.Forms app in order to use **RadPdfProcessing**:

* Add the Telerik UI for Xamarin Nuget package following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

If you don't want to add the all Telerik.UI.for.Xamarin nuget package, you have the option to add a separate nuget package. For RadPdfProcessing you have to install the *Telerik.UI.for.Xamarin.Documents.Core*, *Telerik.UI.for.Xamarin.Documents.Fixed* and *Telerik.UI.for.Xamarin.Zip* nuget packages.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for RadPdfProcessing:

	- **Telerik.Documents.Core.dll**
	- **Telerik.Documents.Fixed.dll**
	- **Telerik.Zip.dll**
	
>important Please keep in mind these assemblies are located in the Portable folder, still, you need to add a reference to them in the Xamarin.Forms project as well as in each of the platform projects (Android | iOS | UWP).
