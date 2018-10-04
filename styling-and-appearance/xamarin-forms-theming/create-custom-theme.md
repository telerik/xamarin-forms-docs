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

```xml
<ResourceDictionary xmlns="http://xamarin.com/schemas/2014/forms"
    xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
    x:Class="Telerik.XamarinForms.Common.BlueResources">
    <!-- AutoComplete -->
    <Color x:Key="TelerikAutoCompleteSelectedTokenBackgroundColor">#3148CA</Color>
    <Color x:Key="TelerikAutoCompleteSelectedTokenStrokeColor">#3148CA</Color>
    <Color x:Key="TelerikAutoCompleteSelectedTokenTextColor">#FFFFFF</Color>
    <Color x:Key="TelerikAutoCompleteSuggestionItemTextColor">#3148CA</Color>
    <Color x:Key="TelerikAutoCompleteBorderColor">#D9D9D9</Color>
    <Color x:Key="TelerikAutoCompleteSuggestionViewBackgroundColor">#F8F8F8</Color>
    <Color x:Key="TelerikAutoCompleteTokenTextColor">#3148CA</Color>
    <Color x:Key="TelerikAutoCompleteTokenStrokeColor">#3148CA</Color>
    <Color x:Key="TelerikAutoCompleteTokenBackgroundColor">#F8F8F8</Color>

    <!-- BusyIndicator -->
    <Color x:Key="TelerikBusyIndicatorContent">#3148CA</Color>

    <!-- Button -->
    <Color x:Key="TelerikButtonBackgroundColor">#3148CA</Color>
    <Color x:Key="TelerikButtonTextColor">White</Color>

    <!-- Calendar -->
    <Color x:Key="TelerikCalendarBasicFontColor">#4A4949</Color>
    <Color x:Key="TelerikCalendarAlternativeFontColor">#919191</Color>
    <Color x:Key="TelerikCalendarMenuBarColor">#F8F8F8</Color>
    <Color x:Key="TelerikCalendarAccentColor1">#3148CA</Color>
    <Color x:Key="TelerikCalendarAccentColor2">#30BCFF</Color>
    <Color x:Key="TelerikCalendarBackgroundColor1">#3D5AFE</Color>
    <Color x:Key="TelerikCalendarBackgroundColor2">#000000</Color>
    <Color x:Key="TelerikCalendarBackgroundColor3">#FFFFFF</Color>

    <!-- Chart -->
    <Color x:Key="TelerikChartAxisColor">#919191</Color>
    <Color x:Key="TelerikChartGridLinesColor">#D9D9D9</Color>

    <!-- Chat -->
    <Color x:Key="TelerikChatIncomingMessageTextColor">#333333</Color>
    <Color x:Key="TelerikChatOutgoingMessageTextColor">#FFFFFF</Color>
    <Color x:Key="TelerikChatIncomingMessageBackgroundColor">#FFFFFF</Color>
    <Color x:Key="TelerikChatOutgoingMessageBackgroundColor">#3148CA</Color>
    <Color x:Key="TelerikChatCardTitleTextColor">#3148CA</Color>
    <Color x:Key="TelerikChatCardActionTextColor">#3148CA</Color>
    <Color x:Key="TelerikChatTypingIndicatorDotsColor">#3148CA</Color>
    <Color x:Key="TelerikChatPickerHeaderBackgroundColor">#F8F8F8</Color>
    <Color x:Key="TelerikChatPickerHeaderTextColor">#3148CA</Color>
    <Color x:Key="TelerikChatPickerOkButtonTextColor">#3148CA</Color>
    <Color x:Key="TelerikChatPickerCancelButtonTextColor">#3148CA</Color>
    <Color x:Key="TelerikChatPickerFooterBackgroundColor">#F8F8F8</Color>
    <Color x:Key="TelerikChatItemPickerSelectedBackgroundColor">Transparent</Color>
    <Color x:Key="TelerikChatItemPickerSelectedBorderColor">#3148CA</Color>
    <Color x:Key="TelerikChatItemPickerSelectedTextColor">#3148CA</Color>

    <!-- CheckBox -->
    <Color x:Key="TelerikCheckBoxCheckedColor">#3148CA</Color>
    <Color x:Key="TelerikCheckBoxCheckedSymbolColor">White</Color>
    <Color x:Key="TelerikCheckBoxIndeterminateColor">#3148CA</Color>
    <Color x:Key="TelerikCheckBoxIndeterminateSymbolColor">White</Color>
    <Color x:Key="TelerikCheckBoxUncheckedColor">#919191</Color>

    <!-- DataForm -->
    <Color x:Key="TelerikDataFormEditorAccentColor">#3148CA</Color>
    <Color x:Key="TelerikDataFormBackgroundColor">White</Color>
    <Color x:Key="TelerikDataFormHeaderFontColor">#919191</Color>
    <Color x:Key="TelerikDataFormEditorBorderColor">#D9D9D9</Color>

    <!-- DataGrid -->
    <Color x:Key="TelerikDataGridAccentColor">#3148CA</Color>

    <!-- Entry -->
    <OnPlatform x:TypeArguments="Color"
                x:Key="TelerikEntryTextColor">
        <On Platform="iOS"
            Value="#020202" />
    </OnPlatform>
    <Color x:Key="TelerikEntryBorderColor">#3148CA</Color>

    <!-- Expander -->
    <Color x:Key="TelerikExpandCollapseIndicatorColor">#3148CA</Color>

    <!-- ListView -->
    <Color x:Key="TelerikListViewItemBorderColor">#D9D9D9</Color>
    <Color x:Key="TelerikListViewSelectionColor">#3148CA</Color>
    <Color x:Key="TelerikListViewBackgroundColor">White</Color>
    <Color x:Key="TelerikListViewForegroundColor">#4A4949</Color>
    <Color x:Key="TelerikListViewGroupHeaderBackgroundColor">#F8F8F8</Color>

    <!-- MaskedInput -->
    <Color x:Key="TelerikMaskedInputBorderColor">#3148CA</Color>
    <Color x:Key="TelerikMaskedInputWatermarkColor">#3148CA</Color>
    <Color x:Key="TelerikMaskedInputErrorColor">#D50002</Color>
    <Color x:Key="TelerikMaskedInputDisplayedTextColor">#4A4949</Color>

    <!-- NonVirtualizedItemsControl -->
    <Color x:Key="TelerikNonVirtualizedItemsControlSelectedBackgroundColor">Transparent</Color>
    <Color x:Key="TelerikNonVirtualizedItemsControlSelectedBorderColor">#3148CA</Color>
    <Color x:Key="TelerikNonVirtualizedItemsControlSelectedTextColor">#3148CA</Color>

    <!-- NumericInput -->
    <Color x:Key="TelerikNumericInputButtonBorderColor">#3148CA</Color>
    <Color x:Key="TelerikNumericInputButtonTextColor">#3148CA</Color>
    <Color x:Key="TelerikNumericInputButtonBackgroundColor">Transparent</Color>
    <Color x:Key="TelerikNumericInputEntryBorderColor">#3148CA</Color>
    <OnPlatform x:TypeArguments="Color"
                x:Key="TelerikNumericInputEntryTextColor">
        <On Platform="iOS"
            Value="#020202" />
    </OnPlatform>

    <!-- Rating -->
    <Color x:Key="TelerikRatingControlAccentColor">#3148CA</Color>

    <!-- SegmentedControl -->
    <Color x:Key="TelerikSegmentControlAccentColor">#3148CA</Color>
    <Color x:Key="TelerikSegmentControlMainColor">#FFFFFF</Color>
    <Color x:Key="TelerikSegmentControlDisabledTextColor">#803148CA</Color>

    <!-- SlideView -->
    <Color x:Key="TelerikSlideViewIndicatorColor">#D9D9D9</Color>
    <Color x:Key="TelerikSlideViewSelectedIndicatorColor">#3148CA</Color>
    <Color x:Key="TelerikSlideViewSlideButtonsColor">#3148CA</Color>

    <!-- TabView-->
    <Color x:Key="TelerikTabViewHeaderItemSelectedColor">#3148CA</Color>

    <!-- TimePicker -->
    <Color x:Key="TelerikTimePickerSelectedBackgroundColor">Transparent</Color>
    <Color x:Key="TelerikTimePickerSelectedBorderColor">#3148CA</Color>
    <Color x:Key="TelerikTimePickerSelectedTextColor">#3148CA</Color>

    <!-- TreeView -->
    <Color x:Key="TelerikTreeViewCheckBoxCheckedColor">#3148CA</Color>
    <Color x:Key="TelerikTreeViewCheckBoxCheckedSymbolColor">White</Color>
    <Color x:Key="TelerikTreeViewCheckBoxIndeterminateColor">#3148CA</Color>
    <Color x:Key="TelerikTreeViewCheckBoxIndeterminateSymbolColor">White</Color>
    <Color x:Key="TelerikTreeViewCheckBoxUncheckedColor">#919191</Color>
    <Color x:Key="TelerikTreeViewItemTextTextColor">Black</Color>
    <Color x:Key="TelerikTreeViewExpandCollapseIndicatorTextColor">#3148CA</Color>
</ResourceDictionary>
```

