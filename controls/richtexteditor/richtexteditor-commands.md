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

>note RadRichTextEditor Toolbar exposes some of the commands built-in. For more information please check the [RadRichTextEditor Toolbar]({%slug richtexteditor-toolbar%}) article.

## Example

Through the provided commands you can execute the corresponding actions over RichTextEditor (for example apply bold text formatting) from a custom UI other than the RichTextEditor toolbar. 

Following is an example how the RadRichTextEditor commands could be called on a button click action. 

Let's add the RichTextEditor definition together with a few sample buttons wired to the editor's commands:

<snippet id='richtexteditor-commands-xaml' />

Add the required namespaces:

```XAML
xmlns:telerikCommon="clr-namespace:Telerik.XamarinForms.Common;assembly=Telerik.XamarinForms.Common"
xmlns:telerikRichTextEditor="clr-namespace:Telerik.XamarinForms.RichTextEditor;assembly=Telerik.XamarinForms.RichTextEditor"
```

Now text formatting and creating lists can be executed over the editor through the sample buttons:

>important A sample Commands example can be found in the RichTextEditor/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [RadRichTextEditor Toolbar]({%slug richtexteditor-toolbar%})
