---
title: RichTextEditor Toolbar
page_title: Xamarin RichTextEditor Documentation | Key Features
description: Check our &quot;RichTextEditor Toolbar&quot; documentation article for Telerik RichTextEditor for Xamarin control.
position: 3
slug: richtexteditor-toolbar
---

# RichTextEditor Toolbar

RadRichTextEditor control comes with various editing capabilities and with the help of the RadRichTextEditorToolbar you can provide to the users easy and quick way to edit their HTML content. The default toolbar include items for all the available text formatting options, alternatively you could customize the shown editing options according to your needs.

By default the RadRichTextEditorToolbar Items are auto-populated. You could change this by setting the RadRichTextEditorToolbar boolean AutoGenerateItems property to False. In this case you will need to manually define the available editing options, for more details check [Custom Toolbar]({%slug richtexteditor-custom-toolbar%}) article.

In order to attach the RichTextEditor control to the RadRichTextEditorToolbar control you need to set the <code>RichTextEditor</code> (from type *RadRichTextEditor*) property. All toolbar items execute their actions against the specified richtext editor.

When the RadRichTextEditorToolbar items can not fit into the device screen, OverflowButton is shown in the toolbar. You could customize it through the following properties:

* OverflowButtonBorderColor { get; set; }
* OverflowButtonBorderThickness { get; set; }
* OpenOverflowButtonTextColor { get; set; }
* OpenOverflowButtonBackgroundColor { get; set; }


## RichTextEditor Toolbar Placement

## See Also

- [Key Features]({%slug richtexteditor-key-features%})
- [Commands]({%slug richtexteditor-commands%})
