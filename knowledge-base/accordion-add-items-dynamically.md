---
title: Add Items Dynamically to Accordion control
description: How to add dynamically items to the accordion control
type: how-to
page_title: Add Items Dynamically to Accordion for Xamarin
slug: accordion-add-items-dynamically
position: 
tags: xamarin, accordion, items, dynamically
ticketid: 1507547
res_type: kb
---

## Environment

<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.1 216.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Accordion for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

The RadAccordion control supports adding multiple items dynamically. It provides `Children` property which is collection of `AccordionItem`.

The `AccrodionItem` class provides properties for customization some of them are: `Header`, `HeaderText`, `Content`, which you can use to create items for specific scenarios.

## Solution

Here is the Accorsion definition in XAML

```XAML
<StackLayout>
	<primitives:RadAccordion x:Name="Accordion"/>
	<Button Text="Add new item"
			Clicked="AddNewItem_Clicked" />
</StackLayout>
```

you will need to add the following namespace:

```XAML
xmlns:primitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
```

### Add Items Dynamically to Accordion control

We will use the a Button and on its Click event we will add the items:

1. Create an instance of AccordionItem.

2. Set its HeaderText and Content properties.

3. Add the item to the accordion Children collection by using accordion.Children.Add().

Here is the implementation inside the Button Click event

```C#
private void AddNewItem_Clicked(object sender, EventArgs e)
{
	Telerik.XamarinForms.Primitives.AccordionItem accordionItem = new Telerik.XamarinForms.Primitives.AccordionItem()
	{
		HeaderText = $"Item header {this.count}",
		Content = new Label() { Text = $"Item content {this.count}" }
	};

	this.Accordion.Children.Add(accordionItem);
	this.count++;
}
```