## Customizing the Colors

You can replace the values of the colors with custom ones. This way you can modify the overall appearance which is applied for the different instances of the controls. In order to do so, you can directly modify some of the default resources. The following example shows how to change the appearance of all **RadListView** instances that use the theme:

```xml
<Application xmlns="http://xamarin.com/schemas/2014/forms"
             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
             xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
             xmlns:telerikDataGrid="clr-namespace:Telerik.XamarinForms.DataGrid;assembly=Telerik.XamarinForms.DataGrid"
             xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
             xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
             xmlns:telerikDataControls="clr-namespace:Telerik.XamarinForms.DataControls;assembly=Telerik.XamarinForms.DataControls"
             xmlns:telerikConversationalUi="clr-namespace:Telerik.XamarinForms.ConversationalUI;assembly=Telerik.XamarinForms.ConversationalUI"
             xmlns:portable="clr-namespace:DuaneThemeDemo.Portable;assembly=MyApplication.Portable"
             xmlns:telerikCommon="clr-namespace:Telerik.XamarinForms.Common;assembly=Telerik.XamarinForms.Common"
             x:Class="MyApplication.Portable.App">
	
    <Application.Resources>
        <ResourceDictionary>
            <ResourceDictionary.MergedDictionaries>
                <ResourceDictionary MergedWith="telerikCommon:BlueResources">
                    <!-- ListView -->
                    <Color x:Key="ListViewItemBorderColor">Orange</Color>
                    <Color x:Key="ListViewSelectionColor">Orange</Color>
                    <Color x:Key="ListViewBackgroundColor">Black</Color>
                    <Color x:Key="ListViewForegroundColor">Orange</Color>
                    <Color x:Key="ListViewSelectionBackgroundColor">Black</Color>
                </ResourceDictionary>

                <!-- Telerik ResourceDictionaries for each namespace that contains controls and styles -->
                <ResourceDictionary MergedWith="telerikInput:TelerikThemeStyles" />
                <ResourceDictionary MergedWith="telerikPrimitives:TelerikThemeStyles" />
                <ResourceDictionary MergedWith="telerikChart:TelerikThemeStyles" />
                <ResourceDictionary MergedWith="telerikDataControls:TelerikThemeStyles" />
                <ResourceDictionary MergedWith="telerikDataGrid:TelerikThemeStyles" />
                <ResourceDictionary MergedWith="telerikConversationalUi:TelerikThemeStyles" />
            </ResourceDictionary.MergedDictionaries>
        </ResourceDictionary>
    </Application.Resources>
</Application>
```

