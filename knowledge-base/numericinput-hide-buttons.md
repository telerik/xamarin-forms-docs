---
title: How to hide RadNumericInput Buttons
description: This article shows you how to hide the increase and decrease buttons of the Telerik UI for Xamarin RadNumericInput control.
type: how-to
page_title: How to hide RadNumericInput Buttons
slug: numericinput-hide-buttons
tags: NumericInput, Xamarin, Telerik UI For Xamarin
ticketid: 1381429
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2018.3.1122.3</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>NumericInput for Xamarin Cross-Platform</td>
	</tr>
	<tr>
		<td>Xamarin Technology</td>
		<td>Xamarin.Forms</td>
	</tr>
	<tr>
		<td>Xamarin.Forms</td>
		<td>3.1+</td>
	</tr>
</table>

## Description

This article shows you how to hide the increase and decrease buttons of the Telerik UI for Xamarin `RadNumericInput` control.

## Solution

In order to hide the buttons, you'll need to define a custom `ControlTemplate` that does not have any buttons. Let's start with the original template.

Note: The XAML defined below relies on the following xmlns to be defined:

```xml
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
xmlns:numericInput="clr-namespace:Telerik.XamarinForms.Input.NumericInput;assembly=Telerik.XamarinForms.Input"
```

#### The original ControlTemplate

Here is the entire original `ControlTemplate` for the `RadNumericInput` and its resource dependencies:

```xml
<OnPlatform x:TypeArguments="x:Double" x:Key="Height" Default="32">
	<On Platform="Android" Value="45" />
	<On Platform="iOS" Value="36" />
	<On Platform="UWP" Value="32" />
</OnPlatform>
<OnPlatform x:TypeArguments="x:Double" x:Key="MinimumHeight" Default="33">
	<On Platform="Android" Value="28" />
	<On Platform="iOS" Value="28" />
	<On Platform="UWP" Value="33" />
</OnPlatform>
<OnPlatform x:TypeArguments="x:Double" x:Key="Spacing" Default="10">
	<On Platform="Android" Value="10" />
	<On Platform="iOS" Value="10" />
	<On Platform="UWP" Value="10" />
</OnPlatform>
<GridLength x:Key="ButtonWidth">58</GridLength>

<ControlTemplate x:Key="OriginalRadNumericInputControlTemplate">
	<Grid ColumnSpacing="{StaticResource Spacing}" HeightRequest="{StaticResource Height}" MinimumHeightRequest="{StaticResource MinimumHeight}">
		<Grid.Resources>
			<ResourceDictionary>
				<Style TargetType="numericInput:NumericInputButton" Class="DefaultNumericInputButtonStyle">
					<Setter Property="BorderRadius">
						<Setter.Value>
							<OnPlatform x:TypeArguments="x:Int32">
								<On Platform="iOS" Value="10" />
								<On Platform="UWP" Value="0" />
							</OnPlatform>
						</Setter.Value>
					</Setter>
					<Setter Property="BorderColor" Value="Accent" />
					<Setter Property="BorderThickness" Value="2" />
					<Setter Property="TextColor" Value="Accent" />
					<Setter Property="BackgroundColor" Value="Transparent" />
					<Setter Property="VerticalContentAlignment" Value="Center" />
					<Setter Property="HorizontalContentAlignment" Value="Center" />
					<Setter Property="Padding" Value="0,0,0,0" />
				</Style>
				<Style TargetType="numericInput:NumericInputEntry" Class="DefaultNumericInputEntryStyle">
					<Setter Property="HorizontalTextAlignment" Value="Center" />
					<Setter Property="VerticalTextAlignment" Value="Center" />
					<Setter Property="Padding" Value="0,0,0,0" />
					<Setter Property="Keyboard" Value="Numeric" />
					<Setter Property="BorderStyle">
						<Setter.Value>
							<telerikInput:BorderStyle>
								<telerikInput:BorderStyle.BorderThickness>
									<OnPlatform x:TypeArguments="Thickness" Default="2">
										<On Platform="Android" Value="0,0,0,2" />
										<On Platform="iOS" Value="2" />
										<On Platform="UWP" Value="2" />
									</OnPlatform>
								</telerikInput:BorderStyle.BorderThickness>
							</telerikInput:BorderStyle>
						</Setter.Value>
					</Setter>
				</Style>
			</ResourceDictionary>
		</Grid.Resources>

		<Grid.ColumnDefinitions>
			<ColumnDefinition Width="{StaticResource ButtonWidth}" />
			<ColumnDefinition Width="*" />
			<ColumnDefinition Width="{StaticResource ButtonWidth}" />
		</Grid.ColumnDefinitions>

		<numericInput:NumericInputButton Text="{TemplateBinding DecreaseButtonText}" Command="{TemplateBinding DecreaseCommand}" StyleClass="DefaultNumericInputButtonStyle" AutomationId="NumericDecreaseButton" />

		<numericInput:NumericInputEntry Grid.Column="1" x:Name="PART_Entry" StyleClass="DefaultNumericInputEntryStyle" Text="{TemplateBinding Value, Mode=OneWay}" InputTransparent="{TemplateBinding IsReadOnly}" AutomationId="NumericEntry" />

		<numericInput:NumericInputButton Grid.Column="2" Text="{TemplateBinding IncreaseButtonText}" Command="{TemplateBinding IncreaseCommand}" StyleClass="DefaultNumericInputButtonStyle" AutomationId="NumericIncreaseButton" />
	</Grid>
</ControlTemplate>
```

