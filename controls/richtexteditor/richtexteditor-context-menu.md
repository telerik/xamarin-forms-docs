---
title: Context Menu
page_title: Xamarin RichTextEditor Documentation | Context Menu
description: Check our &quot;Context Menu&quot; documentation article for Telerik RichTextEditor for Xamarin control.
position: 6
slug: richtexteditor-context-menu
---

# Context Menu

With R1 2021 release RichTextEditor comes with a built-in context menu support which shows common operations such as Copy and Paste for sharing data between the apps or within the app. The context menu is triggered on tap and hold gesture (right-button click on UWP) over the editor content. It is also displayed as soon as the user performs text selection.

The default context menu shows the following options:

* **Cut** - cuts the selected text and saves it in the system clipboard;
* **Copy** - copies the selected text and saves it in the clipboard;
* **Paste** - pastes the text from the clipboard into the editor;
* **Paste as Plain Text** - pastes the text from the clipboard stripping any additional formatting;
* **Select All** - selects all the current text in the editor;

What options are available in the context menu depends on the current text selection or caret position in the editor.

Check below a few examples of the RichTextEditor Context Menu.

* in case of text selection, all the default options are available:

![](images/richtexteditor-contextmenu-1.png)

* in case the context menu is shown over the current caret position (through tap and hold gesture on empty space inside the editor), only Paste and SelectAll options are available:

![](images/richtexteditor-contextmenu-2.png)

## Custom Context Menu

You can easily modify the RichTextEditor default Context Menu and add or remove some of the provided options. Just need to set <code>AutoGenerateContextMenu</code> property of the RichTextEditor to *False* and manually define the ContextMenuItems. You can choose from the predefined ContextMenuItems or create a CustomContextMenuItem instance and define its **Title** and **Command** (the Command can be bound to any of the RadRichTextEditor's [Commands]({%slug richtexteditor-commands%}) or to a custom command). 

Here is a list of the predefined ContextMenuItems:

* BoldContextMenuItem
* CopyContextMenuItem
* CutContextMenuItem
* ItalicContextMenuItem
* OpenHyperlinkContextMenuItem
* PasteContextMenuItem
* PastePlainTextContextMenuItem
* SelectAllContextMenuItem

Following is an example how the RichTextEditor Context Menu can be customized by using some of the predefined items as well as adding a <code>CustomContextMenuItem</code> instance:

<snippet id='richtexteditor-contextmenu-xaml' />

Add the required namespace:

```XAML
xmlns:telerikRichTextEditor="clr-namespace:Telerik.XamarinForms.RichTextEditor;assembly=Telerik.XamarinForms.RichTextEditor"
```

Here is the result:

![](images/richtexteditor-custom-contextmenu.png)

>important A sample CustomContextMenu example can be found in the RichTextEditor/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Commands]({%slug richtexteditor-commands%})
- [RadRichTextEditor Toolbar]({%slug richtexteditor-toolbar%})
