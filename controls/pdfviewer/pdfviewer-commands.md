---
title: Commands
page_title: Commands
position: 8
slug: pdfviewer-commands
---

# Commands

RadPdfViewer provides the following commands of type *ICommand*:

* **ZoomInCommand**
* **ZoomOutCommand**
* **NavigateToNextPageCommand**
* **NavigateToPreviousPageCommand**
* **NavigateToPageCommand**
* **ToggleLayoutModeCommand**: Triggers the RadPdfViewer LayoutModes (*ContinuousScroll* and *SinglePage*)
* **FitToWidthCommand**: There are two options when executing FitToWidth command:
	* **FitDocumentToWidthCommand**(the default one): Refers to the whole document; it would lookup the widest of all pages and set a zoom level, so that this page is fit to width. 
	
		>tip If the document has pages with different width, as a side effect, when you are currently viewing a page that is not the widest, this page will not occupy the whole horizontal space.
		
	* **FitPageToWidthCommand**: It would execute fit to width on the current page disregarding the width of other pages from the document.

* **DoubleTappedCommand**: This command is different from the above listed as it is triggered from within the PdfViewer on double-tap action. On the first double-tap the document is zoomed 2.5 times at the tapped location, another double-tap triggers FitToWidth command.

>note The RadPdfViewer Toolbar exposes some of the commands built-in. For more information please check the [PdfViewer Toolbar]({%slug pdfviewer-toolbar%}) article.

## Example

Following is an example how the RadPdfViewer commands could be called on a button click action. For the example we will visualize a pdf document from stream. 

First, add a pdf document to the project and set its build action to be **EmbeddedResource**.

Then, add the following code to visualize the document:

<snippet id='pdfviewer-commands'/>

Finally, use the following snippet to declare a RadPdfViewer in XAML and add a few buttons that will execute the pdf viewer commands:

<snippet id='pdfviewer-commands-xaml'/>

Where the **telerikPdfViewer** namespace is the following:

```XAML
xmlns:telerikPdfViewer="clr-namespace:Telerik.XamarinForms.PdfViewer;assembly=Telerik.XamarinForms.PdfViewer"
xmlns:telerikCommon="clr-namespace:Telerik.XamarinForms.Common;assembly=Telerik.XamarinForms.Common"
```
 
>important A sample Commands example can be found in the PdfViewer/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [PdfViewer Toolbar]({%slug pdfviewer-toolbar%})
