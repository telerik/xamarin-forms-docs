---
title: Email and Password editors in iOS
page_title: Email and Password editors in iOS
slug: dataform-howto-use-native-editors-ios
position: 1
---

## Email and Password editors on iOS

This example will demonstrate how to add custom editors in iOS DataForm.

First, create a sample class.
 
<snippet id='dataform-howto-emailpasswordeditors-source' />

Then, setup the source and register the editor types.
 
<snippet id='dataform-howto-emailpasswordeditors-code' />

After that, you have to inherit from the default **DataFormRenderer** and override some of its methods.

<snippet id='dataform-howto-emailpasswordeditors-renderer' />

Finally, replace the default **DataFormRenderer** with the new one in **AppDelegate.cs**:

```XAML
[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(EmailPasswordEditorsRenderer))]
```
You could check the result below:

![DataForm Custom Renderer iOS](images/dataform-custom-renderer-ios.png)
		
## See Also
- [Autocomplete editor in Android]({%slug dataform-howto-use-native-editors-android%})
- [Editors]({%slug dataform-editors%})