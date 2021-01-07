---
title: Dark Mode
page_title: Xamarin.Forms Dark Mode Dark Theme Support - Dark Mode
description: Telerik Xamarin controls have a support for dark theme dark mode
slug: telerik-xamarin-dark-mode
position: 1
---

# Overview

Android 10 (API level 29) and iOS 13 introduce system-wide dark appearance for all user interface elements, known as [Dark theme](https://developer.android.com/guide/topics/ui/look-and-feel/darktheme) for Android and [Dark Mode](https://developer.apple.com/documentation/xcode/supporting_dark_mode_in_your_interface) for iOS. They have many benefits as to allow users to toggle their interface and focus on the application’s content based on ambient lighting conditions as well as to reduce power usage amount depending on the device's screen technology.

Telerik UI for Xamariin controls have a support for Dark Theme/Dark Mode from the R1 2021 Official Release.

## Dark Theme for Android

In order to support Dark theme for Android, the application's theme must inherit from a DayNight theme as explained [here](https://developer.android.com/guide/topics/ui/look-and-feel/darktheme#supporting_dark_theme_in_your_app).

Example:

Set the app theme inside the Resources/valies/styles.xml file locaded in the Android project.

```xml
<style name="MainTheme" parent="Theme.AppCompat.DayNight">
```

Here is how the Telerik Xamarin controls look on Android with Darh Theme applied:

![Telerik Xamarin Android Dark Theme](images/telerik-android-dark-theme.png)

> Make sure to test your application carefully and thoroughly on both Light and Dark system appearance.

## Dark Mode for iOS

Telerik UI for Xamarin controls automatically react to system appearance changes.

Here is how the Telerik Xamarin controls look on iOS with Darh Mode applied:

![Telerik Xamarin iOS Dark Mode](images/telerik-ios-dark-mode.png)

> Make sure to test your application carefully and thoroughly on both Light and Dark system appearance.

## Dark Theme for UWP

You can change themes in our application changing the `RequestedTheme` property in the `App.xaml` file of the UWP project.

Example:

```XAML
<Application
    x:Class="QSF.UWP.App"
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    xmlns:local="using:QSF.UWP"
    RequestedTheme="Dark">
</Application>
```
>important If you remove the `RequestedTheme` property, this means that your application will use the user’s system settings.

Here is how the Telerik Xamarin controls look on UWP with Darh Theme applied:

![Telerik Xamarin UWP Dark Theme](images/telerik-uwp-dark-theme.png)

> Make sure to test your application carefully and thoroughly on both Light and Dark system appearance.

## See Also


