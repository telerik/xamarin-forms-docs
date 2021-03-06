---
title: Commands
page_title: Xamarin PdfViewer Documentation | Commands
description: Check our &quot;Commands&quot; documentation article for Telerik PdfViewer for Xamarin control.
position: 10
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

>note RadPdfViewer Toolbar exposes some of the commands built-in. For more information please check the [PdfViewer Toolbar]({%slug pdfviewer-toolbar%}) article.

## Example

Following is an example how the RadPdfViewer commands could be called on a button click action. For the example we will visualize a pdf document from stream. 

>The snippet below shows one of the approaches for loading a pdf document inside RadPdfViewer just for the purpose of the example. For more details on various ways for loading the document check [Key Features: Pdf Document Visualization]({%slug pdfviewer-key-features%}#pdf-document-visualization) topic.

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

By default FitToWidth command of the PdfViewer is assigned to "Fit Document to Width" option. You can easily switch to "Fit Page to Width" option by setting **FitToWidthCommand** property of RadPdfViewer to **FitPageToWidthCommand**, check the snippet below:
	
```C#	
this.pdfViewer.FitToWidthCommand = new FitPageToWidthCommand();
```

In this way, calling the **FitToWidthCommand** on a button click action, as in the example above, will execute "Fit Page to Width" on the current page.
 
>important A sample Commands example can be found in the PdfViewer/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).
>
>You can directly explore the code in the [SDK Samples Browser repository on GitHub](https://github.com/telerik/xamarin-forms-sdk/tree/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/PdfViewerControl/FeaturesCategory/CommandsExample).

## See Also

- [Key Features]({%slug pdfviewer-key-features%})
- [PdfViewer Toolbar]({%slug pdfviewer-toolbar%})
