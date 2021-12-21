---
title: Commands
page_title: Xamarin SignaturePad Documentation | Commands
description: Check our &quot;Commands&quot; documentation article for Telerik SignaturePad for Xamarin control.
position: 0
tags: sing pad, signature, xamarin, xamarin.forms, pad, signature pad
slug: signaturepad-commands
---

# Commands

SignaturePad exposes a `ClearCommand`(`ICommand`) for clearing the signature. 

```XAML
<Grid RowDefinitions="Auto,*">
    <Button Text="Clear the signature" 
            Command="{Binding ClearCommand, Source={x:Reference signaturePad}}"/>
    <telerikInput:RadSignaturePad x:Name="signaturePad" 
                                  Grid.Row="1"
                                  BorderThickness="1" 
                                  BorderColor="LightGray" />
</Grid>
```

And the namespace: 

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

This is the resut: 



## See Also

- [Signature Configuration]({% slug shadow-key-features%})
- [Events]({% slug signaturepad-events%})
- [Saving Options]({% slug signaturepad-saving-options%})