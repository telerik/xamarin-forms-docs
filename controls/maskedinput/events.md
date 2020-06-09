---
title: Events
page_title: Xamarin MaskedInput Documentation | Events
description: Check our &quot;Events&quot; documentation article for Telerik MaskedInput for Xamarin control.
position: 7
slug: maskedinput-features-events
---

# Events

The RadMaskedInput exposes the following events which can be utilized for additional control of the user's input:

* **ApplyMaskStarted**: Occurs when you type a symbol, before the mask is applied.
* **ApplyMaskFinished**: Occurs after you type a symbol, when the mask is already applied.

## ApplyMaskStarted

The event occurs when you type in a symbol in the **RadMaskedInput** and the mask is about to be applied. The event arguments are of type **ApplyMaskStartedEventArgs** and expose following properties:

* **NewDisplayedText**(*string*): The updated text of the **MaskedInput** control after the symbol is added.
* **NewInputValue**(*string*): The new **InputValue**(the whole string value that the mask contains).
* **OldDisplayedText**(*string*): The text of the **MaskedInput** before the symbol is added.
* **OldInputValue**(*string*): The previous input value. Returns empty string if such is not available. 

## ApplyMaskFinished

The event occurs when the mask is already applied. The event arguments are of type **ApplyMaskFinishedEventArgs** and expose the following properties:

* **CaretPosition**(*int*): The position of the caret after the symbol was typed. It can be controlled to manually set the caret position.
* **IsAccepted**(*bool*): Boolean property that indicates whether the symbol was accepted by the mask. It can be set to manually control the action.
* **NewDisplayedText**(*string*): The updated text of the **MaskedInput** control after the symbol is added.
* **NewInputValue**(*string*): The new **InputValue**(the whole string value that the mask contains).
* **OldDisplayedText**(*string*): The text of the **MaskedInput** before the symbol is added.
* **OldInputValue**(*string*): The previous input value. Returns empty string if such is not available. 

## Example

### ApplyMaskStarted example

Here is a sample definition of the RadMaskedInput control

```XAML
<StackLayout Margin="16">
    <Label Text="The default C token allows x to be input. Using event we reject x from input."/>
    <telerikInput:RadMaskedInput x:Name="input" Mask="CC (00)" Placeholder="#" />
</StackLayout>
```

In addition to this you will need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

then attach the event handler to the MaskedInput control:

<snippet id='maskedinput-features-events-applymaskstarted-csharp'/>

and here is a sample implementation of the handler:

<snippet id='maskedinput-features-events-applymaskstarted-handler'/>

### ApplyMaskFinished example

Here is a sample definition of the RadMaskedInput control

```XAML
<StackLayout Margin="16">
    <Label Text="The default C token allows x to be input. Using event we reject x from input."/>
    <telerikInput:RadMaskedInput x:Name="input" Mask="CC (00)" Placeholder="#" />
</StackLayout>
```

In addition to this you will need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

then attach the event handler to the MaskedInput control:

<snippet id='maskedinput-features-events-applymaskfinished-csharp'/>

and here is a sample implementation of the handler:

<snippet id='maskedinput-features-events-applymaskfinished-handler'/>

>note You can find a working demo labeled **Events** in the MaskedInput/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}). 

## See Also

* [Getting Started]({% slug maskedinput-getting-started %})
* [Tokens]({% slug maskedinput-features-mask-tokens %})
* [Commands]({% slug maskedinput-features-mask-tokens %})