---
title: RichTextEditor Custom Toolbar
page_title: Xamarin RichTextEditor Documentation | Key Features
description: Check our &quot;RichTextEditor Custom Toolbar&quot; documentation article for Telerik RichTextEditor for Xamarin control.
position: 4
slug: richtexteditor-custom-toolbar
---

# RichTextEditor Custom Toolbar

By default the RadRichTextEditorToolbar Items are auto-populated. You could change this by setting the RadRichTextEditorToolbar boolean <code>AutoGenerateItems</code> property to False. In this case you will need to manually define and arrange the toolbar items per your needs.

## RichTextEditor ToolbarItem

All predefined toolbar items derive from a common <code>RichTextEditorToolbarItem</code> which exposes some useful configuration as well as styling properties, such as:

* **Text** and **Description** - when the toolbar is placed inside the main toolbar area only the Text is shown, but when in the menu area – both Text and Description are shown.

* **IsOverflowItem** (*bool*): Identifies a toolbar item as a OverflowButton. In case you'd like to add some toolbar items inside additional area that can be open from a overflow button, create a <code>RichTextEditorToolbarItem</code> instance, set its IsOverflowItem to *True* and add toolbar items to it.
 
* **IsChecked** (*bool*): Indicates whether the toolbar item is checked; more toolbar items can be checked at the same time, for example, both ItalicToolbarItem and BoldToolbarItem can be checked;

* **IsSelected** (*bool*): Indicates whether the toolbar item is selected, only one toolbar item can be selected at a time;

## Predefined Toolbar Items

RadRichTextEditorToolbar contains a bunch of predefined toolbar items used to execute the editing features over the content. Below you will find a complete list of the predefined toolbar items grouped according to their type:

- Checkable Toolbar items - these items remain checked and apply the formatting over the text under the caret:
	* AlignCenterToolbarItem
	* AlignJustifyToolbarItem
	* AlignLeftToolbarItem
	* AlignRightToolbarItem
	* BoldToolbarItem
	* BulletingToolbarItem
	* ItalicToolbarItem
	* NumberingToolbarItem
	* StrikethroughToolbarItem
	* SubscriptToolbarItem
	* SuperscriptToolbarItem
	* UnderlineToolbarItem
	
- Action Toolbar items - execute the concrete action over the current text or selection:
	* ClearFormattingToolbarItem
	* IndentToolbarItem
	* OutdentToolbarItem
	* RedоToolbarItem
	* UndоToolbarItem
	
- Picker Toolbar items - open picker controls for choosing color, font, etc:
	* ColorPickerToolbarItem
	* FontFamilyToolbarItem
	* FontSizeToolbarItem
	* HighlightTextColorToolbarItem
	* TextColorToolbarItem
	* TextFormattingToolbarItem
	
- Hyperlink Toolbar item - toolbar item for managing hyperlinks:
	* AddHyperlinkToolbarItem  - contains child toolbar items for creating, editing and removing hyperlinks;

If you'd like to choose what toolbar items to be shown inside the toolbar as well as their order, you would need to set **AutoGenerateItems** to *False* and add the items manually:

<snippet id='richtexteditor-toolbar-xaml' />

And here is the result:

## See Also

- [Key Features]({%slug richtexteditor-key-features%})
- [Commands]({%slug richtexteditor-commands%})
