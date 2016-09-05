---
title: Android Project Fails To Build
page_title: Android Project Fails To Build
slug: android-project-fails-to-build
position: 1
---

# Android Project fails to build #
What to do if Android project fails to build with the following error:

	COMPILETODALVIK : UNEXPECTED TOP-LEVEL error : 
		Exception in thread "main" 
		Exception: java.lang.OutOfMemoryError thrown from the UncaughtExceptionHandler in thread "main"

After the release of Xamarin.Android.Support libraries version 23.0.1 from Xamarin, the above exception is thrown when compiling projects with a number of references to third-party assemblies. To remedy this you need to increase the maximum java heap size.

## In Visual Studio: ##
- Right-click the .Droid project and select "Properties"
- Select "Android Options"
- Select "Advanced" tab
- Enter a value for "Java Max Heap Size" e.g. **`1G`**

## In Xamarin Studio: ##
- Right-click the .Droid project and select "Options"
- Select "Android Build" in "Build" node
- Select "Advanced" tab
- Enter a value for "Java Heap Size" e.g. **`1G`**
