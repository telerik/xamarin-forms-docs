---
title: Control Template
page_title: Xamarin SlideView Documentation | Control Template
description: Check our &quot;Control Template&quot; documentation article for Telerik SlideView for Xamarin control.
position: 2
slug: slideview-control-template
---

# Control Template

**RadSlideView's** visual appearance is defined through a Control Template. In order to customize the way the RadSlideView looks, you will need to take the default *ControlTemplate* and modify it.

This topic gives an overview of the **ControlTemplate** of the SlideView control, so you can copy it to your app and make changes.

## The original ControlTemplate

The SlideView contains three control templates:

* **ControlTemplate**: the look of the main
* **IndicatorTemplate**: appearance of the indicators
* **SelectedIndicatorTemplate**: the look of the selected indicator

Here is the definition of the 

```XAML
<ContentPage.Resources>
    <ResourceDictionary>
		<!-- IndicatorTemplate -->
        <ControlTemplate x:Key="RadSlideView_IndicatorTemplate">
            <Label Text="{TemplateBinding IndicatorText}"
	               FontSize="{TemplateBinding IndicatorFontSize}"
	               FontFamily="{TemplateBinding IndicatorFontFamily}"
	               VerticalOptions="Center"
	               TextColor="{TemplateBinding IndicatorColor}">
                <Label.GestureRecognizers>
                    <TapGestureRecognizer Tapped="IndicatorTapped" NumberOfTapsRequired="1"/>
                </Label.GestureRecognizers>
            </Label>
        </ControlTemplate>
		
		<!-- SelectedIndicatorTemplate -->
        <ControlTemplate x:Key="RadSlideView_SelectedIndicatorTemplate">
            <Label Text="{TemplateBinding SelectedIndicatorText}"
	               FontSize="{TemplateBinding SelectedIndicatorFontSize}"
	               FontFamily="{TemplateBinding SelectedIndicatorFontFamily}"
	               VerticalOptions="Center"
	               TextColor="{TemplateBinding SelectedIndicatorColor}" />
        </ControlTemplate>
		
		<!-- ControlTemplate -->
        <ControlTemplate x:Key="RadSlideView_ControlTemplate">
            <Grid>
				<!-- Content Presenter -->
                <ContentPresenter AutomationId="SlideViewContentPresenter"/>
				
				<!-- Left Arrow -->
                <Label AutomationId="SlideViewLeftArrow" 
					   VerticalOptions="Center"
	                   IsVisible="{TemplateBinding ShowButtons}"
	                   Text="&#x2039;"
	                   FontSize="{TemplateBinding SlideButtonsSize}"
	                   FontFamily="Arial"
	                   HorizontalOptions="Start"
	                   TextColor="{TemplateBinding SlideButtonsColor}">
                    <Label.GestureRecognizers>
                        <TapGestureRecognizer Command="{TemplateBinding Path=PreviousItemCommand}"/>
                    </Label.GestureRecognizers>
                </Label>

				<!-- Right Arrow -->
                <Label AutomationId="SlideViewRightArrow"    
	                   VerticalOptions="Center" 
	                   Text="&#x203A;" 
	                   IsVisible="{TemplateBinding ShowButtons}"
	                   FontSize="{TemplateBinding SlideButtonsSize}"
	                   FontFamily="Arial"
	                   HorizontalOptions="End"
	                   TextColor="{TemplateBinding SlideButtonsColor}">
                    <Label.GestureRecognizers>
                        <TapGestureRecognizer Command="{TemplateBinding Path=NextItemCommand}"/>
                    </Label.GestureRecognizers>
                    <AutomationProperties.HelpText>
                        <OnPlatform x:TypeArguments="x:String">
                            <On Platform="iOS" Value="Navigate Forward" />
                            <On Platform="UWP" Value="Navigate Forward" />
                        </OnPlatform>
                    </AutomationProperties.HelpText>
                    <AutomationProperties.Name>
                        <OnPlatform x:TypeArguments="x:String">
                            <On Platform="iOS" Value="RadSlideView" />
                            <On Platform="UWP" Value="RadSlideView" />
                        </OnPlatform>
                    </AutomationProperties.Name>
                </Label>

				<!-- SlideView indicators-->
                <slideView:SlideViewIndicators Owner="{TemplateBinding}"
	                                           SelectedIndicatorTemplate="{TemplateBinding SelectedIndicatorTemplate}"
	                                           IndicatorTemplate="{TemplateBinding IndicatorTemplate}"
	                                           IsVisible="{TemplateBinding ShowIndicators}"
	                                           VerticalOptions="End"
	                                           HorizontalOptions="Center"/>
            </Grid>
        </ControlTemplate>
    </ResourceDictionary>
</ContentPage.Resources>
```

where the Telerik namespace is as follow:

```XAML
xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
xmlns:slideView="clr-namespace:Telerik.XamarinForms.Primitives.SlideView;assembly=Telerik.XamarinForms.Primitives"
```

Finally, use the custom ControlTemplate, IndicatorTemplate and SelectedIndicatorTemplate as a **StaticResource** on any instance of RadSlideView:

```XAML
<StackLayout>
    <telerikPrimitives:RadSlideView x:Name="slideView"
                                    ControlTemplate="{StaticResource RadSlideView_ControlTemplate}"
                                    IndicatorTemplate="{StaticResource RadSlideView_IndicatorTemplate}"
                                    SelectedIndicatorTemplate="{StaticResource RadSlideView_SelectedIndicatorTemplate}">
        <telerikPrimitives:RadSlideView.ItemsSource>
            <x:Array Type="{x:Type ContentView}">
                <ContentView>
                    <Grid HeightRequest="100">
                        <Label Text="View 1" />
                    </Grid>
                </ContentView>
                <ContentView>
                    <Label Text="View 2" />
                </ContentView>
                <ContentView >
                    <Label Text="View 3" />
                </ContentView>
            </x:Array>
        </telerikPrimitives:RadSlideView.ItemsSource>
    </telerikPrimitives:RadSlideView>
</StackLayout>
```

## See Also

- [Item Template]({%slug slideview-features-itemtemplate%})
- [Item Template Selector]({%slug slideview-itemtemplateselector%})
- [Customize the Control]({%slug sideview-customize-the-control%})
