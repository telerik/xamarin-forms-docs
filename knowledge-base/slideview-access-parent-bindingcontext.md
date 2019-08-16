---
title: RadSlideView Access Parent BindingContext in Slide
description: How to get access the BindingContext of the parent within the SlideView's ContentViews
type: how-to
page_title: SlideView Access Parent BindingContext in Slide
slug: radslideview-access-parent-bindingcontext
position: 
tags: RadSlideView, BindingContext, Slide, Parent, ContentView, Xamarin, XamarinForms
ticketid: 1362624
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2018.3.1122.3</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>SlideView for Xamarin.Forms</td>
	</tr>
</table>


## Description

The **RadSlideView** uses `ContentView` for the slides, these ContentViews do not have scope to BindingContext of the visual parents (e.g. the SlideView or parent page). This has the consequence of not being able to bind any ContentView content to a page view model.

## Solution

You can solve this by using a static helper class to share a BindingContext reference. The static class only needs one public static `object` property:

### Example Helper Class

```Csharp
public static class BindingContextHelper
{
    public static object CurrentPageBindingContext { get; set; }
}
```

### Example Use

When the RadSlideView parent's BindingContext is set, you can set the helper class's property. In this example, we'll use a ContentPage.

Model

```csharp
public class MyItem
{
    public string ItemName { get; set; }
}
```

ViewModel

```csharp
public class ViewModel
{
    public ViewModel()
    {
    }

    public ObservableCollection<MyItem> MyItems { get; set; } = new ObservableCollection<MyItem>
    {
        new MyItem {ItemName = "Item One"}
    };

    public Command MyViewModelCommand { get; set; } = new Command(() =>
    {
            Debug.WriteLine("You have invoked a command in the view model!");
    });
}
```

View

```xml
<telerikPrimitives:RadSlideView ItemsSource="{Binding MyItems}">
  <telerikPrimitives:RadSlideView.ItemTemplate>
    <DataTemplate>
      <ContentView>
        <StackLayout >
          <Label Text="{Binding ItemName}" />
          <Button BindingContext="{x:Static helpers:BindingContextHelper.CurrentPageBindingContext}"
                  Command="{Binding MyViewModelCommand}" />
                </Grid>
            </ContentView>
        </DataTemplate>
    </telerikPrimitives:RadSlideView.ItemTemplate>
</telerikPrimitives:RadSlideView>
```

```csharp
public partial class MainPage : ContentPage
{
    public MainPage()
    {
        InitializeComponent();

        // Set the parent's BindingContext
        this.BindingContext = new ViewModel();

        // Pass that BindingContext to the helper class
        BindingContextHelper.CurrentPageBindingContext = this.BindingContext;
    }
}
```
