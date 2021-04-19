---
title: Events
page_title: Xamarin RichTextEditor Documentation | Events
description: Check our &quot;Events&quot; documentation article for Telerik RichTextEditor for Xamarin control.
position: 10
slug: richtexteditor-events
---

# Events

RadRichTextEditor component exposes the following events:

* **OpenHyperlinkError**: Raised when users try to open invalid urls in the editor. The OpenHyperlinkError event handler receives two parameters:

	* The <code>Sender</code> which is the RichTextEditor control;
	* OpenHyperlinkErrorEventArgs provides the following properties:
		* <code>Error</code> - of type System.Exception, can be used to get the exact error message;
		* <code>Url</code> - of type string, defining the url of the hyperlink;
		* <code>Handled</code> - boolean property indicating whether the event is handled.
		
* **IsReadOnlyChanged**: Raised when read-only mode of the RichTextEditor is switched. The IsReadOnlyChanged event receives two parameters:

	* The <code>Sender</code> which is the RichTextEditor control;
	* RadValueChangedEventArgs&lt;bool&gt; provides <code>NewValue</code> and <code>OldValue</code> properties of type *bool*, indicating the IsReadOnly property change.
			
* **FontFamilyChanged**: Raised when the <code>FontFamily</code> property of the RichTextEditor is modified. The FontFamilyChanged event handler receives two parameters:
	* The <code>Sender</code> which is the RichTextEditor control;
	* RadValueChangedEventArgs&lt;string&gt; provides <code>NewValue</code> and <code>OldValue</code> properties of type *string*, indicating the FontFamily property change.

* **FontSizeChanged**: Raised when the <code>FontSize</code> property of the RichTextEditor is modified. The FontSizeChanged event handler receives two parameters:
	* The <code>Sender</code> which is the RichTextEditor control;
	* RadValueChangedEventArgs&lt;RichTextUnit&gt; provides <code>NewValue</code> and <code>OldValue</code> properties of type [RichTextUnit](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtextunit), indicating the FontFamily property change.
	
* **FontAttributesChanged**: Raised when the <code>FontAttributes</code>, such as bold, italic, subscript and superscript is modified. The FontAttributesChanged event handler receives two parameters:
	* The <code>Sender</code> which is the RichTextEditor control;
	* RadValueChangedEventArgs&lt;RichTextFontAttributes&gt; provides <code>NewValue</code> and <code>OldValue</code> properties of type [RichTextFontAttributes](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtextfontattributes), indicating the FontAttributes property change.
	
* **TextDecorationsChanged**: Raised when the <code>TextDecorations</code>, such as underline and strikethrough is modified. The TextDecorationsChanged event handler receives two parameters:
	* The <code>Sender</code> which is the RichTextEditor control;
	* RadValueChangedEventArgs&lt;RichTextDecorations&gt; provides <code>NewValue</code> and <code>OldValue</code> properties of type [RichTextDecorations](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtextdecorations), indicating the TextDecorations property change.

* **TextFormattingChanged**: Raised when the <code>TextFormatting</code>, such as such as heading, paragraph or quotation is modified. The TextFormattingChanged event handler receives two parameters:
	* The <code>Sender</code> which is the RichTextEditor control;
	* RadValueChangedEventArgs&lt;RichTextFormatting&gt; provides <code>NewValue</code> and <code>OldValue</code> properties of type [RichTextFormatting](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtextformatting), indicating the TextFormatting property change.

* **HorizontalTextAlignmentChanged**: Raised when the <code>HorizontalTextAlignment</code>, such as left, right, center or justify is modified. The HorizontalTextAlignmentChanged event handler receives two parameters:
	* The <code>Sender</code> which is the RichTextEditor control;
	* RadValueChangedEventArgs&lt;RichTextHorizontalAlignment&gt; provides <code>NewValue</code> and <code>OldValue</code> properties of type [RichTextHorizontalAlignment](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtexthorizontalalignment), indicating the HorizontalTextAlignment property change.

* **ListTypeChanged**: Raised when the <code>ListType</code>, such as numbered or bulleted list is modified. The ListTypeChanged event handler receives two parameters:
	* The <code>Sender</code> which is the RichTextEditor control;
	* RadValueChangedEventArgs&lt;RichTextListType&gt; provides <code>NewValue</code> and <code>OldValue</code> properties of type [RichTextListType](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtextlisttype), indicating the ListType property change.

* **TextColorChanged**: Raised when the <code>TextColor</code> property of the RichTextEditor is updated. The TextColorChanged event handler receives two parameters:
	* The <code>Sender</code> which is the RichTextEditor control;
	* RadValueChangedEventArgs&lt;Color&gt; provides <code>NewValue</code> and <code>OldValue</code> properties of type **Color**, indicating the TextColor property change.

* **HighlightTextColorChanged**: Raised when the <code>HighlightTextColor</code> property of the RichTextEditor is updated. The HighlightTextColorChanged event handler receives two parameters:
	* The <code>Sender</code> which is the RichTextEditor control;
	* RadValueChangedEventArgs&lt;Color&gt; provides <code>NewValue</code> and <code>OldValue</code> properties of type **Color**, indicating the HighlightTextColor property change.
	
* **SelectionRangeChanged**: Raised when the <code>SelectionRange</code>, which defines the start and end position of the currently selected inside the editor text, is updated. The SelectionRangeChanged event handler receives two parameters:
	* The <code>Sender</code> which is the RichTextEditor control;
	* RadValueChangedEventArgs&lt;RichTextSelectionRange&gt; provides <code>NewValue</code> and <code>OldValue</code> properties of type [RichTextSelectionRange](/devtools/xamarin/api/telerik.xamarinforms.richtexteditor.richtextselectionrange), indicating the SelectionRange property change.

* **IsHyperlinkSelectedChanged**: Raised when a hyperlink inside the editor is selected. The IsHyperlinkSelectedChanged event handler receives two parameters:
	* The <code>Sender</code> which is the RichTextEditor control;
	* RadValueChangedEventArgs&lt;bool&gt; provides <code>NewValue</code> and <code>OldValue</code> properties of type **bool**, indicating the IsHyperlinkSelected property change.

## See Also

- [Key Features]({%slug richtexteditor-key-features%})
- [RadRichTextEditor Toolbar]({%slug richtexteditor-toolbar%})
- [Commands]({%slug richtexteditor-commands%})
