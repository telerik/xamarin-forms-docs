---
title: Required Android Support Libraries
page_title: Required Android Support Libraries
slug: required-android-support-libraries
position: 5
---

# Required Android Support Libraries

The controls in the suite require specific Xamarin Android Support Libraries to render correctly on Android.

Here are listed the common requirements for all Android projects that use our suite:

- The required version of **Xamarin.Forms** package is **2.4.0**.
- The minimum required version of all Xamarin Android Support Libraries is **23.3.0**.
- Here are listed all packages that come with the latest version of Xamarin.Forms, which also have to be updated to version **23.3.0**:
  - Xamarin.Android.Support.v4
  - Xamarin.Android.Support.Design
  - Xamarin.Android.Support.v7.AppCompat
  - Xamarin.Android.Support.v7.CardView
  - Xamarin.Android.Support.v7.MediaRouter
  - Xamarin.Android.Support.Vector.Drawable
  - Xamarin.Android.Support.Animated.Vector.Drawable
  - Xamarin.Android.Support.v7.RecyclerView (required by Telerik.Xamarin.Android.List.dll)
  - Xamarin.Android.Support.v8.RenderScript (required by Telerik.Xamarin.Android.Primitives.dll)
- The target Android version of the Android project should be **API Level 23 (Android 6.0)** or greater. This could be modified from the project settings.
- The corresponding to the target Android version **Android SDK** has to be installed in order to use the required support libraries (install from the Android SDK Manager).

## See Also

- [System Requirements]({%slug system-requirements%})
- [Getting started on Windows]({%slug getting-started-windows%})
- [Getting started on Mac]({%slug getting-started-mac%})
