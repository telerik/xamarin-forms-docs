---
title: Events
page_title: Events
position: 6
slug: maskedinput-features-events
---

# Events

The RadMaskedInput exposes the following events which can be utilized for additional control of the user's input:

* **ApplyMaskStarted**: Occurs when you type a symbol, before the mask is applied.
* **ApplyMaskFinished**: Occurs after you type a symbol, when the mask is already applied.

### ApplyMaskStarted

The event occurs when you type in a symbol in the **RadMaskedInput** and the mask is about to be applied. The event arguments are of type **ApplyMaskStartedEventArgs** and expose following properties:

* **NewDisplayedText**: The updated text of the **MaskedInput** control after the symbol is added.
* **NewInputValue**: The new **InputValue**(the whole string value that the mask contains).
* **OldDisplayedText**: The text of the **MaskedInput** before the symbol is added.
* **OldInputValue**: The previous input value. Returns empty string if such is not available. 

### ApplyMaskFinished

The event occurs when the mask is already applied. The event arguments are of type **ApplyMaskFinishedEventArgs** and expose the following properties:

* **CaretPosition**: The position of the caret after the symbol was typed. It can be controlled to manually set the caret position.
* **IsAccepted**: Boolean property that indicates whether the symbol was accepted by the mask. It can be set to manually control the action.
* **NewDisplayedText**: The updated text of the **MaskedInput** control after the symbol is added.
* **NewInputValue**: The new **InputValue**(the whole string value that the mask contains).
* **OldDisplayedText**: The text of the **MaskedInput** before the symbol is added.
* **OldInputValue**: The previous input value. Returns empty string if such is not available. 

## Examples

#### ApplyMaskStarted example
Attaching the event handler:
<snippet id='maskedinput-features-events-applymaskstarted-csharp'/>

The Handler implementation:
<snippet id='maskedinput-features-events-applymaskstarted-handler'/>

#### ApplyMaskFinished example

Attaching the event handler:
<snippet id='maskedinput-features-events-applymaskfinished-csharp'/>

The Handler implementation:
<snippet id='maskedinput-features-events-applymaskfinished-handler'/>

>note You can find a working demo labeled **Events** in the MaskedInput/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}). 

## See Also

* [Getting Started]({% slug maskedinput-getting-started %})
* [Tokens]({% slug maskedinput-features-mask-tokens %})
* [Commands]({% slug maskedinput-features-mask-tokens %})