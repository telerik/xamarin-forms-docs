---
title: Events
page_title: Events
position: 1
slug: maskedinput-features-events
---

# Events

The RadMaskedInput exposes the following events which can be utilized for additional control of the user's input:

* **ApplyMaskStarted**: Occurs when you type a symbol, before the mask is applied.
* **ApplyMaskFinished**: Occurs after you type a symbol, when the mask is already applied.

### ApplyMaskStarted

The event occurs when you type in a symbol in the **RadMaskedInput** and the mask is about to be applied. It takes parameter of type **ApplyMaskStartedEventArgs** with the following properties:

* **NewDisplayedText**: The updated text of the **MaskedInput** control after the symbol is added.
* **NewInputValue**: The symbol that was typed.
* **OldDisplayedText**: The text of the **MaskedInput** before the symbol is added.
* **OldInputValue**: The previous input value. Returns empty string if such is not available. 

### ApplyMaskFinished

The event occurs when you have already typed the symbol and the mask is already applied. It takes parameter of type **ApplyMaskFinishedEventArgs** with the following properties:

* **CaretPosition**: The position of the caret after the symbol was typed. It can be controlled to manually set the caret position.
* **IsAccepted**: Boolean property that indicates whether the symbol was accepted by the mask. It can be set to manually control the action.
* **NewDisplayedText**: The updated text of the **MaskedInput** control after the symbol is added.
* **NewInputValue**: The symbol that was typed.
* **OldDisplayedText**: The text of the **MaskedInput** before the symbol is added.
* **OldInputValue**: The previous input value. Returns empty string if such is not available. 

## Examples

#### ApplyMaskStarted example
<snippet id='maskedinput-features-events-applymaskstarted-csharp'/>
<snippet id='maskedinput-features-events-applymaskstarted-handler'/>

#### ApplyMaskFinished example

<snippet id='maskedinput-features-events-applymaskfinished-csharp'/>
<snippet id='maskedinput-features-events-applymaskfinished-handler'/>

>note You can find a working demo labeled **Events** in the MaskedInput/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}). 

## See Also

* [Getting Started]({% slug maskedinput-getting-started %})
* [Tokens]({% slug maskedinput-features-mask-tokens %})
* [Commands]({% slug maskedinput-features-mask-tokens %})