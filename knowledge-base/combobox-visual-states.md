---
title: How can I change Text color for Disabled ComboBox in Xamarin Forms?
description: How to customize the ComboBox according to its state - Normal, Focused or Disabled
type: how-to
page_title: Set TextColor of the ComboBox when disabled
slug: combobox-visual-states 
tags: ComboBox, Disabled, TextColor
ticketid: 1572377
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>R2 2022</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>ComboBox for Xamarin</td>
		</tr>
	</tbody>
</table>

## Description

I want to maintain the text color as black on a Disabled Combobox instead of the default color. How can I achieve it?

## Solution

RadComboBox provides a few useful styling properties, such as `TextColor`, `PlaceholderColor`, `BackgroundColor` and more. You can easily change them through the VisualStateManager for different visual states of the control. ComboBox has the following visual states: "Normal", "Focused" and "Disabled".

Here is a quick example how to set TexColor according to the control's current visual state:

```XAML
<telerikInput:RadComboBox x:Name="comboBox" 
						  IsEnabled="False" 
						  SelectedIndex="3">
    <VisualStateManager.VisualStateGroups>
        <VisualStateGroup x:Name="CommonStates">
            <VisualState x:Name="Normal">
                <VisualState.Setters>
                    <Setter Property="TextColor" Value="Blue" />
                </VisualState.Setters>
            </VisualState>
            <VisualState x:Name="Focused">
                <VisualState.Setters>
                    <Setter Property="TextColor" Value="Red" />
                </VisualState.Setters>
            </VisualState>
            <VisualState x:Name="Disabled">
                <VisualState.Setters>
                    <Setter Property="TextColor" Value="Black" />
                </VisualState.Setters>
            </VisualState>
        </VisualStateGroup>
    </VisualStateManager.VisualStateGroups>
    <telerikInput:RadComboBox.ItemsSource>
        <x:Array Type="{x:Type x:String}">
            <x:String>USA</x:String>
            <x:String>Uganda</x:String>
            <x:String>Ukraine</x:String>
            <x:String>Canada</x:String>
            <x:String>France</x:String>
            <x:String>Italy</x:String>
            <x:String>United Kingdom</x:String>
            <x:String>China</x:String>
            <x:String>Japan</x:String>
        </x:Array>
    </telerikInput:RadComboBox.ItemsSource>
</telerikInput:RadComboBox>
```

## See Also

- [ComboBox Styling]({%slug combobox-styling%})