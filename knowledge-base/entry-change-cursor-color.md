---
title: Change Entry Cater Color when on focus
description: how to change the entry caret / cursor color on android
type: how-to
page_title: Change Entry Cursor color when on focus
slug: entry-change-cursor-color
position: 
tags: entry, caret, cursor, color, focus, xamarin, android, xamarin.forms
ticketid: 1541339
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.3.915.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Entry for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article shows how to change the Entry cursor / caret color on Android when the control receives focus.

## Solution

You will need a Custom Renderer for Android. 

1. Entry definition: 

```XAML
<StackLayout>
	<input:RadEntry WatermarkText="Telerik Entry"/>
</StackLayout>
```

2. Inside the Android/Resources/drawable folder create a my_cursor.xml file for the caret / cursor

```xml
<shape xmlns:android="http://schemas.android.com/apk/res/android"
    android:shape="rectangle">

  <solid android:color="@color/colorCursors"></solid>
  <size android:width="2dp" />

</shape>
```

3. Add a color for the cursor - `colorCursor` inside colors.xml file inside the Android/Resources/values folder:

```xml
<resources>
    <color name="launcher_background">#FFFFFF</color>
    <color name="colorPrimary">#3F51B5</color>
    <color name="colorPrimaryDark">#303F9F</color>
    <color name="colorAccent">#FF4081</color>

    <color name="colorCursors">#303F9F</color>
</resources>
```

3. Create a Custom Renderer on Android. Class CustomEntryRenderer which inherits from EntryRenderer. 

In oder to change the caret / cursor color override the `OnElementChanged` method and inside it call the `SetTextCursorDrawable` method to change the cursor color and consume the resource:

```C#
using Android.Content;
using Android.Content.Res;
using Android.Graphics.Drawables;
using Android.Runtime;
using Android.Text;
using Android.Widget;
using ListPicker.Droid;
using Telerik.XamarinForms.Input;
using Telerik.XamarinForms.InputRenderer.Android;
using Xamarin.Forms;

[assembly: ExportRenderer(typeof(RadEntry), typeof(CustomEntryRenderer))]

namespace ListPicker.Droid
{
    public class CustomEntryRenderer : EntryRenderer
    {
        public CustomEntryRenderer(Context context) : base (context)
        {

        }

        protected override void OnElementChanged(Xamarin.Forms.Platform.Android.ElementChangedEventArgs<RadEntry> e)
        {
            base.OnElementChanged(e);

            if (this.Control != null)
            {
                this.Control.SetTextCursorDrawable(Resource.Drawable.my_cursor);
            }
        }
    }
}
```

