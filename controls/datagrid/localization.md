---
title: Localization
page_title: Localization
description: Check our &quot;Localization&quot; documentation article for Telerik DataGrid for Xamarin control.
position: 7
slug: datagrid-features-localization
---

# Localization #

**RadDataGrid** supports localization (the translation of application resources into localized versions for the specific cultures or into customized resources). In order to apply the localization you need to update the TelerikLocalizationManager.Manager by either creating a custom localization manager or set its **ResourceManager** property.

## Custom TelerikLocalizationManager

You should create a custom class that inherits from **TelerikLocalizationManager** and override the **GetString()** method:

<snippet id='datagrid-custom-localizationmanager-csharp'/>

Eventually, you should set it as the **TelerikLocalizationManager.Manager**:

<snippet id='datagrid-setting-the-custom-manager-csharp'/>

>important You should set the custom manager before the InitializeComponent() method is invoked otherwise the default values will be applied to the RadDataGrid.

**Figure 1** shows the appearance of the filtering component within the RadDataGrid after the custom localization manager is applied.

#### Figure 1: Custom Localization Manager
![custom localization manager](images/datagrid_localization.png)

## Custom ResourceManager

The second option for applying localization is through setting a custom **ResourceManager**:

<snippet id='datagrid-setting-the-custom-resource-manager-csharp'/> 

You should add different resource files according to the different languages/cultures which you would like to use. **Figure 2** shows an example of a custom resource file used for German:

#### Figure 2: Custom Resource File for German language
![custom resource file](images/datagrid_resourcesfile.png)

The resource file ends with "de.resx" and is automatically used when the language of your device is set to German.

**Figure 3** shows the appearance of the filtering control when the localization is applied:

#### Figure 3: Custom Resource File for German language
![custom resource manager](images/datagrid_resourcemanager.png)

>important You can check working localization examples in the **DataGrid/Localization** folder within the [SDK Browser application]({%slug developer-focused-examples%}#sdk-browser-application).
>
>You can directly explore the code in the [SDKBrowser Examples repository on GitHub](https://github.com/telerik/xamarin-forms-sdk/tree/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/DataGridControl/LocalizationCategory).

## Localization Keys

| Localization Key | Default Value | Related to |
| -----------------| ------------- |----------- |
| And | And | Filtering UI |
| Contains | Contains | Filter by option in Filtering UI |
| DoesNotContain | Does not contain | Filter by option in Filtering UI |
| DoesNotEqualTo | Is not equal to | Filter by option in Filtering UI |
| EndsWith | Ends with | Filter by option in Filtering UI |
| EqualsTo | Is equal to | Filter by option in Filtering UI |
| FilterText | FILTER | Filtering UI |
| FilterUISectionText	| Filter by: | Filtering UI |
| FilterWatermarkText | Enter Filter Criteria | Filtering UI |
| GroupText |	Group | Group option in Filtering UI |
| GroupUISectionText | Group by: | More options in Filtering UI | 
| IsGreaterThan | Is greater than | Filter by option in Filtering UI |
| IsGreaterThanOrEqualTo | Is greater than or equal to | Filter by option in Filtering UI |
| IsLessThan | Is less than | Filter by option in Filtering UI |
| IsLessThanOrEqualTo | Is less than or equal to | Filter by option in Filtering UI |
| LoadOnDemandButtonText | LOAD MORE | Load on Demand feature | 
| MoreText | More | More button in Filtering UI |
| OptionsSectionText | Options: | Filtering UI |
| Or | Or | Filtering UI |
| ReorderColumnsUISectionText | Visible Columns: | More options in Filtering UI
| ResetText | RESET | Filtering UI |
| StartsWith | Starts with | Filter by option in Filtering UI |
| UngroupText | Ungroup | Reset grouping button in Filtering UI |

## See Also

* [Localization and Globalization]({%slug common-localization-and-globalization %})
* [Filtering]({%slug datagrid-filtering-overview%})
* [Grouping]({%slug datagrid-grouping-overview%})
* [Customize the Filtering UI]({%slug datagrid-howto-customize-filtering-ui%})
