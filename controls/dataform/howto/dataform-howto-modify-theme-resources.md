---
title: Modify RadDataForm's TelerikTheme Resources in Android
page_title: RadDataForm - Modify TelerikTheme Resources
slug: dataform-howto-modify-theme-resources
position: 3
---

## How to Modify RadDataForm's TelerikTheme Resources in Android

When applying the **TelerikTheme** to the Telerik controls within your application and respectively the **RadDataForm** element, you have the option to [Modify the default theme]({%slug common-modifying-default-theme%}) by overriding the values of the resources used within it. You can modify RadDataForm's resources so that different colors than the default ones are applied. For example:

	<!-- DataForm -->
	<Color x:Key="TelerikDataFormEditorAccentColor">Orange</Color>
	<Color x:Key="TelerikDataFormBackgroundColor">White</Color>
	<Color x:Key="TelerikDataFormHeaderFontColor">Orange</Color>
	<Color x:Key="TelerikDataFormEditorBorderColor">Orange</Color>

If you run your application in Android at this stage you will notice that not all elements are modified as expected:

#### Figure 1: DataForm unmodified Editors
![](images/dataform-unmodified-editors.png)

As the **RadDataForm** is built on top of a truly native DataForm element and also uses native elements as editors, modifying the appearance of these elements requires some additional steps. The control relies on some  Android styles which are applied to the editors in case of setting the **TelerikTheme** class for the control. Here are all the native styles applied to the different type of editors:

    <style name="CustomDatePickerThemeBlue" parent="Theme.AppCompat.Light.Dialog">
        <item name="colorAccent">#3148CA</item>
    </style>

    <style name="CustomTimePickerThemeBlue" parent="Theme.AppCompat.Light.Dialog">
        <item name="colorAccent">#3148CA</item>
    </style>

    <style name="CustomCheckBoxEditorThemeBlue">
        <item name="colorControlNormal">#919191</item>
        <item name="colorControlActivated">#3148CA</item>
    </style>

    <style name="CustomTextEditorThemeBlue">
        <item name="colorControlActivated">#3148CA</item>
        <item name="android:editTextColor">#4A4949</item>
        <item name="android:textColorSecondary">#D9D9D9</item>
    </style>

    <style name="CustomIntegerEditorThemeBlue">
        <item name="colorControlActivated">#3148CA</item>
    </style>

    <style name="CustomSeekBarEditorThemeBlue">
        <item name="colorAccent">#3148CA</item>
    </style>

    <style name="CustomToggleButtonEditorThemeBlue">
        <item name="colorAccent">#3148CA</item>
        <item name="android:textColor">#4A4949</item>
    </style>

    <style name="CustomSpinnerEditorThemeBlue">
        <item name="android:spinnerItemStyle">@style/SpinnerItem</item>
        <item name="android:spinnerDropDownItemStyle">@style/SpinnerItem.DropDownItem</item>
        <item name="colorControlActivated">#3148CA</item>
        <item name="android:textColorSecondary">#D9D9D9</item>
    </style>

    <style name="SpinnerItem" parent="@android:style/Widget.TextView.SpinnerItem">
        <item name="android:textColor">#4A4949</item>
    </style>

    <style name="SpinnerItem.DropDownItem" parent="@android:style/Widget.TextView.SpinnerItem">
        <item name="android:textColor">#3148CA</item>
    </style>

In case you need to modify a specific style of the above, you can copy that style into the **Resources/values/styles.xml** file within the Android Project of the Xamarin.Forms solution and change the colors there. 

#### Example: Changing CheckBoxEditor's Background color to Orange:

Simply copy the whole CustomCheckBoxEditorThemeBlue style and place it at the bottom of the styles.xml file located in the Resources/values folder of the Android Project. Eventually, you can change the colors to orange:

	<?xml version="1.0" encoding="utf-8" ?>
	<resources>
	
	   . . .
	  <style name="CustomCheckBoxEditorThemeBlue">
	        <item name="colorControlNormal">#FFA500</item>
	        <item name="colorControlActivated">#FFA500</item>
	  </style>
	</resources>

Here is the appearance of the CheckBoxEditor once this style is added:

![](images/dataform_modified_editors.png)

## See Also
- [Autocomplete editor in Android]({%slug dataform-howto-use-native-editors-android%})
- [Email and Password Editors in iOS]({%slug dataform-howto-use-native-editors-ios%})
- [Editors]({%slug dataform-editors%})
- [Members]({%slug dataform-members%})