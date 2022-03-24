---
title: Button text with uppercase or lowercase
description: Dislay button text with uppercase or lowercase
type: how-to
page_title: Set button text to uppercase or lowercase
slug: button-text-uppercase-lowercase
position: 
tags: button, text, xamarin.forms, lowercase, uppercase
ticketid: 1539092
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
			<td>Button for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article shows how-to change the button text to be uppercase or lowercase on Android, iOs, UWP.

## Solution


Use the `TextTransform`(enum of type `Xamarin.Forms.TextTransform`): specifies the casing of the Button text: 

The values are:

* `None`: displays the text as defined in the Text porperty with the correct upper/lower case
* `Default`: the default text casing per platform.
* `Lowercase`: text with lowercase
* `Uppercase`: text with uppercase

## Example

```XAML
<telerikInput:RadButton x:Name="button" 
                        BorderWidth="2"
						TextTransform="None"
                        Text="Click me!"  
                        Clicked="button_Clicked"/>
```

* When `TextTransform="None"`, the text will be displayed as `Click me!` on all platforms.

* When `TextTransform="Default"`, 

	* On Android the text will be displayed as `CLICK ME!` on all platforms.
	* on iOS the text will be displayed as `Click me!`.
	* On UWP the text will be displayed as `Click me!`.

When `TextTransform="Lowercase"`, the text will be displayed as `click me!` on all platforms.

When `TextTransform="Uppecase"`, the text will be displayed as `CLICK ME!` on all platforms.