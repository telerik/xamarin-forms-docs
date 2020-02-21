---
title: Autocomplete editor in Android
page_title: Autocomplete editor in Android
description: Check our &quot;Autocomplete editor in Android&quot; documentation article for Telerik DataForm for Xamarin control.
slug: dataform-howto-use-native-editors-android
position: 0
---
## Autocomplete editor in Android

This example will demonstrate how to add an autocomplete editor for a property called City on Android.

First, let's create the source object:

<snippet id='dataform-howto-autocompleteeditor-source' />

Then you have to specify that a custom editor will be used for the City property.

<snippet id='dataform-howto-autocompleteeditor-csharp' />

Then you have to inherit from the default **DataFormRenderer** and override some of its methods.

<snippet id='dataform-howto-autocompleteeditorrenderer-csharp' />

Where the following namespaces are used:

```C#
using Android.Content;
using Android.Widget;
using NativeViz = Com.Telerik.Widget.Dataform.Visualization;
using NativeEngine = Com.Telerik.Widget.Dataform.Engine;
using NativeCore = Com.Telerik.Widget.Dataform.Visualization.Core;
using NativeEditors = Com.Telerik.Widget.Dataform.Visualization.Editors;
using Telerik.XamarinForms.InputRenderer.Android;
using Xamarin.Forms;
```
	
You have to define the **data\_form\_autocomplete\_item** resource in the **Resources\\layout** folder of the Android project. If the folder is missing, you have to create it. Then add the the following file: data\_form\_autocomplete\_item\.xml

```XAML
<?xml version="1.0" encoding="utf-8"?>
<TextView xmlns:android="http://schemas.android.com/apk/res/android"
android:id="@+id/data_form_autocomplete_item"
android:layout_width="wrap_content"
android:layout_height="wrap_content"/>
```

After that you will have to replace the default **DataFormRenderer** with the new one in **MainActivity.cs**:

```XAML
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(AutoCompleteEditorRenderer))]
```

Result:

![AutoComplete Editor](images/dataform-custom-renderer-android.png)

## See Also
- [Email and Password editors in iOS]({%slug dataform-howto-use-native-editors-ios%})
- [Editors]({%slug dataform-editors%})