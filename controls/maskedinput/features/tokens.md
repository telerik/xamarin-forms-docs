---
title: Mask Tokens
page_title: Mask Tokens
position: 0
slug: maskedinput-features-mask-tokens
---

# Mask Tokens

When the **MaskType** of the **RadMaskedInput** control is set to Text, you can utilize the available Mask Tokens to restrict the user input. Below you can find a list of the available tokens and their purpose:

Token | Corresponding Regex | Usage
---|---|---
0 | "[0-9]" | a single digit
9 | "[0-9]{1}" | a single digit(required)
L | "[a-zA-Z]" | a single letter
? | "[a-zA-Z]{1}" | a single letter(required)
& | "\S" | all symbols without space
C | "." | all symbols
A | "[0-9a-zA-Z]" | all without special symbols and space
a | "[0-9a-zA-Z ]" | all without special symbols

## Mask Extensions

The static class **Telerik.XamarinForms.Input.MaskedInput.MaskExtensions** contains two static regular expressions which you can directly use for validation when the **MaskType** is **Regex**:

- **IP**:  "^(([1-9]?\\d|1\\d\\d|2[0-5][0-5]|2[0-4]\\d)\\.){3}([1-9]?\\d|1\\d\\d|2[0-5][0-5]|2[0-4]\\d)$"
- **Email**: "(([^<>()\\[\\]\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))"
 
## Mask Tokens Example

<snippet id='maskedinput-gettingstarted-text-xaml'/>  

## See Also

* [Getting Started]({% slug maskedinput-getting-started %})
* [Events]({% slug maskedinput-features-events %})
* [Commands]({% slug maskedinput-features-commands %})