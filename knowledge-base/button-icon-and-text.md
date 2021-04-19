---
title: Add icons and text inside Button for Xamarin
description: how to use both icon and text in RadButton for Xamarin
type: how-to
page_title: Using icons and text in Xamarin Button
slug: button-icon-and-text
position: 
tags: button, xamarin, text, icon, position, layout
ticketid: 1514206
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.1.224.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>DataForm for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article will show you how to add text and icon inside the button. 

## Solution

1. Based on the [Xamarin.Forms Button.ContentLayout porperty](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.button.contentlayout?view=xamarin-forms) documentation -> the property allows us to control the position of the button image and the spacing between the button's image and the button's text.

2. We will use this porperty to position the text and the icon inside the Button. 

3. But how we can add both text and icon inside the button. There is a solution. We will use the [FontImageSource](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.fontimagesource?view=xamarin-forms). 

4. For the example we will use the Telerik RadButton control. The control inherits from Xamarin.Forms Button control.

## Example

We will add icon using the [Telerik Font icons](https://docs.telerik.com/devtools/xamarin/styling-and-appearance/telerik-font-icons)

1. Include [telerikfontexamples.ttf](https://github.com/telerik/telerik-xamarin-forms-samples/blob/master/QSF/QSF.Android/Assets/Fonts/telerikfontexamples.ttf) file into your application in the following locations:

	* Android project: Create Fonts folder inside the Android Assets and add the .ttf file there.

	* iOS project: Create Fonts folder inside the iOS Resources and add the .ttf file there.
	
	* UWP project: Create Fonts folder inside the UWP Assets and add the .ttf file there.

2. Register the icon and the font inside the App.xaml file

```XAML
<x:String x:Key="InfoIconText">&#xE815;</x:String>


<OnPlatform x:Key="IconsFont" x:TypeArguments="x:String">
	<On Platform="iOS">telerikfontexamples</On>
	<On Platform="Android">Fonts/telerikfontexamples.ttf#telerikfontexamples</On>
	<On Platform="UWP">/Assets/Fonts/telerikfontexamples.ttf#telerikfontexamples</On>
</OnPlatform>
```

Add Telerik Button and FontImageSource to the Button

```XAML
<telerikInput:RadButton Text="My Button" 
                        ContentLayout="Left,10">
    <telerikInput:RadButton.ImageSource>
        <FontImageSource Glyph="{StaticResource InfoIconText}"
						 Color="Blue"
						 FontFamily="{StaticResource IconsFont}"/>
    </telerikInput:RadButton.ImageSource>
</telerikInput:RadButton>
```

add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```