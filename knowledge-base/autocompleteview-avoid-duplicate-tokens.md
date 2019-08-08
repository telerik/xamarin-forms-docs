---
title: How to avoid adding duplicate tokens to Tokens collection
description:  avoid selecting the same suggestion twice
type: how-to
page_title: How not to select duplicate items in AutoCompleteView
slug: autocompleteview-avoid-duplicate-tokens
position:
tags: autocompleteview, tokens, duplicates
ticketid: 1403830
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2019.1.318.1</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>AutoCompleteView for Xamarin</td>
	</tr>
</table>


## Description

What is the best way to avoid adding duplicate tokens to Tokens collection RadAutoCompleteView?

## Solution

You could use SuggestionItemSelected event to remove the item - this event is fired before the item is actually added to the Tokens collection, so, if you call directly in its handler the Remove method of the Tokens collection, it will remove the second time the item is added.  Here is a sample snippet:

```XAML
<telerikInput:RadAutoCompleteView x:Name="autoCompleteView"
            ImagePath="ImageSource"
            ItemsSource="{Binding Source}"
            TextSearchPath="Name"
            DisplayMode="Tokens"                               
            SuggestionItemSelected="AutoCompleteView_SuggestionItemSelected"/>
```

and the event handler:

```C#
private void AutoCompleteView_SuggestionItemSelected(object sender, Telerik.XamarinForms.Input.AutoComplete.SuggestionItemSelectedEventArgs e)
{
    autoCompleteView.Tokens.Remove(e.DataItem);
}
```