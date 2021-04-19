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
 
>important Telerik UI for Xamarin assemblies are build against an earlier versions of AndroidX packages. With Xamarin.AndroidX.Core version 1.3.2.2 or higher Xamatin.Forms introduced a breaking change by namespace renaming in AndroidX.Core package: [Check this GitHub commit](https://github.com/xamarin/AndroidX/commit/b64834625ba231d89afb9c89bdae007a7258eca0#diff-64d65877e1b5eb3de016e98941c7020707c9b317946c38a0e63972fab41e1984). This breaking change (namespace renaming) leads to us not being able to find all classes in that namespace as they are now in different ones. **Downgrade the Xamarin.AndroidX.Core package to version to 1.3.2.1**. Also, you may need to downgrade other packages like **Xamarin.AndroidX.Media to 1.2.1.1**; **Xamarin.Google.Android.Material to 1.2.1.1**, etc. as they depend on the Xamarin.AndroidX.Core package.

Here is a list of the Xamarin.AndroidX packages depend on Xamarin.AndroidX.Core package.

```
Xamarin.AndroidX.Browser -> Xamarin.AndroidX.Core
Xamarin.AndroidX.Media-> Xamarin.AndroidX.Core
Xamarin.AndroidX.MediaRouter -> Xamarin.AndroidX.Media -> Xamarin.AndroidX.Core 
Xamarin.Google.Android.Material-> Xamarin.AndroidX.Core
Xamarin.AndroidX.RecyclerView -> Xamarin.AndroidX.Core
Xamarin.AndroidX.RecyclerView.Selection -> Xamarin.AndroidX.Core
Xamarin.AndroidX.Legacy.Support.V4 -> Xamarin.AndroidX.Core
```

**You need to downgrade their versions to a version that depends on Xamarin.AndroidX.Core 1.3.2.1**


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
