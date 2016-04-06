---
title: Required Android Support Libraries
page_title: Required Android Support Libraries
slug: required-android-support-libraries
position: 5
---

# Required Android Support Libraries

The controls in the suite require specific Xamarin Android Support Libraries to render correctly on Android.

Here are listed the common requirements for all Android projects that use our suite:

- The required version of **Xamarin.Forms** package is **2.0.0.6490**.
- The required version of all Xamarin Android Support Libraries is **23.0.1.3**.
- Here are listed all packages that come with the latest version of Xamarin.Forms, which also have to be updated to version **23.0.1.3**:
 - Xamarin.Android.Support.v4
 - Xamarin.Android.Support.Design
 - Xamarin.Android.Support.v7.AppCompat
 - Xamarin.Android.Support.v7.CardView
 - Xamarin.Android.Support.v7.MediaRouter
- The **Android 6.0 (API 23) SDK** has to be installed in order to use the 23.* versions of the support libraries (install from the Android SDK Manager).
- The target Android version of the Android project should be **API Level 23 (Xamarin.Android v6.0 Support)**. This could be modified from the project settings.

Below is a list of the specific packages required by each control.

## Calendar

* Xamarin.Android.Support.v8.RenderScript

## DataForm

* Xamarin.Android.Support.v8.RenderScript

## Chart

* Xamarin.Android.Support.v8.RenderScript

## ListView

* Xamarin.Android.Support.v7.RecyclerView

## SideDrawer

* Xamarin.Android.Support.v8.RenderScript
