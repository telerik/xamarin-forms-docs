---
title: Key Features
page_title: Key Features
position: 2
slug: pdfviewer-key-features
---

# Key Features

The purpose of this help article is to show you the key features of the **RadPdfViewer** control.

## Pdf Documment Visualization

RadPdfViewer control enabling you visualize Pdf documents through the following property:

* **Source**(DocumentSource): Defines the source of the document. The Pdf Document could be loaded from files and Uri.

## Zoom Level Support

RadPdfViewer exposese properties for min and max zoom 

* **MaxZoomLevel**(double): Defines the maximum magnification factor to the document at which content content could be maximized. The default value is 3.0
* **MinZoomLevel**(double): Defines the minimum magnification factor to the document at which content could be minimized. The default value is 0.3

>note In order to check how these properties works you should set the ZoomIn and ZoomOut Commmands of the control. For more details please check the [Commands]({%slug pdfviewer-commands%}) article.

## Viewing Modes

You could easily set one of the two layout modes that the control provides through its **LayoutMode** property.

The available options are:

* **ContinuousScroll**: Displays pages in a continuous vertical column.
* **SinglePage**: Displays one page at a time.

>note By default the PdfViewer LayoutMode property is set to **ContinuousScroll**.

## Page Spacing

* **PageSpacing**(double): Defines the space between the pages of the Pdf Document. The default value is 20.0

## PagesStart Index

* **VisiblePagesStartIndex**(int): Defines the index at which the document will be displayed. The default value is 0.

## Loading Template

If the default loading template does not suit your need, you could easily define a custom template through the following property:

* **BusyIndicatorTemplate**(DataTemplate): defines the template visualized when the PDF Document is loading.

Here is an example how the custom LoadingTemplate could be defined:

<snippet id='pdfviewer-loading-template-xaml' />

>important A sample Loading Template example can be found in the PdfViewer/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## Example

Here is an example how the above RadPdfViewer features could be applied:

For the example we will visualize a pdf document from file. Add a pdf document to the project and set its build action to be EmbeddedResource.

Then add the following code to load the pdf document:

<snippet id='pdfviewer-key-features'/>

Finally, use the following snippet to declare a RadPdfViewer is XAML:

<snippet id='pdfviewer-key-features-xaml'/>

Where the **telerikPdfViewer** namespace is the following:

```XAML
xmlns:telerikPdfViewer="clr-namespace:Telerik.XamarinForms.PdfViewer;assembly=Telerik.XamarinForms.PdfViewer"
```

 Here is the final result:
 
 ![PdfViewer Key Features Example](images/pdfviewer-key-features.png "PdfViewer Key Features Example")
 
>important A sample Key Features example can be found in the PdfViewer/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Commands]({%slug pdfviewer-commands%})
- [PdfViewer Toolbar]({%slug pdfviewer-toolbar%})
