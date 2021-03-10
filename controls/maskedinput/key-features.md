---
title: Key Features
page_title: Getting Started with Xamarin.Forms MaskedInput Control
description: Check our &quot;Key Features&quot; documentation article for Telerik MaskedInput for Xamarin control.
position: 1
slug: maskedinput-key-features
---

#  Key Features

The purpose of this help article is to show you the key features of the RadMaskedInput control.

## Mask-related properties:

* **MaskType**(*of type Telerik.XamarinForms.Input.MaskedInput.MaskType*): Defines the expected validation type of the Mask. Here are the two options: 
	* **Text** (for Tokens validation)
	* **Regex** (for RegEx validation)
* **Mask**(*string*): Specifies a string defining the mask. In case of using Text validation, you should use the available Mask Tokens. Otherwise, a regular expression should be set.
* **IsMaskFull**(*bool*): Gets a value indicating if all required symbols are filled. The default value is true. Can be false only when required symbols tokens are present in the mask. (*ReadOnly*)
* **InputValue**(*string*): Defines the input value.
* **IsInputAccepted**(*bool*): Gets a value indicating whether the input matches the mask.(*ReadOnly*)
* **Keyboard** (*Xamarin.Forms.Keyboard*): Defines the type of the keyboard that will be visualized by the device.

## Appearance-related properties: 

* **WatermarkText**(*string*): Specifies the text used as watermark.
* **WatermarkTextColor**(*Color*): Specifies the color of the text of the watermark.
* **DisplayedText**(*string*): Gets the displayed text.(*ReadOnly*) 
* **DisplayedTextColor**(*Color*): Defines the color of the displayed text.
* **DisplayedTextFont**(*string*): Defines the font of the displayed text.
* **DisplayedTextFontSize**(*double*): Defines the size of the font used for the displayed text.
* **BorderStyle**(*of type Telerik.XamarinForms.Input.BorderStyle*) Gets or sets a Telerik.XamarinForms.Input.RadMaskedInput.BorderStyle defining the look of the border around the entry. The default value is defined by the OS.
* **Placeholder**(*char*): Specifies the symbol that will be used to mark an empty position. The default value is '_'.

## Validation-related properties: 

* **InvalidInputErrorText**(*string*): Defines the text that is shown as error message on invalid input.
* **ErrorColor**(*Color*): Specifies the color of the error text.
* **ErrorFontSize**(*double*): Specifies the font size of the error text.
* **RejectedSymbolErrorText**(*string*):  Defines the error text when a symbol was rejected.
* **IsErrorTextVisible**(*bool*): Gets a value indicating whether the error text is visible. (*ReadOnly*)

>important **SDK Browser** and **QSF** applications contain different examples that show RadMaskedInput's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also

* [Tokens]({%slug maskedinput-features-mask-tokens%})
* [RegEx]({%slug maskedinput-features-mask-extensions%})
* [Validation]({%slug maskedinput-features-validation%})
* [Commands]({%slug maskedinput-features-commands%})
* [Events]({%slug maskedinput-features-events%})
* [Theming and Style]({%slug maskedinput-theming-style%})
