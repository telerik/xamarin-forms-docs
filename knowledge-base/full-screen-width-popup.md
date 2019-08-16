---
title: Full screen width Popup control
description: set the popup on 100% of the device screen width
type: how-to
page_title: RadPopup with 100% width
slug: popup-full-width-screen
position: 
tags: popup, fullscreen, xamarin, telerik ui for xamarin, XamarinForms, device
ticketid: 1411102
res_type: kb
---

## Environment
<table>
    <tbody>
	    <tr>
	    	<td>Product Version</td>
	    	<td>2019.2.513.1</td>
	    </tr>
	    <tr>
	    	<td>Product</td>
	    	<td>Popup for Xamarin</td>
	    </tr>
    </tbody>
</table>


## Description

This article shows how to create a full screen Popup control.

## Solution

The RadPopup control has a **PlacementTarget** property which defines an element relative to which the popup is positioned when it is open. For more information on this check [here](https://docs.telerik.com/devtools/xamarin/controls/popup/popup-key-features#placement-configuration).

In order to achieve 100% width you could attach it to the page (the relative element). For example:

```XAML
<ContentPage.Content>


    <Button HorizontalOptions="Center"
            VerticalOptions="Start"
            BackgroundColor="#7A9BFF"
            TextColor="White"
            Text="Show popup"
            Clicked="ShowPopup"
            x:Name="button"/>

</ContentPage.Content>
<telerikPrimitives:RadPopup.Popup>
    <telerikPrimitives:RadPopup x:Name="popup"
                                Placement="Center">
        <telerikPrimitives:RadBorder CornerRadius="6" 
                                        HeightRequest="500"
                                        BackgroundColor="#93D7FF"
                                        BorderColor="#7A9BFF"
                                        Padding="10">
            <Label Text="With Telerik Popup for Xamarin you could easily add modal popups to your application in order to draw attention to important information or receive user input." />
        </telerikPrimitives:RadBorder>
    </telerikPrimitives:RadPopup>
</telerikPrimitives:RadPopup.Popup>
```

And lets open the Popup when the button is Clicked:

```C#
private void ShowPopup(object sender, EventArgs e)
{
    popup.IsOpen = true;
}
```

When the popup is defined in XAML it should always be attached to an element (using RadPopup.Popup attached property) and this element is considered as its PlacementTarget. In the example above the placement target of the Popup is the page.
