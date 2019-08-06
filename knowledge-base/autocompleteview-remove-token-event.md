---
title: Event raised when selected tokens are removed through clear button in AutoCompleteView
description: Which event is fired when the user presses the X on the AutoCompleteView control
type: how-to
page_title: How to get item / token removed from AutoCompleteView by clicking cross
slug: autocompleteview-remove-token-event
tags: autocompleteview, autocomplete, tokens, clear, event
ticketid: 1362486, 1176309
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2018.3.1109.1</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>AutoCompleteView for Xamarin</td>
	</tr>
</table>


## Description

This article shows which event you could handle when the end user removes any of the selected in RadAutoCompleteView tokens by tapping on the clear button. 

## Solution

You would need to subscribe to the CollectionChanged event of the Tokens collection of the AutoCompleteView control. Here is a quick snippet which demonstrates the approach:

```C#
autoCompleteView.Tokens.CollectionChanged += TokensCollectionChanged;
```

and the TokensCollectionChanged event handler:

```C#
private void TokensCollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
{
	var removedTokens = e.OldItems;        
}
```

Through the *NotifyCollectionChangedEventArgs* you could find the added/removed items from the collection.
