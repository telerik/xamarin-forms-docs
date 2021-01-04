---
title: Fonts
page_title: Xamarin PdfViewer Documentation | Fonts
description: Check our &quot;Fonts&quot; documentation article for Telerik PdfViewer for Xamarin control.
position: 7
slug: pdfviewer-fonts
---

# Fonts

RadPdfViewer has a support for standard and embedded fonts. 

## Standard Fonts

There are 14 standard fonts that are not embedded in the document when you use them. These fonts can be accessed through the [FontsRepository class](https://docs.telerik.com/devtools/document-processing/api/telerik.windows.documents.fixed.model.fonts.fontsrepository) and are listed below.

* Helvetica
* Helvetica-Bold
* Helvetica-Oblique
* Helvetica-BoldOblique
* Courier
* Courier-Bold
* Courier-Oblique
* Courier-BoldOblique
* Times-Roman
* Times-Bold
* Times-Italic
* Times-BoldItalic
* Symbol
* ZapfDingbats

## Embeded Fonts

All fonts, which are not included in the 14 standard ones should be embedded in the PDF document. Otherwise, the result when the document is rendered is unpredictable. In RadPdfProcessing you have the ability to embed fonts following the approaches described below.

How to register a font please check the following article in the [PdfProcessing library](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/concepts/fonts#registering-a-font).

## See Also

- [PdfViewer Toolbar]({%slug pdfviewer-toolbar%})