Another possibility is to crate your own **ResourceDictionary** and merge it instead of the default **telerikCommon:BlueResources** one:

```xml
<ResourceDictionary xmlns="http://xamarin.com/schemas/2014/forms"
    xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
    x:Class="MyApplication.MyTheme">
    
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
```

And the code behind of the **ResourceDictionary**:

```csharp
public partial class MyTheme : ResourceDictionary
{
    public Custom ()
    {
        InitializeComponent ();
    }
}
```

Once you have created the custom **ResourceDictionary**, you can replace the default one with the newly created one:

```xml
<Application xmlns="http://xamarin.com/schemas/2014/forms"
             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
             xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
             xmlns:telerikDataGrid="clr-namespace:Telerik.XamarinForms.DataGrid;assembly=Telerik.XamarinForms.DataGrid"
             xmlns:telerikChart="clr-namespace:Telerik.XamarinForms.Chart;assembly=Telerik.XamarinForms.Chart"
             xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
             xmlns:telerikDataControls="clr-namespace:Telerik.XamarinForms.DataControls;assembly=Telerik.XamarinForms.DataControls"
             xmlns:telerikConversationalUi="clr-namespace:Telerik.XamarinForms.ConversationalUI;assembly=Telerik.XamarinForms.ConversationalUI"
             xmlns:portable="clr-namespace:DuaneThemeDemo.Portable;assembly=MyApplication.Portable"
             x:Class="MyApplication.Portable.App">
	
	<Application.Resources>
        <ResourceDictionary>
            <ResourceDictionary.MergedDictionaries>
                <!-- Your custom ResourceDictionary -->
                <ResourceDictionary MergedWith="portable:MyTheme"/>

                <!-- Telerik ResourceDictionaries for each namespace that contains controls and styles -->
                <ResourceDictionary MergedWith="telerikInput:TelerikThemeStyles" />
                <ResourceDictionary MergedWith="telerikPrimitives:TelerikThemeStyles" />
                <ResourceDictionary MergedWith="telerikChart:TelerikThemeStyles" />
                <ResourceDictionary MergedWith="telerikDataControls:TelerikThemeStyles" />
                <ResourceDictionary MergedWith="telerikDataGrid:TelerikThemeStyles" />
                <ResourceDictionary MergedWith="telerikConversationalUi:TelerikThemeStyles" />
            </ResourceDictionary.MergedDictionaries>
        </ResourceDictionary>
	</Application.Resources>
</Application>
``

>important In case you need to modify the default resources of the TelerikTheme for the **RadDataForm** control, please refer to the following article - [DataForm: Modifying TelerikTheme resources]({%slug dataform-howto-modify-theme-resources%})

**Figure 1** shows the appearance of the **RadListView** once the changes are applied:

![custom theme](../images/custom-theme.png)

## See Also

* [How To Set a Theme]({%slug common-setting-a-theme%})
* [Themes Overview]({%slug common-themes-overview%})
