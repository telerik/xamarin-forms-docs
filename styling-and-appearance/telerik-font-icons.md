---
title: Telerik Font Icons
page_title: Telerik Font Icons
slug: telerik-font-icons
position: 2
---

## Telerik Font Icons

This article will guide you through the steps needed to change the default icons from your app using the Telerik Font Icons.

* Include the required Telerik Font file
* Add the font path
* Available Telerik Icons


## Include the required Telerik Font file

The Telerik Font Icons are located in the telerikfontexamples.ttl file. There are two options you could use to get the **.ttf** file.

* Download the **telerikfontexamples.ttl** file from [here](https://github.com/telerik/telerik-xamarin-forms-samples/blob/master/_Samples%20Application/QSF.Android/Assets/Fonts/telerikfontexamples.ttf).

* From the installation folder of the controls: The default location of the **telerikfontexamples.ttf** file is *C:\Program Files (x86)\Progress\Telerik UI for Xamarin R3 2018\QSF\QSF.Android\Assets\Fonts*

In order to change the default icon you should include Telerik Font **.ttf** file into your project to the following locations:

* Android project: Create **Fonts** folder inside the Android **Assets** and add the **.ttf** file there. 

* iOS project: Create **Fonts** folder inside the Android **Resources** and add the **.ttf** file there.
Also you need to modify the info.plist file inside the iOS project with adding the following code:

```xml
<key>UIAppFonts</key>
  <array>
    <string>Fonts/telerikfontexamples.ttf</string>
```

* UWP project: Create **Fonts** folder inside the UWP **Assets** and add the **.ttf** file there.


## Add the font path

As a final step you need to add the path to the Fonts inside the Resources of the App.xaml file:

```XAML
<Application.Resources>
        <ResourceDictionary>
            <x:String x:Key="icon's name">icon's code;</x:String>

            <OnPlatform x:TypeArguments="x:String" x:Key="IconsFont">
                <On Platform="iOS">telerikfontexamples</On>
                <On Platform="Android">Fonts/telerikfontexamples.ttf#telerikfontexamples</On>
                <On Platform="UWP">/Assets/Fonts/telerikfontexamples.ttf#telerikfontexamples</On>
            </OnPlatform>
        </ResourceDictionary>
</Application.Resources>
```

## Available Telerik Font Icons

You can replace the current icon with one of the available Telerik Font icons: 

![Telerik Font Icons](images/telerik-font-icons.png)

>important You need to set the Telerik Font Icons code on the concreate property to visualize the icon. 

The icon's code is:

![Telerik Font Icons Code](images/telerik-font-icons-codes.png)

##Example

If you want to change the default icon of the RadDataGrid OptionsButton with one of the following icons above, set the icon code to the OptionsButtonText property:

The gear icon's code is: **0xe80f** and the final code result that should be set to the OptionsButtonText property is **&amp;#xE80F;**

You have to 
* replace the **0x** with **&#x** 
* capitalize all the letters
* put a semicolon at the end of the string

```XAML
<telerikGrid:DataGridTextColumn.HeaderStyle>
                    <telerikGrid:DataGridColumnHeaderStyle OptionsButtonText="&#xE80F;"/>
                </telerikGrid:DataGridTextColumn.HeaderStyle>
```
## See Also

* [How To Set a Theme]({%slug common-setting-a-theme%})
* [Themes Overview]({%slug common-themes-overview%})
