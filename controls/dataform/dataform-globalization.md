---
title: Localization
page_title: DataForm Localization
description: Check our &quot;Localization&quot; documentation article for Telerik DataForm for Xamarin control.
position: 7
slug: dataform-globalization
---

# DataForm Localization

Localizing an application is an important part of any development process as it ensures that your product can reach as many people as possible.The **RadDataForm** control provides a localization mechanism which you can utilize to expand the reach of your audience and automatically visualize different strings for the headers, groups and placeholders depending on the culture of the device.

In the same way as the built-in mechanism for localizing .NET applications uses [RESX files](https://docs.microsoft.com/en-us/previous-versions/visualstudio/visual-studio-2008/ekyft91f(v=vs.90)) and the classes in the **System.Resources** and **System.Globalization** namespaces, the RadDataForm control relies on similar setup to achieve the functionality. In order to localize the visual elements used to represent the properties of RadDataForm's item, you need to set the **DataFormLocalizationManager.Manager** property to use a custom [ResourceManager](https://docs.microsoft.com/en-us/dotnet/api/system.resources.resourcemanager?view=netframework-4.7.2). This ResourceManager can be obtained through the default resx file which holds a list of key/value pairs. This article will show you how to set up the localization.

> You can find information on how to add different resource files to your project on the following link - [String and Image Localization - Adding Resources](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/app-fundamentals/localization/text?tabs=windows#adding-resources)

By adding separate resource files for different cultures you can easily set up the RadDataForm control so that the correct values are applied when the culture of the device is changed. Here are all the steps you need to take:

### 1. Add resource files for the different cultures and fill in the values for the respective languages:

In case you would like the RadDataForm control to support two languages - English and Spanish - you should add a couple of resource files, for example - *DataFormResources.resx* and *DataFormResources.es.resx*. The former will contain the values in English and the latter the values in Spanish. Here is an example:

![Resources added](images/dataformresources.png)

### 2. Map the keys from your resource file to your business object:
 
In order make the connection between the properties of your business object and the keys you have added in the resource file, you should set any of the following properties of the [DisplayOptionsAttribute]({% slug dataform-annotations-display-options%}) - *HeaderResourceKey*, *PlaceholderTextResourceKey*, *GroupResourceKey*. The following class shows such setup:

<snippet id='dataform-globalization-display-options-keys'/>

> Note that the **HomeTown** property does not use the "key" properties, meaning that the values will stay the same for all cultures/languages.

### 3. Set the ResourceManager to be used for the localization:
All that is left is to set the control to use the **ResourceManager** of your default resource file:

<snippet id='dataform-globalization-setting-resourcemanager'/>

>important The custom ResourceManager should be set before initializing the RadDataForm component.
      
Eventually, the **RadDataForm** control will automatically detect the language set to your device and if you have added resource file for that language, it will use the values from it. In case the language is not present in your resources - the values from your default resource file will be used. 

![Resources added](images/spanish_dataform.png)

>important You can find an example on how to localize the RadDataForm control in the RadDataForm/Globalization section within the [SDK Browser application]({%slug developer-focused-examples%}#sdk-browser-application).
>
>You can directly explore the code in the [SDKBrowser Examples repository on GitHub](https://github.com/telerik/xamarin-forms-sdk/tree/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/DataFormControl/GlobalizationCategory/GlobalizationExample).

## See Also

- [Localization and Globalization]({%slug common-localization-and-globalization %})
- [DataForm Editors]({% slug dataform-editors %})
- [Validate and Commit]({% slug dataform-validate-and-commit %})
- [DataForm Annotations]({% slug dataform-annotations-display-options %})
