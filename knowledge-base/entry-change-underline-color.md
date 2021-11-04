---
title: Change Entry Underline Color when on focus
description: how to change the entry underline color on android
type: how-to
page_title: Change Entry underline color when on focus
slug: entry-chnage-underline-color
position: 
tags: entry, underline color, android, xamarin, xamarin.forms
ticketid: 1541339
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.3.915.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Entry for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article shows how to change the Entry underline color on Android when the control receives focus.

## Solution

You will need a Custom Renderer for Android. 

1. Entry definition: 

```XAML
<StackLayout>
	<input:RadEntry WatermarkText="Telerik Entry"/>
</StackLayout>
```

2. Create a Custom Renderer on Android. Class CustomEntryRenderer which inherits from EntryRenderer. 

In oder to change the underline color override the `OnElementChanged` method and inside it set color to the `BackgroundTintList` property:

```C#
using Android.Content;
using Android.Content.Res;
using Android.Graphics.Drawables;
using Android.Runtime;
using Android.Text;
using Android.Widget;
using ListPicker.Droid;
using Telerik.XamarinForms.Input;
using Telerik.XamarinForms.InputRenderer.Android;
using Xamarin.Forms;

[assembly: ExportRenderer(typeof(RadEntry), typeof(CustomEntryRenderer))]

namespace ListPicker.Droid
{
    public class CustomEntryRenderer : EntryRenderer
    {
        public CustomEntryRenderer(Context context) : base (context)
        {

        }

        protected override void OnElementChanged(Xamarin.Forms.Platform.Android.ElementChangedEventArgs<RadEntry> e)
        {
            base.OnElementChanged(e);

            if (this.Control != null)
            {
                this.Control.BackgroundTintList = ColorStateList.ValueOf(Android.Graphics.Color.Blue);
            }
        }
    }
}
```