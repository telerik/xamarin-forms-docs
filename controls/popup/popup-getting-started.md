---
title: Getting Started
page_title: Getting Started
description: Check our &quot;Getting Started&quot; documentation article for Telerik Popup for Xamarin control.
position: 1
slug: popup-getting-started
---

# Getting Started

This article will guide you through the steps needed to add a basic **RadPopup** control in your application. 

* [Setting up the app](#1-setting-up-the-app)
* [Adding the required Telerik references](#2-adding-the-required-telerik-references)
* [Adding RadPopup control](#3-adding-radpopup-control)

## 1. Setting up the app

Take a look at these articles and follow the instructions to setup your app:

- [Setup app with Telerik UI for Xamarin on Windows]({%slug getting-started-windows%})
- [Setup app with Telerik UI for Xamarin on Mac]({%slug getting-started-mac%})

## 2. Adding the required Telerik references

You have two options:

* Add the Telerik UI for Xamarin Nuget packages following the instructions in [Telerik NuGet package server]({%slug telerik-nuget-server%}) topic.

* Add the references to Telerik assemblies manually, check the list below with the required assemblies for **RadPopup** component:

| Platform | Assemblies |
| -------- | ---------- |
| Portable | Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll |
| Android  | Telerik.Xamarin.Android.Common.dll<br/>Telerik.Xamarin.Android.Primitives.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll |
| iOS      | Telerik.Xamarin.iOS.dll <br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll |
| UWP      | Telerik.Core.dll<br/>Telerik.UI.Xaml.Primitives.UWP.dll<br/>Telerik.XamarinForms.Common.dll<br/>Telerik.XamarinForms.Primitives.dll |

## 3. Adding RadPopup control

You could use one of the following approaches:

#### Drag the control from the Toolbox. 

Take a look at the following topics on how to use the toolbox:

* [Telerik UI for Xamarin Toolbox on Windows]({%slug telerik-xamarin-toolbox%})
* [Telerik UI for Xamarin Toolbox on Mac]({%slug telerik-xamarin-toolbox-mac%})
	
#### Create the control definition in XAML or C#.

The next example shows a sample RadPopup attached to a Button control. The purpose of the Popup in this scenario is to receive user input - it contains RadRating control for allowing the user to select a rating and a button for closing the popup.

Check below the Popup definition in XAML and in code-behind:

<snippet id='popup-getting-started-xaml' />
<snippet id='popup-getting-started-csharp' />

And here are the referenced event handlers:

<snippet id='popup-gettingstarted-events' />

In addition to this, you need to add the following namespaces (*telerikInput* namespace is needed for the Rating control used in the example, in general it's not required for RadPopup):

```XAML
xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```
```C#
using Telerik.XamarinForms.Primitives;
using Telerik.XamarinForms.Input;
```

This is the result:

![RadPopup](images/popup_getting_started.png)

>important The presented example is available in Popup -> Getting Started folder of the [SDK Browser application]({%slug developer-focused-examples%}#sdk-browser-application).
>
>You can directly explore the code in the [SDKBrowser Examples repository on GitHub](https://github.com/telerik/xamarin-forms-sdk/tree/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/PopupControl/GettingStartedCategory/GettingStartedExample).

## See Also

- [Modal Popup Support]({%slug popup-key-features%}#modal-popup)
- [Placement Configuration]({%slug popup-key-features%}#placement-configuration)
- [Animation Settings]({%slug popup-key-features%}#animation-settings)