---
title: Display modes
page_title: RadAutoCompleteTextView Display Modes | Telerik UI for Xamarin.Android Documentation
description: This page is dedicated to the Display Modes provided by the RadAutoCompleteTextView control.
slug: autocomplete-display-modes
tags: radautocompletetextview, displaymodes
position: 3
publish: true
---

## AutoComplete for Xamarin.Android: Display Modes

**RadAutoCompleteTextView** has two predefined display modes.

- Plain
- Tokens

Display mode can be changed with the `DisplayMode` property of the **RadAutoCompleteTextView**. The default value is `DisplayMode.Plain`.

```C#
this.autocomplete.DisplayMode = DisplayMode.Tokens;
```

## Plain mode

In plain mode **RadAutoCompleteTextView** displays chosen item as plain text. When this mode only one item can be chosen.

![TelerikUI-AutoComplete-Display-Modes](images/autocomplete-plain.png "Plain mode")

## Tokens mode

Tokens mode allows multiple choice of items. Chosen items are displayed as tokens which can be modified or completely changed with custom ones.

![TelerikUI-AutoComplete-Display-Modes](images/autocomplete-tokens.png "Tokens mode")

When **RadAutoCompleteTextView** is working in DisplayMode.Tokens, you can apply two different behaviors for token arrangement.

- Wrap
- Horizontal

The layout mode of the tokens can be changed with the `LayoutMode` property of the **RadAutoCompleteTextView**. The default value is `DisplayMode.Wrap`.

```C#
this.autocomplete.TokensLayoutMode = LayoutMode.Horizontal;
```

## Wrap layout

In wrap mode tokens are arranged on multiple lines. Every  time a new line is started the **RadAutoCompleteTextView** is expanding in order to show all tokens. When expand limit is reached the **RadAutoCompleteTextView** stops expanding and allows only scrolling. The expand limit can be set with the `MaximumWrapHeight` property of the autocomplete. Default value is three times the initial height of the **RadAutoCompleteTextView**.

![TelerikUI-AutoComplete-Display-Modes](images/autocomplete-wrap.png "Wrap layout")

## Horizontal layout

In horizontal layout tokens are displayed on single line which can be scrolled horizontally in order to display all tokens.

![TelerikUI-AutoComplete-Display-Modes](images/autocomplete-horizontal.png "Horizontal layout")