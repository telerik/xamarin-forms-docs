---
title: Key Features
page_title: Xamarin RichTextEditor Documentation | Key Features
description: Check our &quot;Key Features&quot; documentation article for Telerik RichTextEditor for Xamarin control.
position: 2
slug: richtexteditor-key-features
---

# Key Features

The purpose of this help article is to show you the key features of the **RadRichTextEditor** control.

## HTML Source options

RichTextEditor exposes **Source** property used to load HTML content into the editor from a string as well as from a stream. 

### Load HTML from a string

You can easily load the HTML content from a string by using the static <code>FromString</code> method of the **RichTextSource** class and assigning the result to the **Source** property of RadRichTextEditor:

<snippet id='richtexteditor-keyfeatures-fromstring' />

### Load HTML from a stream

Another option to preload HTML is by retrieving it from a stream through the static <code>FromStream</code> method of the **RichTextSource** and again,  assign the result to the **Source** property of the RichTextEditor:

<snippet id='richtexteditor-keyfeatures-fromstream' />

## Retrieving HTML Content

Through **GetHtmlAsync** method of RadRichTextEditor you can obtain the created and updated inside the editor HTML content:

<snippet id='richtexteditor-keyfeatures-gethtml' />

## RichText Editing Capabilities

RichTextEditor will help app users create and edit HTML content.  

## See Also

- [PdfViewer Toolbar]({%slug richtexteditor-toolbar%})
