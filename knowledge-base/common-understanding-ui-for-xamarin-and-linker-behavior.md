---
title: Understanding UI for Xamarin and Linker Behavior
description: How to prevent Telerik assemblies from being stripped out by linker causing compile-time or runtime-exceptions.
type: how-to
page_title: How to Avoid Exception From Setting Linker Behavior to Link All
slug: common-understanding-ui-for-xamarin-and-linker-behavior
position: 
tags: Xamarin, Telerik UI for Xamarin
res_type: kb
---

## Environment

| Platform        | Version          |
|-----------------|------------------|
| Xamarin.Forms   | Any              |
| Xamarin.iOS     | Any              |
| Xamarin.Android | Any              |


## Description

When Xamarin.iOS or Xamarin.Android linker is set to **Link All**, Telerik code is being stripped out causing errors or run-time exceptions. 

## Solution

As the linker is a static tool, it can not plan for or include types and methods that are called through reflection, or dynamically instantiated. In short, if that type is not explicitly referenced in your project code, it will get removed by the linker.

You can take one of two options to resolve this:

### Option 1 - Change Linker Behavior

This is our recommended approach. Change the linker behavior to strip out SDK assemblies only:

* On Android, change the linker to **SDK Assemblies Only**
* On iOS, change the setting to **Link Framework SDKs Only**

### Option 2 - Define Skip Assemblies

If you *must* set the linker behavior to **Link All**, you can instruct the linker to skip certain assemblies. In this list, you can included any Telerik assemblies that is causing your errors.

#### Xamarin.Android

For Xamarin.Android you can directly enter the assembly names into the *Properties > Android Options* tab's **Skip Linking assemblies** text box.

Alternatively, you can edit the csproj file and add the PropertyGroup manually:

```xml
<PropertyGroup>
    <AndroidLinkSkip>assemblyName1;assemblyName2</AndroidLinkSkip>
</PropertyGroup>
```

#### Xamarin.iOS

For Xamarin.iOS, you need to pass a `--linkskip` argument in the *Properties > iOS Build* tab's **Additional mtouch arguments** text box..

`--linkskip assemblyName1 --linkskip assemblyName2`

#### Example

For example, if you're getting a *Missing Method Exception* for **Telerik.XamarinForms.Common.SomeMethod()**, you can instruct the linker to skip that Common assembly.

On iOS it would look like this:

`--linkskip Telerik.XamarinForms.Common`

On Android, it would look like this:

```xml
<PropertyGroup>
    <AndroidLinkSkip>Telerik.XamarinForms.Common</AndroidLinkSkip>
</PropertyGroup>
```

## Resources

For more settings and to gain an better understanding of what the linker does, visit the following documentation articles:

* [Linking on Android](https://docs.microsoft.com/en-us/xamarin/android/deploy-test/linker)
  * [Skipping assemblies for Android](https://docs.microsoft.com/en-us/xamarin/android/deploy-test/linker#linkskip)
* [Linking Xamarin.iOS Apps](https://docs.microsoft.com/en-us/xamarin/ios/deploy-test/linker)
  * [Skipping assemblies for iOS](https://docs.microsoft.com/en-us/xamarin/ios/deploy-test/linker?tabs=windows#skipping-assemblies)
