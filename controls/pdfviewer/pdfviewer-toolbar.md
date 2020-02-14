---
title: PdfViewer Toolbar
page_title: PdfViewer Toolbar
position: 3
slug: pdfviewer-toolbar
---

# PdfViewer Toolbar

RadPdfToolbar includes all commands that the RadPdfViewer provides. They could be used as a pre-defined UI toolbar items: The RadPdfToolbar contains the following Toolbar items:

* **ZoomInToolbarItem**
* **ZoomOutToolbarItem**
* **NavigateToNextPageToolbarItem**
* **NavigateToPreviousPageToolbarItem**
* **NavigateToPageToolbarItem**
* **FitToWidthToolbarItem**
* **ToggleLayoutModeToolbarItem**

## Example

Here is an example how to use the RadPdfViewer Toolbar:

Use the following snippet to define the RadPdfViewer and RadPdfToolbar:

<snippet id='pdfviewer-toolbar-xaml'/>

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikPdfViewer="clr-namespace:Telerik.XamarinForms.PdfViewer;assembly=Telerik.XamarinForms.PdfViewer"
```

Then add the following code to visualize the pdf document:

<snippet id='pdfviewer-toolbar'/>

This is the result:

![PdfViewer Toolbar](images/pdfviewer-toolbar.png "PdfViewer Toolbar")

## See Also

- [Commands]({%slug pdfviewer-commands%})
