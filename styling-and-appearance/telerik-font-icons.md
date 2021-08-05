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
| <span class="icon-badge-available"></span> badge-available |  __\&#xe85b;__ | <span class="icon-badge-away"></span> badge-away | __\&#xe85c;__ | <span class="icon-badge-busy"></span> badge-busy | __\&#xe85a;__ |
| <span class="icon-badge-add"></span> badge-add | __\&#xe857;__ | <span class="icon-badge-delete"></span> badge-delete| __\&#xe858;__ | <span class="icon-badge-NA"></span> badge-NA | __\&#xe856;__ |
| <span class="icon-badge-ooo"></span> badge-ooo | __\&#xe85d;__ | <span class="icon-sort_descent"></span> sort_descent | __\&#xe800;__ | <span class="icon-spinner2"></span> spinner | __\&#xe801;__ |
| <span class="icon-filter"></span> filter | __\&#xe802;__ | <span class="icon-sort_ascent"></span> sort_ascent |  __\&#xe803;__ | <span class="icon-group"></span> group |  __\&#xe804;__ |
| <span class="icon-right-open-big"></span> right-open | __\&#xe805;__ | <span class="icon-right-dir"></span> right-dir |  __\&#xe806;__ | <span class="icon-dots_vert"></span> dots-vertical |  __\&#xe807;__ |
| <span class="icon-menu"></span> menu | __\&#xe808;__ | <span class="icon-check"></span> check |  __\&#xe809;__ | <span class="icon-cancel"></span> cancel |  __\&#xe80a;__ |
| <span class="icon-dot"></span> dot | __\&#xe80b;__ | <span class="icon-dot-3"></span> dots-horizontal |  __\&#xe80c;__ | <span class="icon-down-dir"></span> down-dir |  __\&#xe80d;__ |
| <span class="icon-left-open-big"></span> left-open | __\&#xe80e;__ | <span class="icon-cog"></span> configure |  __\&#xe80f;__ | <span class="icon-search"></span> search |  __\&#xe810;__ |
| <span class="icon-up-dir"></span> up-dir | __\&#xe811;__ | <span class="icon-down-open-big"></span> down-open |  __\&#xe812;__ | <span class="icon-up-open-big"></span> up-open |  __\&#xe813;__ |
| <span class="icon-right-dir-outlines"></span> right-dir-outlines | __\&#xe814;__ | <span class="icon-brightness"></span> brightness |  __\&#xe815;__ | <span class="icon-down-dir-outlines "></span> down-dir-outlines  |  __\&#xe816;__ |
| <span class="icon-expand"></span> expand | __\&#xe817;__ | <span class="icon-zoom-in"></span> zoom-in |  __\&#xe817;__ | <span class="icon-zoom-out"></span> zoom-out |  __\&#xe818;__ |
| <span class="icon-rotate-cw"></span> rotate | __\&#xe81a;__ | <span class="icon-highlight-color"></span> highlight-color |  __\&#xe81b;__ | <span class="icon-file"></span> file |  __\&#xe81c;__ |
| <span class="icon-files"></span> files | __\&#xe81d;__ | <span class="icon-blur"></span> blur |  __\&#xe81e;__ | <span class="icon-table-delete-column"></span> table-delete-column |  __\&#xe81f;__ |
| <span class="icon-arrow-right"></span> arrow-right | __\&#xe820;__ | <span class="icon-color_saturation"></span> color_saturation |  __\&#xe821;__ | <span class="icon-contrast"></span> contrast |  __\&#xe822;__ |
| <span class="icon-crop-rotate"></span> crop-rotate | __\&#xe823;__ | <span class="icon-crop"></span> crop |  __\&#xe824;__ | <span class="icon-filters-1"></span> filters |  __\&#xe825;__ |
| <span class="icon-flip-horizontal"></span> flip-horizontal | __\&#xe826;__ | <span class="icon-flip-vertical"></span> flip-vertical |  __\&#xe827;__ | <span class="icon-hue"></span> hue |  __\&#xe828;__ |
| <span class="icon-resize"></span> resize | __\&#xe829;__ | <span class="icon-table-add-column-after"></span> table-add-column |  __\&#xe82a;__ | <span class="icon-sharpen"></span> sharpen |  __\&#xe82b;__ |
| <span class="icon-brightness-contrast"></span> brightness-contrast | __\&#xe82c;__ | <span class="icon-undo-1"></span> undo |  __\&#xe82d;__ | <span class="icon-redo"></span> redo |  __\&#xe82e;__ |
| <span class="icon-crop-rotate"></span> crop-rotate | __\&#xe82f;__ | <span class="icon-check-2"></span> check |  __\&#xe830;__ | <span class="icon-arrow-left"></span> arrow-left |  __\&#xe831;__ |
| <span class="icon-image"></span> image | __\&#xe832;__ | <span class="icon-view-code"></span> view-code |  __\&#xe833;__ | <span class="icon-clear-formatting"></span> clear-formatting |  __\&#xe834;__ |
| <span class="icon-list-ordered"></span> list-ordered | __\&#xe835;__ | <span class="icon-list-unordered"></span> list-unordered |  __\&#xe836;__ | <span class="icon-indent-decrease"></span> indent-decrease |  __\&#xe837;__ |
| <span class="icon-indent-increase"></span> indent-increase | __\&#xe838;__ | <span class="icon-align-right"></span> align-right |  __\&#xe839;__ | <span class="icon-align-center"></span> align-center |  __\&#xe83a;__ |
| <span class="icon-align-left"></span> align-left | __\&#xe83b;__ | <span class="icon-rotate-ccw"></span> rotate |  __\&#xe83c;__ | <span class="icon-underlined"></span> underlined |  __\&#xe83d;__ |
| <span class="icon-italic"></span> italic | __\&#xe83e;__ | <span class="icon-bold"></span> bold |  __\&#xe83f;__ | <span class="icon-font-size"></span> font-size |  __\&#xe840;__ |		
| <span class="icon-font-family"></span> font-family | __\&#xe841;__ | <span class="icon-hyperlink"></span> hyperlink |  __\&#xe842;__ | <span class="icon-table"></span> table |  __\&#xe843;__ |	
| <span class="icon-strike"></span> strike | __\&#xe844;__ | <span class="icon-link-external"></span> link-external |  __\&#xe845;__ | <span class="icon-hyperlink-remove"></span> hyperlink-remove |  __\&#xe846;__ |
| <span class="icon-sup-script"></span> sup-script | __\&#xe847;__ | <span class="icon-sub-script"></span> sub-script |  __\&#xe848;__ | <span class="icon-align-justify"></span> align-justify |  __\&#xe849;__ |
| <span class="icon-table-split-cells-vertically"></span> table-split-cells-vertically | __\&#xe84a;__ | <span class="icon-table-split-cells-horizontally"></span> table-split-cells-horizontally |  __\&#xe84b;__ | <span class="icon-table-merge-cells-vertically"></span> table-merge-cells-vertically |  __\&#xe84c;__ |
| <span class="icon-table-merge-cells-horizontally"></span> table-merge-cells-horizontally | __\&#xe84d;__ | <span class="icon-cancel-android"></span> cancel-android |  __\&#xe84e;__ | <span class="icon-table-delete-row"></span> table-delete-row |  __\&#xe84f;__ |
| <span class="icon-table-delete"></span> table-delete | __\&#xe850;__ | <span class="icon-cancel2"></span> cancel |  __\&#xe851;__ | <span class="icon-table-add-column-before"></span> table-add-column-before |  __\&#xe852;__ |
| <span class="icon-table-add-row-after"></span> table-add-row-after | __\&#xe853;__ | <span class="icon-table-add-row-before"></span> table-add-row-before |  __\&#xe854;__ | <span class="icon-table-add"></span> table-add | __\&#xe855;__ | 
|<span class="icon-font-style"></span> cancel |  __\&#xe859;__ | | |

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
