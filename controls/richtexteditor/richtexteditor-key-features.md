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

<snippet id='richtexteditor-getting-started' />

### Load HTML from a stream

Another option to preload HTML is by retrieving it from a stream through the static <code>FromStream</code> method of the **RichTextSource** and again,  assign the result to the **Source** property of the RichTextEditor:

<snippet id='richtexteditor-keyfeatures-fromstream' />

## Retrieving HTML Content

Through **GetHtmlAsync** method of RadRichTextEditor you can obtain the created and updated inside the editor HTML content:

<snippet id='richtexteditor-keyfeatures-gethtml' />

## RichText Editing Capabilities

RichTextEditor will help app users create and edit HTML content. You can apply provided by RichTextEditor editing features through the built-in UI, namely [RadRichTextEditorToolbar]({%slug richtexteditor-toolbar %}), or you can create custom UI and manually execute the RadRichTextEditor [Commands]({%slug richtexteditor-commands%}).

In addition, RichTextEditor provides flexible API to apply formatting at the current caret position or on the selected text inside the editing area.

* **TextFormatting** (of type [RichTextFormatting](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtextformatting)): Defines the text formatting, such as heading, paragraph or of the text at the current position or selection. 

* **TextColor**: Specifies the color of the text at the current position or selection;

* **HighlightTextColor**: Defines the text background color at the current position or selection;

* **SelectionRange** (of type [RichTextSelectionRange](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtextselectionrange)): Specifies the start and end position of the currently selected inside the editor text.

* **FontSize**: Sets the font size of the text at the current caret position or selection;

* **FontAttributes** (of type [RichTextFontAttributes](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtextfontattributes)): Defines the font attributes, such as bold, italic, subscript and superscript at the current position or selection;

* **TextDecorations** (of type [RichTextDecorations](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtextdecorations)): Specifies text decorations, such as underline and strikethrough at the current position or selection;

* **HorizontalTextAlignment** (of type [RichTextHorizontalAlignment](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtexthorizontalalignment)): Specifies the text alignment, such as left, right, center or justify at the current position or selection;

* **ListType** (of type [RichTextListType](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtextlisttype)): Specifies the list type, such as numbered or bulleted list at the current position or selection.

You can take advantage of the following methods related to hyperlinks and selection:

* GetHyperlinkAsync() - returns asynchronously a <code>RichTextHyperlink</code> under the caret in the editor (or *null* in case there is no hyperlink).  The <code>RichTextHyperlink</code> object contains the *Url* and *Title* of the link;

* GetHyperlinkAsync() - returns asynchronously a <code>RichTextSelection</code> object which defines the current text selection inside the editor (*null* if there is no text selection). The <code>RichTextSelection</code> object contains the *Text* itself as well as the *Start* and *End* position of the text characters;

## See Also

- [PdfViewer Toolbar]({%slug richtexteditor-toolbar%})
- [Commands]({%slug richtexteditor-commands%})
