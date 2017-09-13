---
title: Getting Started
page_title: Getting Started
position: 0
slug: maskedinput-getting-started
---

#  Getting Started

In this article you will familiarize yourselves with the most important properties of the **RadMaskedInput** Control. We will also cover some basic scenarios in which the **RadMaskedInput** control can be used. 

## Mask Types

The **RadMaskedInput** control exposes a **MaskType** property which can be either "**Text**" or "**Regex**". It controls the type of the validation. If you choose to use a Text type, the Mask of the control should be set by utilizing the [Mask Tokens]({%slug maskedinput-features-mask-tokens%}). In case you decide to use a Regex for validating the input, you should set such to the **Mask** property. 

## Important Properties

The **RadMaskedInput** control exposes the following properties which you can configure:

#### Mask-related properties:

* **MaskType**(MaskType): Used to set the validation type of the **RadMaskedInput**. You can set it to either **Text** or **Regex**.
* **Mask**(string): You should use this property to set the Mask of the control. It is of type string. In case of using Text validation, you should use the available Mask Tokens. Otherwise, a regular expression should be set.

#### Appearance-related properties: 

* **WatermarkText**: Gets or sets the text used as watermark.
* **WatermarkTextColor**: Gets or sets the color of the text of the watermark.
* **DisplayedText**: Gets the displayed text.(Read-only) 
* **DisplayedTextColor**: Gets or sets the color of the displayed text.
* **DisplayedTextFont**: Gets or sets the font of the displayed text
* **DisplayedTextFontSize**: Gets or sets the size of the font used for the displayed text.


#### Validation-related properties: 

* **InvalidInputErrorText**: Gets or sets the text that is shown as error message on invalid input
* **ErrorColor**: Gets or sets the color of the error text.
* **ErrorFontSize**: Gets or sets the font size of the error text.
* **RejectedSymbolErrorText**:  Gets or sets the error text when a symbol was rejected.


## Example

The following examples show how to add a **RadMaskedInput** to your project. 

**MaskedInput with MaskType Text:**
<snippet id='maskedinput-gettingstarted-text-xaml'/>

**MaskedInput with MaskType RegEx:**
<snippet id='maskedinput-gettingstarted-regex-xaml'/>

## See Also

* [RadMaskedInput Tokens]({%slug maskedinput-features-mask-tokens%})
* [RadMaskedInput Events]({%slug maskedinput-features-events%})
