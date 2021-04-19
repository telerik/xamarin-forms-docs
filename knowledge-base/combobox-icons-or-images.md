---
title: icons or images in combo box
description: how to add icons or images inside ComboBox for Xamarin
type: how-to
page_title: Add icons and images inside ComboBox for Xamarin
slug: combobox-icons-or-images
position: 
tags: image, icon, combobox, xamarin, xamarin.forms
ticketid: 1515407
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.1.325.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>ComboBox for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

In case you don't want to display text, but you want to allow usest to pick an image or icon from the ComboBox control, this article will show you how to achieve this.

## Add images inside ComboBox for Xamarin

1. Add the images inside each platform project, Android, iOs, UWP

2. Create a ViewModel and busness model

```C#
public class City
{
	public string ComboImage { get; set; }
}
public class ViewModel
{
	public ViewModel()
	{
		this.Images = new ObservableCollection<City>
		{
			new City{ ComboImage = "Arrows.png"},
			new City{ ComboImage = "Number.png"},
			new City{ ComboImage = "Section.png"},
		};
	}

	public ObservableCollection<City> Images { get; set; }
}
```

3. Then define the ComboBox in XAML. Don't fordet to add the Item and Selecteditem templates

```XAML
<telerikInput:RadComboBox ItemsSource="{Binding Images}" 
						  DisplayMemberPath="ComboImage"
						  HeightRequest="50"
						  Placeholder="Select Image">
	<telerikInput:RadComboBox.ItemTemplate>
		<DataTemplate>
			<StackLayout>
				<Image Source="{Binding ComboImage}" />
			</StackLayout>
		</DataTemplate>
	</telerikInput:RadComboBox.ItemTemplate>
	<telerikInput:RadComboBox.SelectedItemTemplate>
		<DataTemplate>
			<StackLayout>
				<Image Source="{Binding ComboImage}"/>
			</StackLayout>
		</DataTemplate>
	</telerikInput:RadComboBox.SelectedItemTemplate>
</telerikInput:RadComboBox>
```

## Add icons inside ComboBox for Xamarin


1. Add the icons

2. Create a ViewModel and busness model

```C#
public class City
{
	public string Name { get; set; }
}
public class ViewModel
{
	public ViewModel()
	{
		this.Items = new ObservableCollection<City>
		{
			new City { Name = "\uE818" },
			new City { Name = "\uE856"},
			new City { Name = "\uE855"},
		};
	}

	public ObservableCollection<City> Items { get; set; }
}
```

3. Then define the ComboBox in XAML. Don't fordet to add the Item and Selecteditem templates and include the FontFamily. Also, add the FontFamily to the ComboBox control.

```XAML
<telerikInput:RadComboBox ItemsSource="{Binding Items}" 
						  BackgroundColor="Yellow"
						  DisplayMemberPath="Name"
						  FontFamily="{StaticResource IconsFont}"
						  Placeholder="Select Icon">
	<telerikInput:RadComboBox.ItemTemplate>
		<DataTemplate>
			<StackLayout>
				<Label Text="{Binding Name}" 
					   VerticalTextAlignment="Center"
					   HorizontalTextAlignment="Center"
					   HeightRequest="30"
					   FontFamily="{StaticResource IconsFont}"
					   FontSize="20"/>
			</StackLayout>
		</DataTemplate>
	</telerikInput:RadComboBox.ItemTemplate>
	<telerikInput:RadComboBox.SelectedItemTemplate>
		<DataTemplate>
			<StackLayout>
				<Label Text="{Binding Name}" 
					   VerticalTextAlignment="Center"
					   HorizontalTextAlignment="Center"
					   HeightRequest="30"
					   FontFamily="{StaticResource IconsFont}"
					   FontSize="20"/>
			</StackLayout>
		</DataTemplate>
	</telerikInput:RadComboBox.SelectedItemTemplate>
</telerikInput:RadComboBox>
```

>note for adding icons, I have used the [TelerikFont icons](https://docs.telerik.com/devtools/xamarin/styling-and-appearance/telerik-font-icons)