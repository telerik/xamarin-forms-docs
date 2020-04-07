---
title: RegEx Validation
page_title: Mask Extensions
description: Check our &quot;RegEx Validation&quot; documentation article for Telerik MaskedInput for Xamarin control.
position: 4
slug: maskedinput-features-mask-extensions
---

# Validation through custom Regular Expressions

One of the main features that **RadMaskedInput** supports is validation through a custom regular expression. You can define a input pattern of your choice and set it to the Mask property of the control. In order to use the validation through regular expressions, you should set the **MaskType** to **Regex**.

Below you can find a list of the available Regex and their usage:

Corresponding Regex | Usage
---|---
"[0-9]" | a single digit
"[0-9]{1}" | a single digit(required)
"[a-zA-Z]" | a single letter
"[a-zA-Z]{1}" | a single letter(required)
"\S" | all symbols without space
"." | all symbols
"[0-9a-zA-Z]" | all without special symbols and space
"[0-9a-zA-Z ]" | all without special symbols

## Custom Regex Example

**MaskedInput with custom RegEx validation**

<snippet id='maskedinput-features-regex-custom-validation-xaml'/>

## Mask Extensions

The static class **Telerik.XamarinForms.Input.MaskedInput.MaskExtensions** contains two static regular expressions which you can directly use for validation when the **MaskType** is **Regex**:

- **IP**:  "^(([1-9]?\\d|1\\d\\d|2[0-5][0-5]|2[0-4]\\d)\\.){3}([1-9]?\\d|1\\d\\d|2[0-5][0-5]|2[0-4]\\d)$"
- **Email**: "^(([^<>()\\[\\]\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$"
 
## Built-in Regex Example

**Validation using the MaskExtensions class**

<snippet id='maskedinput-features-regex-extensions-validation-xaml'/>

Where the following namespace is used:

```XAML
xmlns:extensions="clr-namespace:Telerik.XamarinForms.Input.MaskedInput;assembly=Telerik.XamarinForms.Input"
```

## See Also

* [Getting Started]({% slug maskedinput-getting-started %})
* [Events]({% slug maskedinput-features-events %})
* [Commands]({% slug maskedinput-features-commands %})
