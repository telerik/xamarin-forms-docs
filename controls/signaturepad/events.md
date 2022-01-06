---
title: Events
page_title: Xamarin SignaturePad Documentation | Events
description: Check our &quot;Getting Started&quot; documentation article for Telerik SignaturePad for Xamarin control.
position: 0
tags: sing pad, signature, xamarin, xamarin.forms, pad, signature pad
slug: signaturepad-events
---

# Events

The SignaturePad for Xamarin exposes the following events: 

* `StrokeStarted` event is raised when a new stroke is started. The `StrokeStarted` event handler receives two parameters: 
	The `Sender` which is of type `Telerik.XamarinForms.Input.SignatureView`. 
	and `EventArgs` 

* `StrokeCompleted` event is raised when a new stroke is completed. The `StrokeCompleted` event handler receives two parameters:
	The `Sender` which is of type `Telerik.XamarinForms.Input.SignatureView`. 
	and `EventArgs` 

* `Cleared` event is raised when the surface of Telerik.XamarinForms.Input.RadSignaturePad is cleared

## Example

1. Here is a sample example using the above events. The definition in XAML: 

<snippet id='signaturepad-events'/>

The example contains a **X** Button, two Labels and a SignaturePad.

Add the following namespace:

<snippet id='xmlns-telerikinput'/>

Let's add the events:

1. The `SignaturePad.StrokeStarted` event:

<snippet id='signaturepad-strokestarted-event'/>

When stroke starts a timestamp  is displayed.

1. The `SignaturePad.StrokeCompleted` event:

<snippet id='signaturepad-strokecompleted-event'/>

When stroke complets the timespamp text is udated.
 
1. The `SignaturePad.Cleared` event: 

<snippet id='signaturepad-cleared-event'/>

When `Cleared` event is fired, Label with `Text="Cleared"` is displayed.

![SignaturePad Events](images/signatrue-events.gif)

## See Also

- [Configure the Signature]({% slug signaturepad-configuration%})
- [Commands]({% slug signaturepad-commands%})
- [Save Signature]({% slug signaturepad-saving-options%})