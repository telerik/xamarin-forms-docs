---
title: Getting Started
page_title: RadAutoCompleteTextView Getting Started | Telerik UI for Xamarin.Android Documentation
description: A getting started page for RadAutoCompleteTextView for Android. This article explains what are the steps to create a RadAutoCompleteTextView instance from scratch.
slug: autocomplete-gettingstarted
tags: radautocompletetextview, gettingstarted, autocomplete, list
position: 1
publish: true
---

## AutoComplete for Xamarin.Android: Getting Started

In this article you will learn how to initialize **RadAutoCompleteTextView** and use it with its basic configuration. 

## Initialization

In order to use **RadAutoCompleteTextView** you need to add references to the **Input**, **Common**, **List** and **Primitives** libraries which are part of Telerik UI for Xamarin.Android suite.

After your project is set up and ready to use TelerikUI, you need to create an instance of **RadAutoCompleteTextView**. The common way to do this is to create an RauAutoCompleteTextView in the XML layout of your activity.

```XML
<com.telerik.widget.autocomplete.RadAutoCompleteTextView
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:layout_marginBottom="20dp"
    android:id="@+id/autocmp">
</com.telerik.widget.autocomplete.RadAutoCompleteTextView>
```

Then you should access the autocomplete object in your activity/fragment and populate it with data.

```C#
this.autocomplete = (RadAutoCompleteTextView)rootView.FindViewById(Resource.Id.autocmp);
```

## Populate with data

In order to populate the autocomplete you need to create an `AutoCompleteAdapter` object and pass it the array of suggestions which should be `TokenModel` objects. The `TokenModel` is a unified object used by the autocomplete to represent data objects as suggestions or tokens.

We will use the following list of string for the purposes of the examples.

```C#
this.data = new List<string>() { "Australia", "Albania","Austria", "Argentina", "Maldives",
							"Bulgaria","Belgium","Cyprus","Italy","Japan",
                            "Denmark","Finland","France","Germany","Greece","Hungary","Ireland",
                            "Latvia","Luxembourg","Macedonia","Moldova","Monaco","Netherlands","Norway",
                            "Poland","Romania","Russia","Sweden","Slovenia","Slovakia","Turkey","Ukraine",
                            "Vatican City", "Chad", "China", "Chile" };
```

Then we will create TokenModel object out of the original data array.

```C#
private List<TokenModel> GetTokenObjects()
{
    List<TokenModel> feedData = new List<TokenModel>();
    for (int i = 0; i < this.data.Count; i++)
    {
        TokenModel token = new TokenModel(this.data[i], null);
        feedData.Add(token);
    }

    return feedData;
}
```

Finally, we will create a AutoCompleteAdapter with the list of TokenModel objects.

```C#
this.adapter = new AutoCompleteAdapter(this.Context, this.GetTokenObjects(), Java.Lang.Integer.ValueOf(Resource.Layout.suggestion_item_layout));
this.adapter.CompletionMode = CompletionMode.StartsWith;
this.autocomplete.Adapter = this.adapter;
```

Autocomplete is now ready to be used. You can additionally set up its suggest and display modes according to your needs.

```C#
this.autocomplete.SuggestMode = SuggestMode.Suggest;
this.autocomplete.DisplayMode = DisplayMode.Plain;
```

![TelerikUI-AutoComplete-Suggest-Modes](images/autocomplete-starts-with.png "Getting started")


