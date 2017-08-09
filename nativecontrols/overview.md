---
title: Overview
page_title: Native Controls Overview
slug: native-controls-overview
tags: native,controls,overview
position: 0
publish: true
---

## Xamarin Forms vs Xamarin Native(Xamarin.iOS & Xamarin.Android)

If you are new to the Xamarin world and are still hesitating what approach to take for developing your application, you should familiarize yourself with the strengths and weaknesses of the available approaches for developing Xamarin applications. We are here summarizing the main points discussed in the [Xamarin.Forms introduction page](https://www.xamarin.com/forms). 

### Develop through **Xamarin.Forms** 
Using this approach you can quickly achieve similar look and feel on all available platforms by sharing the same code base. All controls and views are eventually translated to platform-specific native elements without the need of any further actions from your side. You should consider this approach for:

* Apps that require little platform-specific functionality

* Apps where code sharing is more important than custom UI and platform-specific features

* You feel comfortable creating your UI through XAML

### Develop through **Xamarin Native**(Xamarin.iOS & Xamarin.Android)

By choosing this approach, you can take full advantage of each platform. You are free to create platform-specific views to achieve the desired appearance in the smallest details. You can access native APIs and utilize device-specific features. You should consider this approach for:

* Apps that require native behavior

* Apps that need to use platform-specific APIs

* Apps where you need to achieve custom UI according to the target platform

## Native Controls Wrappers

Aside from the Xamarin.Forms control that the **Progress Telerik UI for Xamarin** suite provides, you can take advantage of the **Native Controls Wrappers**. 

### Android Controls

The Android Wrappers are built on top of the truly native controls from the **UI for Android** suite(discontinued as a separate product as of April 20th 2017). The following controls are available for Xamarin.Android development:

* [AutoComplete]({%slug autocomplete-overview%})
* [Calendar]({%slug %})
* [Chart]({%slug %})
* [DataForm]({%slug %})
* [DataSource]({%slug %})
* [Feedback]({%slug %})
* [Gauges]({%slug %})
* [ListView]({%slug %})
* [NumberPicker]({%slug %})
* [ScrollView]({%slug %})
* [SideDrawer]({%slug %})
* [TabView]({%slug %})

### iOS Controls

The iOS Wrappers are built on top of the truly native controls from the **UI for iOS** suite(discontinued as a separate product as of April 20th 2017). The following controls are available for Xamarin.iOS development:

*[Alert]({%slug %})
*[AppFeedback]({%slug %})
*[AutoCompleteTextView]({%slug %})
*[Calendar]({%slug %})
*[Chart]({%slug %})
*[DataForm]({%slug %})
*[DataSource]({%slug %})
*[Gauges]({%slug %})
*[ListView]({%slug %})
*[SideDrawer]({%slug %})
*[TabView]({%slug %})

>important Though the **UI for iOS** and **UI for Android** suites have been discontinued as available products we are using them as basis for the **Xamarin.Android** and **Xamarin.iOS** controls. With this in mind, we are still dedicated to improving their quality and features so they fit nicely and provide smooth development experience in the Xamarin world.