Inside the template's root `Grid`, there are two `NumericInputButton` controls. These are the Increase and Decrease buttons which you can safely remove because they do not have an **x:Name** prefixed with **"PART_"**. 

> Any `ControlTemplate` element that is prefixed with "PART_" is almost always a required part. Removing such a part will result in the control not working. For example the `NumericInputEntry` control is named **PART_Entry** and *cannot* be removed.

#### Customing the ControlTemplate

Here is the customized `ControlTemplate` without the buttons, named with a unique **x:Key** of **CustomRadNumericInputControlTemplate**.

```xml
<!-- Removed unused resources that were for columns and button sizing -->
<OnPlatform x:Key="Height" x:TypeArguments="x:Double" Default="32">
    <On Platform="Android"  Value="45" />
    <On Platform="iOS" Value="36" />
    <On Platform="UWP" Value="32" />
</OnPlatform>
<OnPlatform x:Key="MinimumHeight" x:TypeArguments="x:Double" Default="33">
    <On Platform="Android"  Value="28" />
    <On Platform="iOS" Value="28" />
    <On Platform="UWP" Value="33" />
</OnPlatform>

<!-- Removed buttons and unused style, columns and spacing -->
<ControlTemplate x:Key="CustomRadNumericInputControlTemplate">
    <Grid HeightRequest="{StaticResource Height}" MinimumHeightRequest="{StaticResource MinimumHeight}">
        <Grid.Resources>
            <ResourceDictionary>
                <Style TargetType="numericInput:NumericInputEntry" Class="DefaultNumericInputEntryStyle">
                    <Setter Property="HorizontalTextAlignment" Value="Center" />
                    <Setter Property="VerticalTextAlignment" Value="Center" />
                    <Setter Property="Padding" Value="0,0,0,0" />
                    <Setter Property="Keyboard" Value="Numeric" />
                    <Setter Property="BorderStyle">
                        <Setter.Value>
                            <telerikInput:BorderStyle>
                                <telerikInput:BorderStyle.BorderThickness>
                                    <OnPlatform x:TypeArguments="Thickness" Default="2">
                                        <On Platform="Android" Value="0,0,0,2" />
                                        <On Platform="iOS" Value="2" />
                                        <On Platform="UWP" Value="2" />
                                    </OnPlatform>
                                </telerikInput:BorderStyle.BorderThickness>
                            </telerikInput:BorderStyle>
                        </Setter.Value>
                    </Setter>
                </Style>
            </ResourceDictionary>
        </Grid.Resources>

        <numericInput:NumericInputEntry x:Name="PART_Entry" StyleClass="DefaultNumericInputEntryStyle" Text="{TemplateBinding Value, Mode=OneWay}" InputTransparent="{TemplateBinding IsReadOnly}" AutomationId="NumericEntry" />
    </Grid>
</ControlTemplate>
```

> Notice that the resources that were specifically for buttons have been removed as well. Items like the ColumnDefinitions, button styles and column spacing are no longer needed so we can simplify the template.

### Implementation

Make sure that page has **xmlns:telerikInput** defined:

```xml
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

Finally, use the custom `ControlTemplate` as a **StaticResource** on any instance of `RadNumericInput`.

```xml
<telerikInput:RadNumericInput ControlTemplate="{StaticResource CustomRadNumericInputControlTemplate}" />
```

## See Also
* [RadNumericInput Getting Started](https://docs.telerik.com/devtools/xamarin/controls/numericinput/numericinput-getting-started)
* [RadNumericInput Key Features](https://docs.telerik.com/devtools/xamarin/controls/numericinput/numericinput-key-features)
