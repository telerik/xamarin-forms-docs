---
title: Required AndroidX Packages
page_title: Required AndroidX Packages
description: Check our detailed documentation article for which are the required AndroidX packages. Find all you need to know in Xamarin.Forms installation and deployment documentation.
slug: required-android-support-libraries
position: 5
---

# Required AndroidX Packages

## Since R3 2020

>important With R3 2020 release we have migrated our Xamarin.Android components, which serve as foundation for some of our Xamarin.Forms controls to use AndroidX. This allows to use all the latest development in Android extensions (AndroidX) along with our controls. 
>
> You can read more on AndroidX and Xamarin here: https://docs.microsoft.com/en-us/xamarin/android/platform/androidx

The controls in the Telerik UI for Xamarin suite require specific AndroidX packages references inside the Android project to render correctly on Android.

Here is a list of the required AndroidX packages:

 - Xamarin.AndroidX.RecyclerView
 - Xamarin.AndroidX.AppCompat.Resources
 - Xamarin.AndroidX.Lifecycle.LiveData
 - Xamarin.AndroidX.Browser
 - Xamarin.AndroidX.Legacy.Support.V4
 - Xamarin.Google.Android.Material
 - Xamarin.AndroidX.Migration
 
In addition, the following reference is required in the Android project:

- Mono.Android.Export.dll

> If the app targets Android9, Xamarin.AndroidX.Migration nuget package should be of version 1.0.6.1. 
	
### Requirements

Check below the requirements for using AndroidX in Xamarin-based apps:
 
- **Visual Studio 2019** - On Windows update to Visual Studio 2019 version 16.4 or later. On macOS, update to Visual Studio 2019 for Mac version 8.4 or later.
- **Xamarin.Android** - Xamarin.Android 10.0 or later must be installed with Visual Studio (Xamarin.Android is automatically installed as part of the Mobile Development With .NET workload on Windows and installed as part of the Visual Studio for Mac Installer)
- **Java Developer Kit** - Xamarin.Android 10.0 development requires JDK 8. Microsoft's distribution of the OpenJDK is automatically installed as part of Visual Studio.
- **Android SDK** - Android SDK API 28 or higher must be installed via the Android SDK Manager.

## R2 2020 and below

With releases prior to R3 2020 (R2 SP 2020, R2 2020, R1 2020, etc) the controls in the Telerik UI for Xamarin suite require specific Xamarin Android Support Libraries to render correctly on Android.

Here are listed the common requirements for all Android projects that use our suite:

- The minimum required version of all Xamarin Android Support Libraries is **28.0.0.1**.
- Here are listed all packages that come with the latest version of Xamarin.Forms, which also have to be updated to version **28.0.0.1**:
  - Xamarin.Android.Support.v4
  - Xamarin.Android.Support.Design
  - Xamarin.Android.Support.v7.AppCompat
  - Xamarin.Android.Support.v7.CardView
  - Xamarin.Android.Support.v7.MediaRouter
  - Xamarin.Android.Support.Vector.Drawable
  - Xamarin.Android.Support.Animated.Vector.Drawable
  - Xamarin.Android.Support.v7.RecyclerView (required by Telerik.Xamarin.Android.List.dll)
  - Xamarin.Android.Support.v8.RenderScript (required by Telerik.Xamarin.Android.Primitives.dll. **only with R3 2018.3 or earlier**)
- The target Android version of the Android project should be **Android 8.1** (API level 27) or greater. This could be modified from the project settings.
- The corresponding to the target Android version **Android SDK** has to be installed in order to use the required support libraries (install from the Android SDK Manager).

## See Also

- [System Requirements]({%slug system-requirements%})
- [Getting started on Windows]({%slug getting-started-windows%})
- [Getting started on Mac]({%slug getting-started-mac%})
