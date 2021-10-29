---
title: Popup placement center 
description: how to position the popup in the center of the page
type: how-to
page_title: position popup in the center of the page
slug: popup-position-center
position: 
tags: 
ticketid: 1454630
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.1 218.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Popup for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

Thi article shows how to positiont he popup in the center of the page

## Solution

The popup could be attached to the page or contentview. In addition the popup placement target must be the page or the contentview.

Here is an example how to set Popup Placement Target to be the page:

```XAML
<ContentPage xmlns="http://xamarin.com/schemas/2014/forms"
             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
             xmlns:d="http://xamarin.com/schemas/2014/forms/design"
             xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
             xmlns:local="clr-namespace:TestProject"
             xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
             x:Class="TestProject.MainPage">

    <StackLayout Margin="0, 40, 0, 0">
        <Button Text="Open Popup" Clicked="Button_Clicked"/>
    </StackLayout>
	
	<!-- the popup is attached to the page -->
    <telerikPrimitives:RadPopup.Popup>
        <telerikPrimitives:RadPopup x:Name="popup"
                                    Placement="Center">
                <telerikPrimitives:RadBorder CornerRadius="8"
                                     BackgroundColor="#93D7FF" 
                                     WidthRequest="250" 
                                     Padding="10">
                    <Grid>
                        <Grid.RowDefinitions>
                            <RowDefinition Height="30" />
                            <RowDefinition Height="50" />
                            <RowDefinition Height="30" />
                        </Grid.RowDefinitions>
                        <Label Text="ACCEPT TERMS" />
                        <Label Grid.Row="1"
                       Text="By checking this, you agree to the Terms of Service and Privacy Policy." />
                        <Button Grid.Row="2"
                        Padding="2" 
                        HorizontalOptions="Start" 
                        Text="Agree &amp; Continue" 
                        Clicked="Button_Clicked_1" 
                        CornerRadius="6"
                        BackgroundColor="#7A9BFF"
                        TextColor="White"/>
                    </Grid>
                </telerikPrimitives:RadBorder>
        </telerikPrimitives:RadPopup>
    </telerikPrimitives:RadPopup.Popup>
</ContentPage>
```

and the code for opening the popup:

```C#
private void Button_Clicked(object sender, EventArgs e)
{
    this.popup.IsOpen = true;
}
```


the code for closing the popup:

```C#
private void Button_Clicked1(object sender, EventArgs e)
{
    this.popup.IsOpen = false;
}
```