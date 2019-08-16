---
title: How to align image and text to the RadButton
description: aligh image and text inside button
type: how-to
page_title: How to add image and text to the RadButton
slug: button-image-and-text
position: 
tags: button, xamarin, image, text, align, XamarinForms
ticketid: 1424187
res_type: kb
---

## Environment

<table>
    <tbody>
	    <tr>
	    	<td>Product Version</td>
	    	<td>2019.2.802.1</td>
	    </tr>
	    <tr>
	    	<td>Product</td>
	    	<td>Button for Xamarin Cross-Platform</td>
	    </tr>
    </tbody>
</table>

## Description

This article shows how to add image and text to Button and how to align them.

## Solution

RadButton inherits from the Xamarin.Forms Button, so in order to align image and text inside the RadButton control you should use the **ContentLayout** property of the Button.

- **ContentLayout** Defines an object that controls the position of the button image and the spacing between the button's image and the button's text. For more details - check the [Xamarin.Forms API Reference](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.button.contentlayout?view=xamarin-forms).

## Example

```XAML
<telerikInput:RadButton x:Name="rb"
                        Text="Text"
                        Image="image.png"
                        ContentLayout="top,10"/>
```

where the image is positioned on the *top* of the button and the spacing between the button's image and button's text is *10*.
