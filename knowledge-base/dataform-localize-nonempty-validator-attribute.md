---
title: DataForm localization for NonEmptyValidator Attribute
description: how to localize DataForm non empty validator
type: how-to
page_title: localize DataForm NonEmptyValidator Attribute
slug: dataform-localize-nonempty-validator-attribute
position: 
tags: dataform, xamarin, localization, negative feedback.
ticketid: 1514206
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.1.224.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>DataForm for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This how-to article will show you how to localize the DataForm NonemptyValidatorAttribute. The validatior is displayed when the editor shouldn't be empty and the field is required.

For more details about localization in DataForm, please check our [help article]({%slug dataform-globalization%}). 
Information about validation in Dataform, can be found in [DataForm Validation annotations]({%slug dataform-annotations-validation%}) article.

## Solution

You can achieve this using custom NonEmptyValidator. 

1. In case you would like the RadDataForm control to support two languages - English and Spanish - you should add a couple of resource files, for example - DataFormResources.resx and DataFormResources.es.resx.
The former will contain the values in English and the latter the values in Spanish. 
2. Create a class MyNonEmptyValidator which inherits from NonEmptyValidatorAttribute, 
3. Set the localization string from the localization manager to the NegativeFeedback property.

```C#
public class MyNonEmptyValidator : NonEmptyValidatorAttribute
{
    public MyNonEmptyValidator() : base()
    {
        this.NegativeFeedback = DataFormLocalizationManager.GetString("NegativeFeedback");
    }
}
```

4. Set the control to use the ResourceManager of your default resource file:

```C#
public partial class MainPage : ContentPage
{
    public MainPage()
    {
        DataFormLocalizationManager.Manager = DataFormResource.ResourceManager;
        InitializeComponent();
    }
}
```

