---
title: Commands
page_title: Commands
position: 3
slug: pdfviewer-commands
---

# Commands

RadPdfViewer provides the following commands of type *ICommand*:

* **ZoomInCommand**
* **ZoomOutCommand**
* **FitToWidthCommand**
* **NavigateToNextPageCommand**
* **NavigateToPreviousPageCommand**
* **NavigateToPageCommand**
* **ToggleLayoutModeCommand**: Triggers the RadPdfViewer LayoutModes (*ContinuousScroll* and *SinglePage*)

>note The RadPdfViewer Toolbar exposes the above commands built-in. For more information please check the [PdfViewer Toolbar]({%slug pdfviewer-toolbar%}) article.

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
```
 
>important A sample Commands example can be found in the PdfViewer/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [PdfViewer Toolbar]({%slug pdfviewer-toolbar%})
