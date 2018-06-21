---
title: Modifying the Default Theme
page_title: Modifying the Default Theme
slug: common-modifying-default-theme
position: 3
---

# How to Create a Custom Theme Based on a Telerik Theme

This article provides more information on the default resources structure and how to modify them and create a custom theme which is based on the Telerik Theme.

## Blue Theme Default Resources

The default resources are located in the **Telerik.XamarinForms.Common** assembly and you need to merge them in your application's resources in order to apply the theme. Below is the definition of the resources and respectively the default colors that are used for the different controls:

	<ResourceDictionary xmlns="http://xamarin.com/schemas/2014/forms"
             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
             x:Class="Telerik.XamarinForms.Common.BlueResources">

    <!-- Chart -->
    <Color x:Key="ChartAxisColor">#919191</Color>
    <Color x:Key="ChartGridLinesColor">#D9D9D9</Color>

    <!-- ListView -->
    <Color x:Key="ListViewItemBorderColor">#D9D9D9</Color>
    <Color x:Key="ListViewSelectionColor">#3148CA</Color>
    <Color x:Key="ListViewBackgroundColor">White</Color>
    <Color x:Key="ListViewForegroundColor">#4A4949</Color>
    <Color x:Key="ListViewSelectionBackgroundColor">#F8F8F8</Color>
    
    <!-- Grid -->
    <Color x:Key="DataGridAccentColor">#3148CA</Color>

    <!-- Calendar -->
    <Color x:Key="CalendarBasicFontColor">#4A4949</Color>
    <Color x:Key="CalendarAlternativeFontColor">#919191</Color>
    <Color x:Key="CalendarGridColor">#D9D9D9</Color>
    <Color x:Key="CalendarMenuBarColor">#F8F8F8</Color>
    <Color x:Key="CalendarAccentColor1">#3148CA</Color>
    <Color x:Key="CalendarAccentColor2">#30BCFF</Color>
    <Color x:Key="CalendarBackgroundColor1">#3D5AFE</Color>
    <Color x:Key="CalendarBackgroundColor2">#000000</Color>
    <Color x:Key="CalendarBackgroundColor3">#FFFFFF</Color>
    <Color x:Key="CalendarComplementaryColor1">#FF5225</Color>
    <Color x:Key="CalendarComplementaryColor2">#FFC325</Color>

    <!-- DataForm -->
    <Color x:Key="DataFormEditorAccentColor">#3148CA</Color>
    <Color x:Key="DataFormBackgroundColor">White</Color>
    <Color x:Key="DataFormHeaderFontColor">#919191</Color>
    <Color x:Key="DataFormEditorBorderColor">#D9D9D9</Color>
    
    <!-- MaskedInput -->
    <Color x:Key="MaskedInputBorderColor">#D9D9D9</Color>
    <Color x:Key="MaskedInputWatermarkColor">#919191</Color>
    <Color x:Key="MaskedInputErrorColor">#D50002</Color>
    <Color x:Key="MaskedInputDisplayedTextColor">#4A4949</Color>

    <!-- SegmentedControl -->
    <Color x:Key="SegmentControlAccentColor">#3148CA</Color>
    <Color x:Key="SegmentControlMainColor">#FFFFFF</Color>

    <!-- Rating -->
    <Color x:Key="RatingControlAccentColor">#3148CA</Color>

    <!-- AutoComplete -->
    <Color x:Key="AutoCompleteSelectedTokenBackgroundColor">#3148CA</Color>
    <Color x:Key="AutoCompleteSelectedTokenStrokeColor">#3148CA</Color>
    <Color x:Key="AutoCompleteSelectedTokenTextColor">#FFFFFF</Color>

    <Color x:Key="AutoCompleteSuggestionItemTextColor">#3148CA</Color>
    <Color x:Key="AutoCompleteBorderColor">#D9D9D9</Color>
    <Color x:Key="AutoCompleteSuggestionViewBackgroundColor">#F8F8F8</Color>

    <OnPlatform x:Key="AutoCompleteTokenBackgroundColor" x:TypeArguments="Color">
        <On Platform="Android" Value="#F8F8F8" />
        <On Platform="iOS" Value="#4A4949" />
    </OnPlatform>

    <OnPlatform x:Key="AutoCompleteTokenTextColor" x:TypeArguments="Color">
        <On Platform="Android" Value="#7C7C7C" />
        <On Platform="iOS" Value="#F8F8F8" />
    </OnPlatform>

    <OnPlatform x:Key="AutoCompleteTokenStrokeColor" x:TypeArguments="Color">
        <On Platform="Android" Value="#7C7C7C" />
        <On Platform="iOS" Value="Transparent" />
    </OnPlatform>

    <!-- TabView-->
    <Color x:Key="ToolbarItemSelected">#3148CA</Color>

    <!-- BusyIndicator -->
    <Color x:Key="BusyIndicatorContent">#3148CA</Color>

    <!-- SlideView -->
    <Color x:Key="SlideViewIndicator">#D9D9D9</Color>
    <Color x:Key="SlideViewSelectedIndicator">#3148CA</Color>
    <Color x:Key="SlideViewPreviousItemButton">#3148CA</Color>

	</ResourceDictionary>

