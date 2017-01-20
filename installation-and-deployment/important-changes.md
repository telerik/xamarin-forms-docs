---
title: Important Changes
page_title: Important Changes
slug: important-changes
---

# Important Changes

## R1 2017

### DataForm changes

With the official release of **R1 2017** we have introduces some changes in the RadDataForm control that affect the entity property and metadata. Now the metadata can be accessed through the entity property and all methods that previously had metadata as parameter use the entity propertyn instead. The changes are listed below.

- **Assembly: Telerik.XamarinForms.Input**
 - **DataForm.EntityProperty** class is now interface: **DataForm.IEntityProperty**.
- **Assembly: Telerik.XamarinForms.InputRenderer.Android**
 - **DataForm.AndroidEntityProperty** has updated constructor:  
 ctor(XF.Input.DataForm.IEntityProperty, Java.Lang.Class, XF.InputRenderer.Android.DataForm.AndroidEntity)
 - Changed the signature of the following methods in **DataFormRenderer**:  
 **UpdateEditor**(NativeViz.EntityPropertyEditor, XF.Input.DataForm.EntityPropertyMetadata) -> (NativeViz.EntityPropertyEditor, XF.Input.DataForm.IEntityProperty)  
 **UpdateViewer**(NativeViz.EntityPropertyViewer, XF.Input.DataForm.EntityPropertyMetadata) -> (NativeViz.EntityPropertyViewer, XF.Input.DataForm.IEntityProperty)  
 - Removed **CLRConverter** property from **DataForm.AndroidEntityProperty** class.
 
 Where:
	
 - **XF**: Telerik.XamarinForms
 - **NativeViz**: Com.Telerik.Widget.Dataform.Visualization.Core
- **Assembly: Telerik.XamarinForms.InputRenderer.iOS**
 - **DataForm.IOSEntityProperty** has updated constructor:  
 ctor(DataFormEntityDataSource, DF.IEntityProperty, DF.IPropertyValidationCompletedListener DF.IPropertyDataSourceProvider)
 - Changed the signature of the following methods in **DataFormRenderer**:  
 **InitEditor**(TelerikUI.TKDataFormEditor, TelerikUI.TKEntityProperty, DF.EntityPropertyMetadata) -> (TelerikUI.TKDataFormEditor, DF.IEntityProperty)  
 **UpdateEditor**(TelerikUI.TKDataFormEditor, TelerikUI.TKEntityProperty, DF.EntityPropertyMetadata) -> (TelerikUI.TKDataFormEditor, DF.IEntityProperty)
 - Removed the following members from **DataFormRenderer**:  
 **CLRPropertyType**  
 **Converter**  

 Where:

 - **XF**: Telerik.XamarinForms
 - **DF**: Telerik.XamarinForms.Input.DataForm

- **Assembly: Telerik.XamarinForms.InputRenderer.UWP**
 - Changed the signature of the following method in **DataFormRenderer**:  
 **UpdateEditor**(Native.EntityPropertyControl, DF.EntityPropertyMetadata) -> (Native.EntityPropertyControl, DF.IEntityProperty)
 - **WindowsEntityProperty** has updated constructor:  
 ctor(DF.IEntityProperty, System.Object, DF.IPropertyDataSourceProvider)
 - **WindowsEntityProperty** has new property: **DF.IEntityProperty** XFEntityProperty

 Where:

 - **Native**: Telerik.UI.Xaml.Controls.Data
 - **DF**: Telerik.XamarinForms.Input.DataForm
 
### Type conversion changes

Changes also affect the mechanism for conversion from CLR DateTime objects to native Android and iOS types. Previously there was no adequate conversion for dates with different DateTimeKind. Now we have introduced several parameters to provide conversion context. The changes are listed below.

- **Assembly: Telerik.XamarinForms.Common**
 - Added new data form data annotation **DataAnnotations.NativeConvertionContextAttribute** to provide additional information for conversion.
 - Removed unnecessary **TargetType** property from **DataAnnotations.IPropertyConverter** 
- **Assembly: Telerik.XamarinForms.Common.Android**
 - **DateTimeTools.ToDateTime** method has changed signature:  
 **ToDateTime**(Java.Util.Calendar) -> (Java.Util.Calendar, System.DateTimeKind?)
 - **AndroidDateFormatter** class has changed constructor:  
 ctor(System.String, System.DateTimeKind?)
- **Assembly: Telerik.XamarinForms.Common.iOS**
 - **IOSDateFormatter** class has changed constructor:  
 ctor(System.String, System.String, Telerik.XamarinForms.Common.DataAnnotations.IPropertyConverter, System.Type, System.DateTimeKind?)
- **Assembly: Telerik.XamarinForms.Input**
 - **DataForm.EntityPropertyMetadata** has new property **NativeConvertionContext** of type object.

### Chart changes

Previously Chart axes required different LabelFormat on each platform that caused confusion among our customers. Now we changed the required format to be unified across all platforms.

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