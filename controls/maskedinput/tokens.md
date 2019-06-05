---
title: Tokens Validation
page_title: Mask Tokens
position: 2
slug: maskedinput-features-mask-tokens
---

# Mask Tokens

When the **MaskType** of the **RadMaskedInput** control is set to **Text**, you can utilize the available Mask Tokens to restrict the user input. Below you can find a list of the available tokens and their purpose:

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

## Mask Tokens Example

<snippet id='maskedinput-gettingstarted-text-xaml'/>  

## See Also

* [Getting Started]({% slug maskedinput-getting-started %})
* [Events]({% slug maskedinput-features-events %})
* [Commands]({% slug maskedinput-features-commands %})