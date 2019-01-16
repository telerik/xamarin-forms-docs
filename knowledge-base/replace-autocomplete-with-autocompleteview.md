---
title: How to replace AutoComplete with AutoCompleteView
description: use the AutoCompleteView control instead of AutoComplete control
type: how-to
page_title: migrate from AutoComplete to AutoCompleteView
slug: replace-autocomplete-with-autocompleteview
position: 
tags: autocompleteview, autocomplete, Xamarin, Telerik UI for Xamarin, migration
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>R1 2019</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>AutoCompleteView for Xamarin</td>
	</tr>
	<tr>
		<td>Xamarin.Forms</td>
		<td>3.4</td>
	</tr>
</table>


## Description

This help article shows how to migrate from AutoComplete control to AutoCompleteView control. Both components share similar API regarding the features available in the AutoComplete control, so the migration should be straight-forward. 

The table below shows the differences between the features in the RadAutoCompleteView control vs. RadAutoComplete control:

| Features | AutoCompleteView | AutoComplete|
| -------- | ---------------- | ----------- |
| ItemsSource | &#x2714; | &#x2714; |
| ImagePath | &#x2714; | &#x2714; |
| TextSearchPath | &#x2714; | &#x2714; |
| Watermark | &#x2714; | &#x2714; |
| DisplayMode | &#x2714; | &#x2714; |
| CompletionMode | &#x2714; | &#x2714; |
| SuggestMode | &#x2714; | &#x2714; |
| DisplayTextFormatter | &#x2714; | - |
| FilteredItems | &#x2714; | &#x2714; |
| IsClearButtonVisible | &#x2714; | &#x2714; |
| NoResultMessage | &#x2714; | &#x2714; |
| NoResultTemplate | &#x2714; | - |
| TokenTemplate | &#x2714; | - |
| ShowMoreItems | &#x2714; | - |
| ShowMoreTemplate | &#x2714; | - |
| TextChanged | &#x2714; | - |
| LoadingTemplate - Remote Search | &#x2714; | - |
| SearchThreshold | &#x2714; | &#x2714; |
| ShowSuggestionView | &#x2714; | &#x2714; |
| SuggestionViewHeight | &#x2714; | &#x2714; |
| SuggestionViewBackgroundColor | &#x2714; | &#x2714; |
| SuggestionItemTemplate | &#x2714; | &#x2714; |
| SuggestionItemTextColor | &#x2714; | &#x2714; |
| SuggestionViewTemplate | &#x2714; | - |
| FontFamily | &#x2714; | &#x2714; |
| FontSize | &#x2714; | &#x2714; |
| FontWeight | - | &#x2714; |
| FontAttributes | &#x2714; | - |
| TextColor | &#x2714; | &#x2714; |
| TokenStyle | - | &#x2714; |
| FilteredItemsChanged | &#x2714; | &#x2714; |
| SuggestionItemSelected | &#x2714; | &#x2714; |
| Text | &#x2714; | &#x2714; |
| ShowSuggestions | &#x2714; | - |
| HideSuggestions | &#x2714; | - |

## Migrate from AutoComplete to AutoCompleteView

### Control declaration:


- AutoCompleteView

```XAML
<telerikInput:RadAutoCompleteView x:Name="autoCompleteView" 
                                  Watermark="Search here..." />
```

- AutoComplete

```XAML
<telerikInput:RadAutoComplete x:Name="autoComplete" 
							  Watermark="Search here..." />
```

* **Same namespace**  

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

### SuggestionItemTemplate differences:

AutoCompleteView uses the Xamarin.Forms ListView for visualize the Suggestions. When the custom SuggestionItem Template is used you will need to add the **ViewCell** inside the **DataTemplate**. For example:

```XAML
<telerikInput:RadAutoCompleteView.SuggestionItemTemplate>
    <DataTemplate>
       <ViewCell>
           <Grid>
               <Grid.ColumnDefinitions>
                   <ColumnDefinition Width="*" />
                   <ColumnDefinition Width="Auto" />
               </Grid.ColumnDefinitions>
               <Label Margin="5"
                      FontSize="24"
                      Text="{Binding Name}"
                      TextColor="Black"/>
                <Image Grid.Column="1"
                       Margin="5"
                       HeightRequest="20"
                       Source="{Binding ImageSource}"
                       WidthRequest="20"/>
             </Grid>
        </ViewCell>
    </DataTemplate>
</telerikInput:RadAutoCompleteView.SuggestionItemTemplate>
```

## See Also

- [AutoCompleteView]({%slug autocompleteview-overview%})
