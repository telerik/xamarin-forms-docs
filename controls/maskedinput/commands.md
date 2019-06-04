---
title: Commands
page_title: Commands
position: 5
slug: maskedinput-features-commands
---

# Commands

Apart from utilizing the Events that the control exposes for modeling the user input, you can also achieve this by utilizing the commands mechanism which is the preferred approach in a MVVM setup.

>important When using commands, you should inherit the **MaskedInputCommandBase** class and explicitly set the ID of your command to one of the available within the **MaskedInputCommandID** enum. 

### ApplyMaskStarted Command

In case you would like to add some logic through a command when applying the mask has started, you need to set the ID of your command to **MaskedInputcommandId.ApplyMaskStarted**. Eventually, the parameter that you will receive in the Execute method will be of type **ApplyMaskStartedCommandContext**. It exposes the following properties, which are identical to those of the **ApplyMaskStartedEventArgs**:

* **NewDisplayedText**: The updated text of the **MaskedInput** control after the symbol is added.
* **NewInputValue**: The new **InputValue**(the whole string value that the mask contains).
* **OldDisplayedText**: The text of the **MaskedInput** before the symbol is added.
* **OldInputValue**: The previous input value. Returns empty string if such is not available. 

Here is an example of a command that is invoked on ApplyMaskStarted:

<snippet id='maskedinput-features-commands-applymaskstarted-implementation'/> 

You should also make sure that the command is added in the **Commands** collection of the **RadMaskedInput** instance:

<snippet id='maskedinput-features-commands-applymaskstarted-added'/> 

### ApplyMaskFinished Command

Similar to the ApplyMaskStarted Command, you can create a command that is executed when applying the mask has finished. In this case, you need to set the ID of your command to **MaskedInputcommandId.ApplyMaskFinished** The parameter that you will receive in the Execute method will then be of type **ApplyMaskFinishedCommandContext**. Identically to **ApplyMaskFinishedEventArgs**, it has the following properties:

* **CaretPosition**: The position of the caret after the symbol was typed. It can be controlled to manually set the caret position.
* **IsAccepted**: Boolean property that indicates whether the symbol was accepted by the mask. It can be set to manually control the action.
* **NewDisplayedText**: The updated text of the **MaskedInput** control after the symbol is added.
* **NewInputValue**: The new **InputValue**(the whole string value that the mask contains).
* **OldDisplayedText**: The text of the **MaskedInput** before the symbol is added.
* **OldInputValue**: The previous input value. Returns empty string if such is not available. 

Here is an example of a command that is invoked on ApplyMaskFinished:

<snippet id='maskedinput-features-commands-applymaskfinished-implementation'/> 

Once again, make sure that the command is added to the Commands collection of the RadMaskedInput control:

<snippet id='maskedinput-features-commands-applymaskfinished-added'/>

>note You can find a working demo in the MaskedInput/Features/Commands folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}). 

## See Also

* [Getting Started]({% slug maskedinput-getting-started %})
* [Tokens]({% slug maskedinput-features-mask-tokens %})
* [Events]({% slug maskedinput-features-events %})