## Customizing the Colors

You can replace the values of the colors with custom ones. This way you can modify the overall appearance which is applied for the different instances of the controls. In order to do so, you can directly modify some of the default resources. The following example shows how to change the appearance of all **RadListView** instances that use the theme:

	<telerikCommon:RadResourceDictionary>
            <telerikCommon:RadResourceDictionary.MergedDictionaries>
                <ResourceDictionary MergedWith="telerikCommon:BlueResources">
                    <!-- ListView -->
                    <Color x:Key="ListViewItemBorderColor">Orange</Color>
                    <Color x:Key="ListViewSelectionColor">Orange</Color>
                    <Color x:Key="ListViewBackgroundColor">Black</Color>
                    <Color x:Key="ListViewForegroundColor">Orange</Color>
                    <Color x:Key="ListViewSelectionBackgroundColor">Black</Color>
                </ResourceDictionary>
                
                <ResourceDictionary MergedWith="telerikInput:TelerikThemeStyles"/>
                <ResourceDictionary MergedWith="primitives:TelerikThemeStyles"/>
                <ResourceDictionary MergedWith="chart:TelerikThemeStyles"/>
                <ResourceDictionary MergedWith="telerikDataControls:TelerikThemeStyles" />
                <ResourceDictionary MergedWith="dataGrid:TelerikThemeStyles"/>
            </telerikCommon:RadResourceDictionary.MergedDictionaries>
        </telerikCommon:RadResourceDictionary>


