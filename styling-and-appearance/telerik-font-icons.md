---
title: Telerik Font Icons
page_title: Xamarin.Forms Styling and Appearance - Font Icons
description: Telerik font icons is a collection of small vector graphics used across the components from Telerik UI for Xamarin suite.
slug: telerik-font-icons
position: 2
---

<link rel="stylesheet" href="style.css" />

# Telerik UI for Xamarin Font Icons

Telerik font icons is a collection of small vector graphics used across the components from Telerik UI for Xamarin suite. Examples of using font icons include the expand and collapse indicators of Accordion, Expander and TreeView controls, filter and sort indicators of DataGrid control, and other.

This article will give an overview on how you can utilize the Telerik font icons in your app. 

* Include the required Telerik Font file
* Add the font file path
* Choose between the available Telerik icons


## Include the required Telerik Font file

1. The Telerik Font Icons are located in the telerikfontexamples.ttf file. There are two options you could use to get the **.ttf** file.

	* Download the **telerikfontexamples.ttf** file from [Telerik UI for Xamarin Samples App GitHub repo](https://github.com/telerik/telerik-xamarin-forms-samples/blob/master/QSF/QSF.Android/Assets/Fonts/telerikfontexamples.ttf).

	* Get the font file from the installation folder of Telerik UI for Xamarin - here is the path to the exact location: *Telerik UI for Xamarin [version]\QSF\QSF.Android\Assets\Fonts*

2. Include Telerik Font **.ttf** file into your application in the following locations:

	* Android project: Create **Fonts** folder inside the Android **Assets** and add the **.ttf** file there. 

	* iOS project: Create **Fonts** folder inside the iOS **Resources** and add the **.ttf** file there.

	You'd also need to modify the info.plist file inside the iOS project with adding the following code:

	```xml
	<key>UIAppFonts</key>
	  <array>
		<string>Fonts/telerikfontexamples.ttf</string>
	  </array>
	```

	* UWP project: Create **Fonts** folder inside the UWP **Assets** and add the **.ttf** file there.


## Add the font file path

As a final step you need to add the path to the Fonts inside the Resources of the App.xaml file of the Xamarin.Forms project:

```XAML
<Application.Resources>
        <ResourceDictionary>          
            <OnPlatform x:TypeArguments="x:String" x:Key="IconsFont">
                <On Platform="iOS">telerikfontexamples</On>
                <On Platform="Android">Fonts/telerikfontexamples.ttf#telerikfontexamples</On>
                <On Platform="UWP">/Assets/Fonts/telerikfontexamples.ttf#telerikfontexamples</On>
            </OnPlatform>
        </ResourceDictionary>
</Application.Resources>
```

## Choose between the available Telerik icons

You can choose any of the available Telerik Font icons: 

| Telerik Font Icons |  |  | | | | 
|--------------------|----------------|------------|---------------------|-------------------|----------------|
| <span class="icon-sort_descent"></span> sort descent | __\&#xe800;__ | <span class="icon-star-empty"></span> star-empty | __\&#xe801;__ | <span class="icon-filter"></span> filter | __\&#xe802;__ |
| <span class="icon-sort_ascent"></span> sort ascent | __\&#xe803;__ | <span class="icon-group"></span> group | __\&#xe804;__ | <span class="icon-star"></span> star | __\&#xe805;__ |
| <span class="icon-right-dir"></span> right-dir | __\&#xe806;__ | <span class="icon-dots_vert"></span> dots vert | __\&#xe807;__ | <span class="icon-menu"></span> menu | __\&#xe808;__ |
| <span class="icon-check"></span> check | __\&#xe809;__ | <span class="icon-cancel"></span> cancel | __\&#xe80a;__ | <span class="icon-dot"></span> dot | __\&#xe80b;__ |
| <span class="icon-dot-3"></span> dot-3 | __\&#xe80c;__ | <span class="icon-down-dir"></span> down-dir | __\&#xe80d;__ | <span class="icon-left-open-big"></span> left-open-big | __\&#xe80e;__ |
| <span class="icon-cog"></span> configure | __\&#xe80f;__ | <span class="icon-search"></span> search | __\&#xe810;__ | <span class="icon-up-dir"></span> up-dir | __\&#xe811;__ |
| <span class="icon-pattern"></span> pattern | __\&#xe812;__ | <span class="icon-add"></span> add | __\&#xe813;__ | <span class="icon-right-dir-outlines"></span> right-dir-outlines | __\&#xe814;__ |
| <span class="icon-info"></span> info | __\&#xe815;__ | <span class="icon-down-dir-outlines"></span> down-dir-outlines | __\&#xe816;__ | <span class="icon-bin-solid"></span> bin-solid | __\&#xe817;__ |
| <span class="icon-edit"></span> edit | __\&#xe818;__ | <span class="icon-copy"></span> copy | __\&#xe819;__ | <span class="icon-arrow-up"></span> arrow-up | __\&#xe81a;__ |
| <span class="icon-airplane"></span> airplane | __\&#xe81c;__ | <span class="icon-pdf"></span> pdf | __\&#xe81d;__ | <span class="icon-encoding-1"></span> encoding | __\&#xe81e;__ |
| <span class="icon-length"></span> length | __\&#xe81f;__ | <span class="icon-arrow-right"></span> arrow-right | __\&#xe820;__ | <span class="icon-contacts"></span> contacts | __\&#xe821;__ |
| <span class="icon-cog-outlines"></span> cog-outlines | __\&#xe822;__ | <span class="icon-type"></span> type | __\&#xe823;__ | <span class="icon-location"></span> location | __\&#xe824;__ |
| <span class="icon-link"></span> link | __\&#xe825;__ | <span class="icon-archive"></span> archive | __\&#xe826;__ | <span class="icon-bin"></span> bin | __\&#xe827;__ |
| <span class="icon-draft"></span> draft | __\&#xe828;__ | <span class="icon-folder-open"></span> folder-open | __\&#xe829;__ | <span class="icon-folder"></span> folder | __\&#xe82a;__ |
| <span class="icon-group-1"></span> group | __\&#xe82b;__ | <span class="icon-item"></span> item | __\&#xe82c;__ | <span class="icon-sent"></span> sent | __\&#xe82d;__ |
| <span class="icon-spam"></span> spam | __\&#xe82e;__ | <span class="icon-warning"></span> warning | __\&#xe82f;__ | <span class="icon-lock"></span> lock | __\&#xe830;__ |
| <span class="icon-thickness"></span> thickness | __\&#xe831;__ | <span class="icon-car"></span> car | __\&#xe832;__ | <span class="icon-shopping-bag"></span> shopping-bag | __\&#xe833;__ |
| <span class="icon-coffee-cup"></span> coffee-cup | __\&#xe834;__ | <span class="icon-get-money"></span> get-money | __\&#xe835;__ | <span class="icon-user"></span> shopping-user | __\&#xe836;__ |
| <span class="icon-group_users"></span> group users | __\&#xe837;__ | <span class="icon-dashboard"></span> dashboard | __\&#xe838;__ | <span class="icon-location-1"></span> location | __\&#xe83d;__ |
| <span class="icon-link-1"></span> link | __\&#xe83e;__ | <span class="icon-assets"></span> assets | __\&#xe846;__ | <span class="icon-book"></span> book | __\&#xe847;__ |
| <span class="icon-design"></span> design | __\&#xe848;__ | <span class="icon-graphics"></span> graphics | __\&#xe849;__ | <span class="icon-image"></span> image | __\&#xe84a;__ |
| <span class="icon-font-size"></span> font-size | __\&#xe84b;__ | <span class="icon-template"></span> template | __\&#xe84c;__ | <span class="icon-wireframes"></span> wireframes | __\&#xe84d;__ |
| <span class="icon-distance2"></span> distance | __\&#xe84e;__ | <span class="icon-stopwatch"></span> stopwatch | __\&#xe84f;__ | <span class="icon-play"></span> play | __\&#xe850;__ |
| <span class="icon-cancel2"></span> cancel | __\&#xe851;__ | <span class="icon-picture"></span> picture | __\&#xe852;__ | <span class="icon-text"></span> text | __\&#xe853;__ |
| <span class="icon-code"></span> code | __\&#xe854;__ | <span class="icon-analysis"></span> analysis | __\&#xe855;__ | <span class="icon-network"></span> network | __\&#xe856;__ |
| <span class="icon-network2"></span> network | __\&#xe857;__ | <span class="icon-bar-chart"></span> bar-chart | __\&#xe858;__ | <span class="icon-sap"></span> sap | __\&#xe859;__ |
| <span class="icon-dba"></span> dba | __\&#xe85a;__ | <span class="icon-home"></span> home | __\&#xe85b;__ | <span class="icon-temperature"></span> temperature | __\&#xe85c;__ |
| <span class="icon-phone1"></span> phone | __\&#xe85d;__ | <span class="icon-electricity"></span> electricity | __\&#xe85e;__ | <span class="icon-wifi"></span> wifi | __\&#xe85f;__ |
| <span class="icon-distance-horizontal"></span> distance-horizontal | __\&#xe860;__ | <span class="icon-calendar_dayview"></span> calendar dayview | __\&#xe861;__ | <span class="icon-calendar_multiday"></span> calendar multiday | __\&#xe862;__ |
| <span class="icon-calendar_week"></span> calendar week | __\&#xe863;__ | <span class="icon-calendar_month"></span> calendar month | __\&#xe864;__ | <span class="icon-calendar_year2"></span> calendar year | __\&#xe865;__ |
| <span class="icon-calendar_selection_single"></span> calendar selection single | __\&#xe866;__ | <span class="icon-calendar_selection_multiple"></span> calendar selection multiple | __\&#xe867;__ | <span class="icon-calendar_selection_range"></span> calendar selection range | __\&#xe868;__ |
| <span class="icon-gallery"></span> gallery | __\&#xe869;__ | <span class="icon-camera"></span> camera | __\&#xe86a;__ | <span class="icon-crop_free"></span> crop free | __\&#xe86b;__ |
| <span class="icon-crop_original"></span> crop original | __\&#xe86c;__ | <span class="icon-crop_rect"></span> crop rect | __\&#xe86d;__ | <span class="icon-crop_circular"></span> crop circular | __\&#xe86e;__ |
| <span class="icon-badge"></span> badge | __\&#xe86f;__ | <span class="icon-notes"></span> notes | __\&#xe870;__ | <span class="icon-time"></span> time | __\&#xe871;__ |
| <span class="icon-calendar_agenda"></span> calendar agenda | __\&#xe872;__ | <span class="icon-arrows"></span> arrows | __\&#xe873;__ | <span class="icon-video-camera"></span> video-camera | __\&#xe87;__ |
| <span class="icon-check-3"></span> check | __\&#xe876;__ | <span class="icon-cancel-3"></span> cancel | __\&#xe877;__ | <span class="icon-time-3"></span> time | __\&#xe878;__ |
| <span class="icon-arrow-down"></span> arrow-down | __\&#xe879;__ | <span class="icon-flag"></span> flag | __\&#xe87a;__ | <span class="icon-save"></span> save | __\&#xe87b;__ |
| <span class="icon-share"></span> share | __\&#xe87c;__ | <span class="icon-menu-custom"></span> menu-custom | __\&#xe87d;__ | <span class="icon-heart-filled"></span> heart-filled | __\&#xe87e;__ |
| <span class="icon-heart-empty"></span> heart-empty | __\&#xe87f;__ | <span class="icon-reorder"></span> reorder | __\&#xe881;__ | <span class="icon-arrow-box-left"></span> arrow-box-left | __\&#xe882;__ |
| <span class="icon-arrow-box-right"></span> arrow-box-right | __\&#xe883;__ | <span class="icon-bell-empty"></span> bell-empty | __\&#xe901;__ | <span class="icon-chat"></span> chat | __\&#xe903;__ |
| <span class="icon-phone"></span> phone | __\&#xe904;__ | <span class="icon-menu-1"></span> menu | __\&#xf008;__ | <span class="icon-link-ext"></span> link-external | __\&#xf08e;__ |
| <span class="icon-plus-squared"></span> plus-squared | __\&#xf0fe;__ | <span class="icon-angle-left"></span> angle-left | __\&#xf104;__ | <span class="icon-angle-right"></span> angle-right | __\&#xf105;__ |
| <span class="icon-angle-up"></span> angle-up | __\&#xf106;__ | <span class="icon-angle-down"></span> angle-down | __\&#xf107;__ | <span class="icon-spinner"></span> spinner | __\&#xf110;__ |
| <span class="icon-angle-circled-left-1"></span> angle circled left | __\&#xf137;__ | <span class="icon-angle-circled-right-1"></span> angle circled right | __\&#xf138;__ | <span class="icon-minus-squared"></span> minus-squared | __\&#xf146;__ |
| <span class="icon-minus-squared-alt"></span> minus squared | __\&#xf147;__ | <span class="icon-plus-squared-alt"></span> plus squared | __\&#xf196;__ | <span class="icon-emoji"></span> emoji | __\&#xe900;__ |


>important You need to set the Telerik Font icon code on the concrete property to visualize the icon. 

## Examples

Let's for example change the default icon of the RadDataGrid OptionsButton, used to display the [DataGrid Filtering UI]({%slug datagrid-filtering-overview%}#filtering-ui) with one of the above listed icons (configure icon). DataGrid provides `HeaderStyle` property for its columns and the `DataGridColumnHeaderStyle` exposes OptionsButtonText property responsible for the OptionsButton icon. 

The configure icon's code ends with **e80f;** so this string should be applied to the `OptionsButtonText` property:

```XAML
<telerikGrid:DataGridTextColumn.HeaderStyle>
	<telerikGrid:DataGridColumnHeaderStyle OptionsButtonText="&#xe80f;"/>
</telerikGrid:DataGridTextColumn.HeaderStyle>
```

Here is the result:

![](images/telerik-font-icons-grid.png)

## See Also

* [How To Set a Theme]({%slug common-setting-a-theme%})
* [Themes Overview]({%slug common-themes-overview%})
