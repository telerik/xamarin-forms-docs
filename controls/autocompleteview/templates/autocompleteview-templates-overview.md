---
title: Xamarin AutoCompleteView Documentation | Overview
page_title: Overview
description: Check our &quot;Overview&quot; documentation article for Telerik AutoCompleteView for Xamarin control.
position: 1
slug: autocompleteview-custom-templates
---

# RadAutoCompleteView Custom Templates

## Overview

If the default templates of the control do not suit your needs, you can easily define a custom template. The available templates for customizing are:

* **NoResults Template**(DataTemplate): Defines the template visualised when there are no suggestions found.
* **ShowMore Template**(DataTemplate) for Tokens Support: Defines the template used to create show more view when *DisplayMore="Tokens"*.
* **Loading Template**(DataTemplate) for [Remote Search]({%slug autocompleteview-remote-search%}) functionality: Defines the loading message in *RemoteSearch state*.
* **Tokens Template**(DataTemplate) for Tokens Support: Defines the template used to vizualize the tokens.
* **SuggestionItem Template**(DataTemplate): Defines the template that will be used to create each of the suggestions.
* **SuggestionView Template**(DataTemplate): Defines the template used to visualize the filtered items.

## Example

### NoResults Template

Here is an example how the NoResults Template could be defined:

```XAML
<telerikInput:RadAutoCompleteView.NoResultsTemplate>
    <DataTemplate>
        <Label Text="No match was found for the specific search. Please try again."/>
    </DataTemplate>
</telerikInput:RadAutoCompleteView.NoResultsTemplate>
```

### ShowMore Template

XAML definition of ShoWMore Template:

```XAML
<telerikInput:RadAutoCompleteView.ShowMoreTemplate>
    <DataTemplate>
        <Label Text="{Binding Path=., StringFormat='+{0} more'}" VerticalTextAlignment="Center" />
    </DataTemplate>
</telerikInput:RadAutoCompleteView.ShowMoreTemplate>
```

>important A sample NoResult and ShowMore Template example can be found in the AutoCompleteView/Features/Tokens folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

### Loading Template

XAML definition of the Loading Template:

```XAML
<telerikInput:RadAutoCompleteView.LoadingTemplate>
    <DataTemplate>
        <StackLayout Orientation="Horizontal"
                        HorizontalOptions="Center"
                        Margin="0, 20, 0, 20">
            <Label Text="Searching... " FontSize="16" TextColor="#8E8E93"/>
            <telerikPrimitives:RadBusyIndicator x:Name="busyIndicator" 
                                                HeightRequest="24" 
                                                WidthRequest="24"
                                                IsBusy="True"
                                                VerticalOptions="Start"
                                                AnimationContentColor="Accent"
                                                AnimationType="Animation9"/>
        </StackLayout>
    </DataTemplate>
</telerikInput:RadAutoCompleteView.LoadingTemplate>
```
>important A sample Loading Template definition can be found in the AutoCompleteView/Features/RemoteSearch folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Token Template]({% slug autocompleteview-token-template%})
- [SuggestionItem Template]({% slug autocompleteview-suggestion-item-template%})
- [SuggestionView Template]({% slug autocompleteview-suggestion-view-template%})
