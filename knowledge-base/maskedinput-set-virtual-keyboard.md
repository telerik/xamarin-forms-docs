---
title: How to implement keyboard support in RadMaskedInput
description: How to set the virtual keyboard to the Xamarin MaskedInput control
type: how-to
page_title: Set numeric keyboard to MaskedInput through renderers on Android and iOS
slug: maskedinput-set-virtual-keyboard
position: 
tags: maskedinput, keyboard
ticketid: 1497050
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>R3 2020</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>MaskedInput for Xamarin.Forms</td>
		</tr>
	</tbody>
</table>


## Description

Currently RadMaskedInput does not provide Keyboard property, so users can define the virtual keyboard type.  Still, this can be implemented through custom renderers on Android and iOS.  The sample renderers below show how to define numeric virtual keyboard for the MaskedInput control.

## Solution

* Here is the solution on Android (replace "XamarinSampleApp" with the namespace used in your app):

```C#
using Android.Content;
using Telerik.XamarinForms.Input;
using Telerik.XamarinForms.InputRenderer.Android;
using Xamarin.Forms.Platform.Android;
using XamarinSampleApp.Droid;

[assembly: Xamarin.Forms.ExportRenderer(typeof(MaskedInputElement), typeof(MyCustomMaskRenderer))]
namespace XamarinSampleApp.Droid
{
    public class MyCustomMaskRenderer : MaskedInputRenderer
    {
        public MyCustomMaskRenderer(Context context) : base(context)
        { 
        }
        protected override void OnElementChanged(ElementChangedEventArgs<MaskedInputElement> e)
        {
            base.OnElementChanged(e);
            var inputType = this.Control.InputType;
            this.Control.SetRawInputType(Android.Text.InputTypes.ClassNumber);
        }
    }
}
```

* And the custom renderer on iOS (replace "XamarinSampleApp" with the namespace used in your app):

```C#
using UIKit;
using Telerik.XamarinForms.Input;
using Telerik.XamarinForms.InputRenderer.iOS;
using Xamarin.Forms.Platform.iOS;
using XamarinSampleApp.iOS;

[assembly: Xamarin.Forms.ExportRenderer(typeof(MaskedInputElement), typeof(MyCustomMaskRenderer))]
namespace XamarinSampleApp.iOS
{
    public class MyCustomMaskRenderer : MaskedInputRenderer
    {
        protected override void OnElementChanged(ElementChangedEventArgs<MaskedInputElement> e)
        {
            base.OnElementChanged(e);
            this.Control.KeyboardType = UIKeyboardType.DecimalPad;
        }
    }
}
```
