---
title: How to have Button with border and border radius
description: create button with border and border radius
type: how-to
page_title: How to have Button with border and border radius
slug: button-with-border-and-borderradius
position: 
tags: button, xamarin, border, corner, border, radius, xamarinforms, mobile
ticketid: 
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

This article shows how to have Button with border width and border radius

## Border Radius

Here is an example how to have button with border and use border radius:

```XAML
<Grid VerticalOptions="Center" HorizontalOptions="CenterAndExpand">
    <telerikInput:RadButton WidthRequest="54"
                            HeightRequest="54"
                            BorderWidth="10"
                            BorderRadius="10"
                            BorderColor="DarkRed"
                            BackgroundColor="LightCoral"/>
</Grid>
```

## Corner Radius

Here is an example how to have button with border and use corner radius:

```XAML
<Grid VerticalOptions="Center" HorizontalOptions="CenterAndExpand">
    <telerikInput:RadButton CornerRadius="10"
                            WidthRequest="54"
                            HeightRequest="54"
                            BorderWidth="10"
                            BorderColor="DarkRed"
                            BackgroundColor="LightCoral"/>
</Grid>
```