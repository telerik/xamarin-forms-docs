---
title: Commands
page_title: Xamarin RichTextEditor Documentation | Commands
description: Check our &quot;Commands&quot; documentation article for Telerik RichTextEditor for Xamarin control.
position: 8
slug: richtexteditor-commands
---

# Commands

RadRichTextEditor provides the following commands of type *ICommand*:

* **RemoveHyperlinkCommand**
* **RedoCommand**
* **ToggleBoldCommand**
* **ToggleItalicCommand**
* **ToggleUnderlineCommand**
* **ToggleStrikethroughCommand**
* **ToggleSubscriptCommand**
* **ToggleSuperscriptCommand**
* **ToggleBulletingCommand**
* **ToggleNumberingCommand**
* **ClearFormattingCommand**
* **AlignLeftCommand**
* **AlignRightCommand**
* **AlignCenterCommand**
* **AlignJustifyCommand**
* **IndentCommand**
* **OutdentCommand**
* **ApplyHyperlinkCommand**
* **UndoCommand**

>note RadPdfViewer Toolbar exposes some of the commands built-in. For more information please check the [PdfViewer Toolbar]({%slug pdfviewer-toolbar%}) article.

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

By default FitToWidth command of the PdfViewer is assigned to "Fit Document to Width" option. You can easily switch to "Fit Page to Width" option by setting **FitToWidthCommand** property of RadPdfViewer to **FitPageToWidthCommand**, check the snippet below:
	
```C#	
this.pdfViewer.FitToWidthCommand = new FitPageToWidthCommand();
```

In this way, calling the **FitToWidthCommand** on a button click action, as in the example above, will execute "Fit Page to Width" on the current page.
 
>important A sample Commands example can be found in the PdfViewer/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [PdfViewer Toolbar]({%slug pdfviewer-toolbar%})