Another possibility is to crate your own **ResourceDictionary** and merge it instead of the default **telerikCommon:BlueResources** one:

	<ResourceDictionary xmlns="http://xamarin.com/schemas/2014/forms"
             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
             x:Class="Examples.Custom">
    
    <!-- Chart -->
    <Color x:Key="ChartAxisColor">#919191</Color>
    <Color x:Key="ChartGridLinesColor">#D9D9D9</Color>

    <!-- ListView -->
    <Color x:Key="ListViewItemBorderColor">Orange</Color>
    <Color x:Key="ListViewSelectionColor">Orange</Color>
    <Color x:Key="ListViewBackgroundColor">Black</Color>
    <Color x:Key="ListViewForegroundColor">Orange</Color>
    <Color x:Key="ListViewSelectionBackgroundColor">Black</Color>

    <!-- Grid -->
    <Color x:Key="DataGridAccentColor">#3148CA</Color>

    <!-- Calendar -->
    <Color x:Key="CalendarBasicFontColor">#4A4949</Color>
    <Color x:Key="CalendarAlternativeFontColor">#919191</Color>
    <Color x:Key="CalendarGridColor">#D9D9D9</Color>
    <Color x:Key="CalendarMenuBarColor">#F8F8F8</Color>
    <Color x:Key="CalendarAccentColor1">#3148CA</Color>
    <Color x:Key="CalendarAccentColor2">#30BCFF</Color>
    <Color x:Key="CalendarBackgroundColor1">#3D5AFE</Color>
    <Color x:Key="CalendarBackgroundColor2">#000000</Color>
    <Color x:Key="CalendarBackgroundColor3">#FFFFFF</Color>
    <Color x:Key="CalendarComplementaryColor1">#FF5225</Color>
    <Color x:Key="CalendarComplementaryColor2">#FFC325</Color>

    <!-- DataForm -->
    <Color x:Key="DataFormEditorAccentColor">#3148CA</Color>
    <Color x:Key="DataFormBackgroundColor">White</Color>
    <Color x:Key="DataFormHeaderFontColor">#919191</Color>
    <Color x:Key="DataFormEditorBorderColor">#D9D9D9</Color>

    <!-- MaskedInput -->
    <Color x:Key="MaskedInputBorderColor">#D9D9D9</Color>
    <Color x:Key="MaskedInputWatermarkColor">#919191</Color>
    <Color x:Key="MaskedInputErrorColor">#D50002</Color>
    <Color x:Key="MaskedInputDisplayedTextColor">#4A4949</Color>

    <!-- SegmentedControl -->
    <Color x:Key="SegmentControlAccentColor">#3148CA</Color>
    <Color x:Key="SegmentControlMainColor">#FFFFFF</Color>

    <!-- Rating -->
    <Color x:Key="RatingControlAccentColor">#3148CA</Color>

    <!-- AutoComplete -->
    <Color x:Key="AutoCompleteSelectedTokenBackgroundColor">#3148CA</Color>
    <Color x:Key="AutoCompleteSelectedTokenStrokeColor">#3148CA</Color>
    <Color x:Key="AutoCompleteSelectedTokenTextColor">#FFFFFF</Color>

    <Color x:Key="AutoCompleteSuggestionItemTextColor">#3148CA</Color>
    <Color x:Key="AutoCompleteBorderColor">#D9D9D9</Color>
    <Color x:Key="AutoCompleteSuggestionViewBackgroundColor">#F8F8F8</Color>

    <OnPlatform x:Key="AutoCompleteTokenBackgroundColor" x:TypeArguments="Color">
        <On Platform="Android" Value="#F8F8F8" />
        <On Platform="iOS" Value="#4A4949" />
    </OnPlatform>

    <OnPlatform x:Key="AutoCompleteTokenTextColor" x:TypeArguments="Color">
        <On Platform="Android" Value="#7C7C7C" />
        <On Platform="iOS" Value="#F8F8F8" />
    </OnPlatform>

    <OnPlatform x:Key="AutoCompleteTokenStrokeColor" x:TypeArguments="Color">
        <On Platform="Android" Value="#7C7C7C" />
        <On Platform="iOS" Value="Transparent" />
    </OnPlatform>

    <!-- TabView-->
    <Color x:Key="ToolbarItemSelected">#3148CA</Color>

    <!-- BusyIndicator -->
    <Color x:Key="BusyIndicatorContent">#3148CA</Color>

    <!-- SlideView -->
    <Color x:Key="SlideViewIndicator">#D9D9D9</Color>
    <Color x:Key="SlideViewSelectedIndicator">#3148CA</Color>
    <Color x:Key="SlideViewPreviousItemButton">#3148CA</Color>
	</ResourceDictionary>

And the code behind of the **ResourceDictionary**:

	public partial class Custom : ResourceDictionary
	{
		public Custom ()
		{
			InitializeComponent ();
		}
	}

Once you have created the custom **ResourceDictionary**, you can replace the default one with the newly created one:

	<telerikCommon:RadResourceDictionary.MergedDictionaries>
        <ResourceDictionary MergedWith="local:Custom"></ResourceDictionary>
        <ResourceDictionary MergedWith="telerikInput:TelerikThemeStyles"/>
        <ResourceDictionary MergedWith="primitives:TelerikThemeStyles"/>
        <ResourceDictionary MergedWith="chart:TelerikThemeStyles"/>
        <ResourceDictionary MergedWith="telerikDataControls:TelerikThemeStyles" />
        <ResourceDictionary MergedWith="dataGrid:TelerikThemeStyles"/>
    </telerikCommon:RadResourceDictionary.MergedDictionaries>

>important In case you need to modify the default resources of the TelerikTheme for the **RadDataForm** control, please refer to the following article - [DataForm: Modifying TelerikTheme resources]({%slug dataform-howto-modify-theme-resources%})

**Figure 1** shows the appearance of the **RadListView** once the changes are applied:

![custom theme](../images/custom-theme.png)

## See Also

* [How To Set a Theme]({%slug common-setting-a-theme%})
* [Themes Overview]({%slug common-themes-overview%})