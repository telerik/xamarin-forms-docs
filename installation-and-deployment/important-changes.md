---
title: Important Changes
page_title: Important Changes
slug: important-changes
---

# Important Changes

## Q3 2015

With the official release of **Q3 2015** we have introduced several new assemblies that facilitate the initial steps required to setup a new project utilizing the Telerik's UI for Xamarin control suite. Now the code related to loading and initializing all required resources is combined in a single method call:

    TelerikForms.Init()

This method should be called right after the `Xamarin.Forms.Forms.Init(...)` call in the native projects starting pages.

- **Android**: MainActivity.cs  
in the `MainActivity.OnCreate(...)` method
- **iOS**: AppDelegate.cs  
in the `AppDelegate.FinishedLaunching(...)` method
- **Windows Phone**: MainPage.xaml.cs  
in the MainPage constructor

Also a reference to the new assemblies has to be added in each native project:

- **Android**:  
Telerik.XamarinForms.Common.Android.dll
- **iOS**:  
Telerik.XamarinForms.Common.iOS.dll
- **Windows Phone**:  
Telerik.XamarinForms.Common.WinPhone.dll 

> You will have to make these changes to your application if you update from a previous version of UI for Xamarin suite.

The other changes are mainly related to type conversion. We have introduced new ways to define conversion between CLR and native objects. We have also added support for automatic CLR to native types conversion and in most of the cases you will not need to know that such thing exists.

All type conversion related API is moved to the TypeRegister class. It provides methods to register your own type converters. You can also register your converters with an attribute in a similar way that you register renderer - control mappings. We have also provided extension methods:

- **Android**:
 - ToObject()
 - ToJavaObject()
- **iOS**:
 - ToObject()
 - ToNSObject()

### Removed Types

Below are listed classes that are removed or moved.

#### Common

- Telerik.XamarinForms.Common.AndroidEventArgsMappings
- Telerik.XamarinForms.Common.AndroidTypeMappings
- Telerik.XamarinForms.Common.EventArgsMappings
- Telerik.XamarinForms.Common.IOSEventArgsMappings
- Telerik.XamarinForms.Common.IOSTypeMappings
- Telerik.XamarinForms.Common.WinPhoneEventArgsMappings
- Telerik.XamarinForms.Common.WinPhoneTypeMappings

#### Android

- Telerik.XamarinForms.ChartRenderer.Android.JavaObjectTypeHelper
- Telerik.XamarinForms.PrimitivesRenderer.Android.AndroidTypeConverter
- Telerik.XamarinForms.DataControlsRenderer.Android.AndroidTypeConverter 
- Telerik.XamarinForms.DataControlsRenderer.Android.ITypeConverter (moved to Telerik.XamarinForms.Common)
- Telerik.XamarinForms.InputRenderer.Android.DateTimeTools (moved to Telerik.XamarinForms.Common.Android)

#### iOS

- Telerik.XamarinForms.ChartRenderer.iOS.EnumConverter
- Telerik.XamarinForms.PrimitivesRenderer.iOS.IOSTypeConverter
- Telerik.XamarinForms.DataControlsRenderer.iOS.IOSTypeConverter
- Telerik.XamarinForms.DataControlsRenderer.iOS.ITypeConverter (moved to Telerik.XamarinForms.Common)
- Telerik.XamarinForms.DataControlsRenderer.iOS.TypeConverterBase (moved to Telerik.XamarinForms.Common.iOS)
- Telerik.XamarinForms.DataControlsRenderer.iOS.ConvertibleNSObject (renamed to ConvertibleObject)
- Telerik.XamarinForms.InputRenderer.iOS.DateTimeTools (moved to Telerik.XamarinForms.Common.iOS)