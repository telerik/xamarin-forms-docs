---
title: DataForm change editor text font size on Android
description: how to change the editors font size
type: how-to
page_title: Change DataForm editors font size on Android
slug: dataform-editors-font-size
position: 
tags: dataform, android, editor, font size, text size, xamarin
ticketid: 1541250
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.2.512.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>DataForm for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This articleshows how to chage the DataForm editors font size on Android

## Solution

Custom Renderer is needed for this scenario. Create a class `CustomDataFormRenderer` which inherits from `DataFormRenderer`. Then override the `UpdateEditor` method and use the `SetTextSize` method to change the Font Size of the EditorView text:

```C#
using Android.Content;
using Android.Runtime;
using AndroidX.AppCompat.Widget;
using App1.Droid;
using Com.Telerik.Widget.Dataform.Visualization.Core;
using Com.Telerik.Widget.Dataform.Visualization.Editors;
using Telerik.XamarinForms.InputRenderer.Android;
using Xamarin.Forms;

[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(CustomDataFormRenderer))]

namespace App1.Droid
{
    public class CustomDataFormRenderer : DataFormRenderer
    {
        public CustomDataFormRenderer(Context context) : base(context)
        {
        }

        protected override void UpdateEditor(EntityPropertyEditor editor, Telerik.XamarinForms.Input.DataForm.IEntityProperty property)
        {
            base.UpdateEditor(editor, property);

            if (editor is DataFormTextEditor || editor is DataFormDecimalEditor || editor is DataFormIntegerEditor)
            {
                var editText = editor.EditorView.JavaCast<AppCompatEditText>();
                editText.SetTextSize(Android.Util.ComplexUnitType.Px, 80);
            }
        }
    }
}
```