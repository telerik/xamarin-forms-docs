---
title: Getting Started
page_title: Getting Started
position: 1
slug: maskedinput-getting-started
---

#  Getting Started

This article will guide you through the steps needed to add a basic **RadMaskedInput** control in your application and will provide information regarding the most important properties of the control. 

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget packages following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadMaskedInput** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Input.dll |
| Android  | Telerik.Xamarin.Android.Common.dll <br/>Telerik.Xamarin.Android.Data.dll <br/>Telerik.Xamarin.Android.Input.dll <br/>Telerik.Xamarin.Android.List.dll <br/> Telerik.Xamarin.Android.Primitives.dll <br/>Telerik.XamarinForms.Common.dll <br/>Telerik.XamarinForms.Input.dll |
| iOS      | Telerik.Xamarin.iOS.dll <br/>Telerik.XamarinForms.Common.dll <br/>Telerik.XamarinForms.Input.dll |
| UWP      | Telerik.Core.dll <br/>Telerik.Data.dll <br/>Telerik.UI.Xaml.Controls.Data.UWP.dll <br/> Telerik.UI.Xaml.Input.UWP.dll <br/>Telerik.UI.Xaml.Primitives.UWP.dll <br/>Telerik.XamarinForms.Common.dll <br/>Telerik.XamarinForms.Input.dll <br/>|

## 3. Adding RadMaskedInput control

If your app is setup, you are ready to add a **RadMaskedInput** control.

The **RadMaskedInput** control exposes a **MaskType** property which can be either "**Text**" or "**Regex**". It controls the type of the validation. If you choose to use a Text type, the **Mask** of the control should be set by utilizing the [Mask Tokens]({%slug maskedinput-features-mask-tokens%}). In case you decide to use a Regex for validating the input, you should set such to the **Mask** property as demonstrated in the [RegEx Vaidation]({%slug maskedinput-features-mask-extensions %}) topic. 

Here is an example how to add RadMaskedInput control with **Text** MaskType:

<snippet id='maskedinput-gettingstarted-text-xaml'/>

In addition to this you need to add the following namespace:

<snippet id='xmlns-telerikinput'/>
<snippet id='ns-telerikinput'/>

This is the result:
![Getting started](images/maskedinput_gettingstarted.png)

## 4. Important Properties

The **RadMaskedInput** control exposes the following properties which you can configure:

#### Mask-related properties:

* **MaskType**(MaskType): Used to set the validation type of the **RadMaskedInput**. You can set it to either **Text** (for Tokens validation) or **Regex** (for RegEx validation).
* **Mask**(string): You should use this property to set the Mask of the control. It is of type string. In case of using Text validation, you should use the available Mask Tokens. Otherwise, a regular expression should be set.
* **IsMaskFull**(bool): Gets a value indicating if all required symbols are filled. The default value is true. Can be false only when required symbols tokens are present in the mask. (*ReadOnly*)
* **InputValue**(string): Gets or sets the whole input value.
* **IsInputAccepted**(bool): Gets a value indicating whether the input matches the mask.(*ReadOnly*)

#### Appearance-related properties: 

* **WatermarkText**: Gets or sets the text used as watermark.
* **WatermarkTextColor**: Gets or sets the color of the text of the watermark.
* **DisplayedText**: Gets the displayed text.(Read-only) 
* **DisplayedTextColor**: Gets or sets the color of the displayed text.
* **DisplayedTextFont**: Gets or sets the font of the displayed text
* **DisplayedTextFontSize**: Gets or sets the size of the font used for the displayed text.
* **BorderStyle**: Gets or sets a **BorderStyle** object that is used to define the border of the MaskedInput.
* **Placeholder**: Gets or sets the symbol that will be used to mark an empty position. The default value is '_'.

#### Validation-related properties: 

* **InvalidInputErrorText**: Gets or sets the text that is shown as error message on invalid input
* **ErrorColor**: Gets or sets the color of the error text.
* **ErrorFontSize**: Gets or sets the font size of the error text.
* **RejectedSymbolErrorText**:  Gets or sets the error text when a symbol was rejected.
* **IsErrorTextVisible**(bool): Gets a value indicating whether the error text is visible. (*ReadOnly*)


>important **SDK Browser** and **QSF** applications contain different examples that show RadMaskedInput's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also

* [Tokens]({%slug maskedinput-features-mask-tokens%})
* [Events]({%slug maskedinput-features-events%})
