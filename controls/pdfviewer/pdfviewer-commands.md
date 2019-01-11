---
title: Commands
page_title: Commands
position: 3
slug: pdfviewer-commands
---

# Commands

RadPdfViewer provides the following commands:

* **ZoomInCommand**(ICommand)
* **ZoomOutCommand**(ICommand)
* **FitToWidthCommand**(ICommand)
* **NavigateToNextPageCommand**(ICommand)
* **NavigateToPreviousPageCommand**(ICommand)
* **NavigateToPageCommand**(ICommand)
* **ToggleLayoutModeCommand**(ICommand)

>note The RadPdfViewer Toolbar exposes the avobe commands Build-in. For more information please check the [PdfViewer Toolbar]({%slug pdfviewer-toolbar%}) article.

## Example

Here is an example how the above RadPdfViewer features could be applied:

For the example we will visualize a pdf document from Stream. Add a pdf document to the project and set its build action to be EmbeddedResource.

Then add the following code to visualize the document:

<snippet id='pdfviewer-commands'/>

Finally, use the following snippet to declare a RadPdfViewer is XAML and add Buttons that will execute the pdf viewer commands:

<snippet id='pdfviewer-commands-xaml'/>

Where the **telerikPdfViewer** namespace is the following:

```XAML
xmlns:telerikPdfViewer="clr-namespace:Telerik.XamarinForms.PdfViewer;assembly=Telerik.XamarinForms.PdfViewer"
```
 
>important A sample Commands example can be found in the PdfViewer/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [PdfViewer Toolbar]({%slug pdfviewer-toolbar%})
