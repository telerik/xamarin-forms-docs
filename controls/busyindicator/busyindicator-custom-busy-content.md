---
title: Custom Busy Content
page_title: Xamarin BusyIndicator Documentation | Custom Busy Content
description: Check our &quot;Custom Busy Content&quot; documentation article for Telerik BusyIndicator for Xamarin control.
position: 2
slug: busyindicator-custom-busy-content
---

#  Custom Busy Content

Setting **BusyContent** property of RadBusyIndicator allows you to display any content together with the built-in animations while the control is in Busy state. 
Additionally, you could customize the **BusyContentTemplate** in order to arrange the custom content and the animated content per your choice.

Here is a quick example demonstrating how BusyContent and BusyContentTemplate properties could be applied.

<snippet id='busyindicator-custombusycontent-xaml' />

Also you will need to add the **telerikPrimitives** namespace:

<snippet id='xmlns-telerikprimitives' />

You could check the result in the image below:

#### __Figure 1: RadBusyIndicator with BusyContentTemplate__  
![BusyIndicator example](images/busyindicator-custombusycontent.png)


## Data Binding Custom Content

The BusyContent is rendered inside its own ContentView. This means that it has a different BindingContext than the RadBusyIndicator. Therefore, if you would like to data bind the BusyContent, you would need to use RelativeSource to connect to the same BindingContext as the RadBusyIndicator.

Here is the previous example, but modified to support databinding:

```xml
<telerikPrimitives:RadBusyIndicator x:Name="BusyIndicator"
                                    AnimationContentHeightRequest="100"
                                    AnimationContentWidthRequest="100"  
                                    AnimationType="Animation6"                                            
                                    IsBusy="True">           
    <telerikPrimitives:RadBusyIndicator.BusyContent>
        <Grid BindingContext={Binding BindingContext, Source={RelativeSource AncestorType={x:Type telerikPrimitives:RadBusyIndicator}}}">
            <Label Text="{Binding MyViewModelProperty}" />
        </Grid>
    </telerikPrimitives:RadBusyIndicator.BusyContent>
	 <telerikPrimitives:RadBusyIndicator.BusyContentTemplate>
        <ControlTemplate>
            <Grid>
                <Grid.RowDefinitions>
                    <RowDefinition Height="Auto" />
                    <RowDefinition Height="Auto" />
                    <RowDefinition Height="*" />
                </Grid.RowDefinitions>
                <ContentPresenter Content="{TemplateBinding Path=AnimationContent}" />
                <ContentPresenter Grid.Row="1"
                                  Content="{TemplateBinding Path=BusyContent}"
                                  HorizontalOptions="Center" />
            </Grid>
        </ControlTemplate>
    </telerikPrimitives:RadBusyIndicator.BusyContentTemplate>
</telerikPrimitives:RadBusyIndicator>
```

## See Also

- [Animations]({% slug busyindicator-features-animations %})
