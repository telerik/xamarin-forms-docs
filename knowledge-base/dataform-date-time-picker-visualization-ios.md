---
title: DataForm Date Picker and Time Picker do not show up correctly on iOS 14 SDK.
description: Date and Time Picker in RadDataForm do not show up correctly on iOs 14, iOS 14.1
type: troubleshooting
page_title: 
slug: dataform-date-time-picker-visualization-ios
position: 
tags: dataform, datepicker, timepicker, ios 14, ios 14.1
ticketid: 1493884
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.3.1022.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>DataForm for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

The behavior with the Date and Time pickers visualization on iOS 14 is reported to the Xamarin.Forms. You can find it logged in the [Xamarin.Forms GitHub repo](https://github.com/xamarin/Xamarin.Forms/issues/12258).

The purpose of this topic is to show you how to return the old look of the date picker and time picker - using a custom renderer for iOS.

## Solution

So you will need to create a custom renderer for the RadDataForm control on iOS and set PreferredDatePickerStyle = UIDatePickerStyle.Wheels for the TKDataFormDatePicker and TKDataFormTimePicker editors. 

Create a class inside the iOS project, for example, MyCustomRenderer that inherits from DataFormRenderer

Here is the renderer implementation for iOS:

```C#
using App4.iOS;
using Telerik.XamarinForms.Input.DataForm;
using Telerik.XamarinForms.InputRenderer.iOS;
using TelerikUI;
using UIKit;
using Xamarin.Forms;

[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(MyCustomRenderer))]

namespace App4.iOS
{
    public class MyCustomRenderer : DataFormRenderer
    {
        protected override void InitEditor(TKDataFormEditor editor, IEntityProperty property)
        {
            base.InitEditor(editor, property);

            var dateeditor = (editor as TKDataFormDatePickerEditor);
            if (dateeditor == null)
                return;
			// set the PreferredDatePickerStyle property to Wheels
            dateeditor.DatePicker.PreferredDatePickerStyle = UIDatePickerStyle.Wheels;


            var timeEditor = (editor as TKDataFormTimePickerEditor);
            if (timeEditor == null)
                return;
			// set the PreferredDatePickerStyle property to Wheels
            timeEditor.DatePicker.PreferredDatePickerStyle = UIDatePickerStyle.Wheels;
        }
    }
}
```
