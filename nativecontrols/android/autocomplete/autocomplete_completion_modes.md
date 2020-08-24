---
title: Completion modes
page_title: RadAutoCompleteTextView Completion Modes | Telerik UI for Xamarin.Android Documentation
description: This page is dedicated to the Completion Modes provided by the RadAutoCompleteTextView control.
slug: autocomplete-completion-modes
tags: radautocompletetextview, completionmodes
position: 2
publish: true
---

## AutoComplete for Xamarin.Android: Completion modes

**RadAutoCompleteTextView** has two modes for filtering suggestions. 

- StartsWith
- Contains

The completion mode can be changed with the `CompletionMode` property of the AutoCompleteTextView's adapter (of type `AutoCompleteAdapter`). The default value is `CompletionMode.StartsWith`.


```C#
this.adapter.CompletionMode = CompletionMode.StartsWith;
```

## StartsWith Mode

In `CompletionMode.StartsWith` mode the autocomplete shows only suggestions that start with the typed phrase.

![TelerikUI-AutoComplete-Completion-Modes](images/autocomplete-starts-with.png "Starts with mode")

## Contains Mode

In `CompletionMode.Contains` mode the autocomplete shows only suggestions that contain the typed phrase.

`Contains Mode` is not intended to work with the `APPEND` and  `SUGGEST_APPEND` modes. Since both these modes append the rest of the suggestion to the typed text, the combination between these modes won't be helpful, it will be rather confusing. 

![TelerikUI-AutoComplete-Completion-Modes](images/autocomplete-contains.png "Contains mode")
