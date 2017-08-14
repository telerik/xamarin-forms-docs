---
title: Suggest modes
page_title: RadAutoCompleteTextView Suggest Modes | Telerik UI for Xamarin.Android Documentation
description: This page is dedicated to the Suggest Modes provided by the RadAutoCompleteTextView control.
slug: autocomplete-suggest-modes
tags: radautocompletetextview, suggestmodes
position: 4
publish: true
---

#RadAutoCompleteTextView: Suggest modes

**RadAutoCompleteTextView** has three different modes for providing suggestions. 

- Suggest
- Append
- Suggest-Append

The suggest mode can be changed with the `setSuggestionMode` method of the TKAutoCompleteTextView. The default value is `SuggestMode.SUGGEST`.


```C#
this.autocomplete.SuggestMode = SuggestMode.Suggest;
```

##Suggest Mode

In `SuggestMode.SUGGEST` mode the autocomplete represents the filtered suggestions, matching the typed text, in a pop-up view, which contains list of the suggestions.

![TelerikUI-AutoComplete-Suggest-Modes](images/autocomplete-suggest-mode.png "Suggest mode")

##Append Mode
In `SuggestMode.APPEND` mode the autocomplete shows only the first suggestion matching the typed text, which is represented as direct suffix of the typed text.

![TelerikUI-AutoComplete-Completion-Modes](images/autocomplete-append.png "Append mode")

##Suggest-Append Mode
In `SuggestMode.SUGGEST_APPEND` mode the autocomplete combines both upper-mentioned modes. It shows all matching suggestions in a pop-up view and the first of them is appened to the typed text.

![TelerikUI-AutoComplete-Completion-Modes](images/autocomplete-suggest-append.png "Suggest-Append mode")