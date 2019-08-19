---
title: How to Bind ViewModel to SlideViewCommand
description: How to extend the SlideViewCommand with a BindableProperty so that you can bind to a view model command.
type: how-to
page_title: How to Bind ViewModel to SlideViewCommand
slug: slideview-bind-slideviewcommand-to-viewmodel
position: 
tags: Xamarin, SlideView, Commanding, Commands, MVVM, Xamarin Forms, SlideViewCommand, extend, binding
ticketid: 1384640
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2019.1 116.1</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>SlideView for Xamarin.Forms</td>
	</tr>
</table>


## Description

The `SlideViewCommand` doesn't have a public **Command** property that can be used to bind to a view model command. This tutorial demonstrates how to add a **BindableProperty** to a class that extends `SlideViewCommand` to support this scenario. 

## Solution

Before getting started below, be sure to review the [RadSlideView Commands](https://docs.telerik.com/devtools/xamarin/controls/slideview/commands-support) article to learn how to extend the `SlideViewCommand` class and understand the Id enumeration that defines when the command is invoked.

Once you've read that, come back here and continue on.

### Custom Command Class

As seen in the Commands article, the logic for the command is places inside the Execute method. There's nothing to make a connection to a view model. We can expand on that example by adding a Command BindableProperty. This will let you bind to a Command defined in a view model.

Take the following steps.

1. Create a new class named **BindableSlideViewCommand** that extends `SlideViewCommand`. 
2. Add a **BindableProperty** of type **ICommand** to the class
3. Invoke the Command property's Execute method inside the SlideViewCommand's **Execute** method.

Here's what that class would look like:

```csharp
using Telerik.XamarinForms.Primitives.SlideView.Commands;
using Xamarin.Forms;

public class BindableSlideViewCommand : SlideViewCommand
{
    public static readonly BindableProperty CommandProperty = BindableProperty.Create("Command", typeof(ICommand), typeof(BindableSlideViewCommand));

    public ICommand Command
    {
        get => (ICommand)GetValue(CommandProperty);
        set => SetValue(CommandProperty, value);
    }

    public override bool CanExecute(object parameter)
    {
        return true;
    }

    public override void Execute(object parameter)
    {
        if (Command == null)
        {
            base.Execute(parameter);
        }
        else
        {
            Command.Execute(parameter);
        }
    }
}
```

### View Model Command and Parameters

In the view model, you can use your normal Command properties and actions. The only thing to keep in mind is if you need the command parameter, you should cast it to the appropriate `SlideViewCommandContext` (as seen in the documentation).

Here's what the view model class would look like:

```csharp
using Telerik.XamarinForms.Primitives.SlideView.Commands;
using Xamarin.Forms;

public class ViewModel
{
    public ViewModel()
    {
        SlidingToCommand = new Command(SlidingToIndex);
        SlidedToCommand = new Command(SlidedToIndex);
    }

    public Command SlidingToCommand { get; set; }

    public Command SlidedToCommand { get; set; }

    public void SlidingToIndex(object obj)
    {
        if (obj is SlideViewSlidingToIndexCommandContext context)
        {

        }
    }

    public void SlidedToIndex(object obj)
    {
        if (obj is SlideViewSlidedToIndexCommandContext context)
        {

        }
    }
}
```

### Command Instance

Finally, you can use an instance of the custom command in the `RadSlideView`. Due to the fact that the Command ID has not been predefined, you can set the `Id` on each instance. 

Here is the custom command being used for both the *Sliding* and *Slided* commands in the view:

```xml
<ContentPage x:Name="Page"
             xmlns:local="clr-namespace:YourApp.Portable"
             xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
             xmlns="http://xamarin.com/schemas/2014/forms"
             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml>

    <ContentPage.BindingContext>
        <local:ViewModel />
    </ContentPage.BindingContext>

    <telerikPrimitives:RadSlideView x:Name="slideView">
        <telerikPrimitives:RadSlideView.Commands>
            <local:BindableSlideViewCommand Id="SlidingToIndex" 
                                            Command="{Binding BindingContext.SlidingToCommand, Source={x:Reference Page}}"/>
            <local:BindableSlideViewCommand Id="SlidedToIndex"
                                            Command="{Binding BindingContext.SlidedToCommand, Source={x:Reference Page}}" />
        </telerikPrimitives:RadSlideView.Commands>
    </telerikPrimitives:RadSlideView>
</ContentPage>
```

>Notice that the binding is using a Reference source. This is important to keep in mind because the `RadSlideView` doesn't pass down the BindingContext to its properties.

## See Also

* [RadSlideView Overview](https://docs.telerik.com/devtools/xamarin/controls/slideview/slideview-overview)
* [RadSlideView Commands](https://docs.telerik.com/devtools/xamarin/controls/slideview/commands-support)
