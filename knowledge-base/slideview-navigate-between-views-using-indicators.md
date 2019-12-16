---
title: Navigate through views using SlideView indicators
description: tap on slideview indicators to change the view
type: how-to
page_title: Navigate through views using SlideView indicators
slug: slideview-navigate-between-views-using-indicators
position: 
tags: slideview, indicator, navigate, view, tap
ticketid: 1440384
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2019.3.1023.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>SlideView for Xamarin.Forms</td>
		</tr>
	</tbody>
</table>


## Description

The purpose of this help article is to show you how to navigate through the SlideView views / pages using the indicators.

## Solution

This scenario could be achieved using the **SlideView Control Template**. Then you need to attach a gesture recognizer to the Indicator Template. As a next step inside the TappedEvent you need to implement a custom logic to get the current atapped indicator and set it to the SlideView SelectedIndex.

1. Add the SlideView ControlTemplate to the page's resources:
	
```XAML
<ContentPage.Resources>
    <ResourceDictionary>
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

        <ControlTemplate x:Key="RadSlideView_SelectedIndicatorTemplate">
            <Label Text="{TemplateBinding SelectedIndicatorText}"
                    FontSize="{TemplateBinding SelectedIndicatorFontSize}"
                    FontFamily="{TemplateBinding SelectedIndicatorFontFamily}"
                    VerticalOptions="Center"
                    TextColor="{TemplateBinding SelectedIndicatorColor}" />
        </ControlTemplate>
        <ControlTemplate x:Key="RadSlideView_ControlTemplate">
            <Grid>
                <ContentPresenter AutomationId="SlideViewContentPresenter"/>

                <Label AutomationId="SlideViewLeftArrow" VerticalOptions="Center"
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

                <slideView:SlideViewIndicators Owner="{TemplateBinding}"
                                                Spacing="{TemplateBinding Path=IndicatorsSpacing}"
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

2. Here is a sample SlideView definition:
	
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
                <ContentView >
                    <Label Text="View 4" />
                </ContentView>
                <ContentView >
                    <Label Text="View 5" />
                </ContentView>
            </x:Array>
        </telerikPrimitives:RadSlideView.ItemsSource>
    </telerikPrimitives:RadSlideView>
</StackLayout>
```
	
3. And the custom implementation inside the IndicatorTapped event:

```C#
private void IndicatorTapped(object sender, System.EventArgs e)
{
    var slideViewIndicator = ((Label)sender).Parent as ContentView;
    if (slideViewIndicator != null)
    {
        var panel = slideViewIndicator.Parent as StackLayout;
        if (panel != null)
        {
            var tappedIndex = panel.Children.IndexOf(slideViewIndicator);
            this.slideView.SelectedIndex = tappedIndex;
        }
    }
}
```