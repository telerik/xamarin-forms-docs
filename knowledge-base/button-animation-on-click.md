---
title: Button Animation on Click
description: Change Button Background Color with Animation on Button Click
type: how-to
page_title: Animation on Button Click
slug: button-animation-on-click
position: 
tags: button, animation, change background color, xamarin, xamarin.forms
ticketid: 1541630
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

This article shows how to change the Telerik UI for Xamarin Button background color using animation on a Button Click event.

## Solution

Button definition in XAML:

```XAML
 <StackLayout>
        <telerikInput:RadButton Clicked="button_Clicked" x:Name="btn" Text="Click me"/>
</StackLayout>
```

and the custom code inside the Button Click Event Handler:

```C#
private async void button_Clicked(object sender, EventArgs e)
{
    StartAnimationToChangeBackgroundColor();
}

private async void StartAnimationToChangeBackgroundColor()
{
    await Task.Delay(200);
    await btn.FadeTo(0, 250);
    await Task.Delay(200);
    await btn.FadeTo(1, 250);
}
```
