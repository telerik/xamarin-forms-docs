---
title: TypeLoadException AccessibilityDelegateCompat with latest versions of AndroidX
description: How to fix Android exception related to AccessibilityDelegateCompat with AndroidX and Telerik Xamarin controls
type: how-to
page_title: Android AccessibilityDelegateCompat with Telerik UI for Xamarin and latest versions of AndroidX
slug: common-typeloadexception-accessibilitydelegatecompat
position: 
tags: AndroidX,  AccessibilityDelegateCompat, Telerik, Xamarin, Android, exception  
ticketid: 1096817
res_type: kb
---

## Environment
<table>
    <tbody>
	    <tr>
	    	<td>Product Version</td>
	    	<td>R1 2021</td>
	    </tr>
	    <tr>
	    	<td>Product</td>
	    	<td>Telerik UI for Xamarin</td>
	    </tr>
    </tbody>
</table>

>important This exception occurs when using Telerik UI for Xamarin 2021.2.615.1 version and below. **The issue is fixed in Telerik UI for Xamarin version - 2021.2.728.1**


>important The workaround below must be used when Telerik UI for Xamarin 2021.2.615.1 version or below is used.

## Description

If you recently came across any of these exceptions when upgrading your solution:

* **Exception in ListView**: System.TypeLoadException: 'VTable setup of type Telerik.XamarinForms.DataControlsRenderer.Android.ListViewAccessibilityDelegateCompat failed'

* **Exception in NumericInput, DateTimePicker and TabView**: System.TypeLoadException: 'Message=VTable setup of type Telerik.XamarinForms.Common.Android.HelpTextAccessibilityDelegateCompat failed'

* **Exception in TreeView:**: System.TypeLoadException: 'VTable setup of type Telerik.XamarinForms.DataControlsRenderer.Android.TreeViewAccessibilityDelegateCompat failed'

The exception is caused by namespace renaming in the latest Xamarin.AndroidX.Core package. The issue is a typo, which Xamarin team has fixed, still this is a breaking change, as now the namespace is different. You can check it in the [Xamarin.Forms github repo](https://github.com/xamarin/AndroidX/commit/b64834625ba231d89afb9c89bdae007a7258eca0#diff-64d65877e1b5eb3de016e98941c7020707c9b317946c38a0e63972fab41e1984).

As we are built against an earlier version of the Xamarin.AndroidX.Core nuget package, this breaking change (namespace renaming) leads to us not being able to find all classes in that namespace as they are now in different one, hence the exceptions.

The issue happens in **Xamarin.AndroidX.Core package version 1.3.2.2 or higher**. The error is also reproducible if you use another Xamarin.AndroidX package which depends on Xamarin.AndroidX.Core 1.3.2.2 version or higher, such as **Xamarin.Google.Android.Material version 1.3.0.1**.

## Solution

Downgrade the **Xamarin.AndroidX.Core package to version to 1.3.2.1**. 

Also, you may need to downgrade other packages like Xamarin.AndroidX.Media to 1.2.1.1; Xamarin.Google.Android.Material to 1.2.1.1 , etc. as they depend on the Xamarin.AndroidX.Core package.

Here is a list of packages that depend on AndroidX.Core:

* Xamarin.AndroidX.Browser -> Xamarin.AndroidX.Core
* Xamarin.AndroidX.Media-> Xamarin.AndroidX.Core
* Xamarin.AndroidX.MediaRouter -> Xamarin.AndroidX.Media -> Xamarin.AndroidX.Core 
* Xamarin.Google.Android.Material-> Xamarin.AndroidX.Core
* Xamarin.AndroidX.RecyclerView -> Xamarin.AndroidX.Core
* Xamarin.AndroidX.RecyclerView.Selection -> Xamarin.AndroidX.Core
* Xamarin.AndroidX.Legacy.Support.V4 -> Xamarin.AndroidX.Core

If you have any of these packages installed on the Android project, **downgrade their version**.

>important You can safely use the latest release of **Telerik UI for Xamarin** as well as the latest version of **Xamarin.Forms**, just downgrade the version of the AndroidX packages. 

>In addition, please check the linker settings option. You have to **set the linker** to "SDK Assemblies Only".
