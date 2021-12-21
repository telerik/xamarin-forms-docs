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

## See Also

- [Configure the Signature]({% slug signaturepad-configuration%})
- [Commands]({% slug signaturepad-commands%})
- [Save Signature]({% slug signaturepad-saving-options%})