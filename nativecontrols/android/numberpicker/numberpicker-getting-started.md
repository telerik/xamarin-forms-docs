---
title: Getting Started
page_title: RadNumberPicker Getting Started  | Telerik UI for Android Documentation
description: This article explains how to start using RadNumberPicker.
slug: number-picker-getting-started
tags: numberpicker, number, picker, overview
position: 1
publish: true
---

# RadNumberPicker: Overview

To use RadNumberPicker a dependency to the **Input** library must be added.
Creating RadNumberPicker is like creating any other widget:
```Java
RadNumberPicker picker = new RadNumberPicker(context);
```
```C#
RadNumberPicker picker = new RadNumberPicker(context);
```

RadNumberPicker can be customized with the following properties:

* **Value** - Setting the value outside the [minimum, maximum] range will result in the value being clamped to that range.
* **Step** - Defines the step by which the value will increase when the plus and minus buttons are pressed. If the [min, max] range is not divisible by the step the number picker
will not be able to reach the maximum or minimum value.
* **Minimum** - Defines the max value of the number picker. The Value can never become more than max.
* **Maximum** - Defines the min value of the number picker. The Value can never become less than min.
* **FormatString** - The format string can be used to specify specific text for RadNumberPicker. The format string functionality is actually composed of three sub properties.
These are SingleFormatString, PluralFormatString and ZeroFormatString. When RadNumberPicker's value is equal to 1 SingleFormatString will be used, ZeroFormatString for 0 and for
the rest of the values PluralFormatString will be used.

Finally RadNumberPicker has **addPropertyChangeListener()** and **removePropertyChangedListener()** methods that can be used to listen for changes in the number picker. For example to
listen for value changes the following code is in order:
```Java
picker.addPropertyChangedListener(new PropertyChangedListener() {
    @Override
    public void onPropertyChanged(String propertyName, Object value) {
        if(propertyName.equals("Value")) {
            double newValue = (Double)value;
            // do something with the new value.
        }
    }
});
```
```C#
picker.AddPropertyChangedListener(new MyPropertyChangedListener());

public class MyPropertyChangedListener : Java.Lang.Object, IPropertyChangedListener {
	public void OnPropertyChanged (string propertyName, Java.Lang.Object value)
	{
		if(propertyName.Equals("Value")) {
			double newValue = (Double)value;
			// do something with the new value.
		}

	}
}
```