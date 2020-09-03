---
title: RichTextEditor Custom Toolbar
page_title: Xamarin RichTextEditor Documentation | Key Features
description: Check our &quot;RichTextEditor Custom Toolbar&quot; documentation article for Telerik RichTextEditor for Xamarin control.
position: 4
slug: richtexteditor-custom-toolbar
---

# RichTextEditor Custom Toolbar

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
