---
title: RichTextEditor Toolbar
page_title: Xamarin RichTextEditor Documentation | Key Features
description: Check our &quot;RichTextEditor Toolbar&quot; documentation article for Telerik RichTextEditor for Xamarin control.
position: 3
slug: richtexteditor-toolbar
---

# RichTextEditor Toolbar

RadRichTextEditorToolbar includes all commands that RichTextEditor provides. They can be used as predefined UI toolbar items.

## RichTextEditor ToolbarItem

All predefined toolbar items derive from a common <code>RichTextEditorToolbarItem</code> which exposes some useful configuration as well as styling properties, such as:

* Text
* Description
* IsOverflowItem

## Predefined Toolbar Items

RadRichTextEditorToolbar contains the following Toolbar items:

* AlignCenterToolbarItem
* AlignJustifyToolbarItem
* AlignLeftToolbarItem
* AlignRightToolbarItem
* BoldToolbarItem
* BulletingToolbarItem

By default, all toolbar items are shown in the RadRichTextEditorToolbar. You can control this by **AutoGenerateItems** boolean property. If you'd like to choose what toolbar items to be shown inside the toolbar, you would need to set **AutoGenerateItems** to *False* and add the items manually:

<snippet id='richtexteditor-toolbar-xaml' />

## RichTextEditor Toolbar Placement

## See Also

- [Key Features]({%slug richtexteditor-key-features%})
- [Commands]({%slug richtexteditor-commands%})
