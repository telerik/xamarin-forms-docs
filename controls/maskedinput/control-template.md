---
title: Control Template
page_title: Control Template
position: 2
slug: maskedinput-control-template
---

# Control Template

**RadMaskedInput's** visual appearance is defined through a Control Template. In order to customize the way the MaskedInput looks, you would need to take the default *ControlTemplate* and modify it. 

This topic gives an overview of the **ControlTemplate** of the MaskedInput control, so you can copy it to your app and make changes.

#### The original ControlTemplate

The XAML defined below relies on the following namespace to be set:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

```XAML
<ResourceDictionary>
    <ControlTemplate x:Key="MaskedInput_ControlTemplate">
        <Grid BackgroundColor="Transparent">
            <Grid.RowDefinitions>
                <RowDefinition Height="Auto"/>
                <RowDefinition Height="Auto"/>
            </Grid.RowDefinitions>
            <telerikInput:MaskedInputElement x:Name="InputElement"
                                      HorizontalTextAlignment="Start"
                                      BackgroundColor="Transparent"
                                      Mask="{TemplateBinding Mask}"
                                      MaskType="{TemplateBinding MaskType}"
                                      Placeholder="{TemplateBinding Placeholder}"
                                      BorderStyle="{TemplateBinding BorderStyle}"
                                      WatermarkText="{TemplateBinding WatermarkText}"
                                      InputValue="{TemplateBinding InputValue, Mode=TwoWay}"
                                      DisplayedTextFont="{TemplateBinding DisplayedTextFont}"
                                      WatermarkTextColor="{TemplateBinding WatermarkTextColor}"
                                      DisplayedTextColor="{TemplateBinding DisplayedTextColor}"
                                      DisplayedTextFontSize="{TemplateBinding DisplayedTextFontSize}"/>
            <Label FontSize="{TemplateBinding ErrorFontSize}"
                   BackgroundColor="Transparent"
                   Grid.Row="1">
                <Label.Triggers>
                    <DataTrigger TargetType="Label" 
                                 Binding="{TemplateBinding IsMaskFull}"
                                 Value="False">
                        <Setter Property="Text" Value="{TemplateBinding InvalidInputErrorText}" />
                    </DataTrigger>
                    <DataTrigger TargetType="Label" 
                                 Binding="{TemplateBinding IsMaskFull}"
                                 Value="True">
                        <Setter Property="Text" Value="{TemplateBinding RejectedSymbolErrorText}" />
                    </DataTrigger>
                    <DataTrigger TargetType="Label"
                                 Binding="{TemplateBinding IsErrorTextVisible}"
                                 Value="True">
                        <Setter Property="TextColor" Value="{TemplateBinding ErrorColor}" />
                    </DataTrigger>
                    <DataTrigger TargetType="Label"
                                 Binding="{TemplateBinding IsErrorTextVisible}"
                                 Value="False">
                        <Setter Property="TextColor" Value="Transparent" />
                    </DataTrigger>
                </Label.Triggers>
            </Label>
        </Grid>
  </ControlTemplate>
</ResourceDictionary>
```

Finally, use the custom ControlTemplate as a **StaticResource** on any instance of RadMaskedInput:

```XAML
<StackLayout>
    <telerikInput:RadMaskedInput x:Name="maskedInput" 
                                 ControlTemplate="{StaticResource MaskedInput_ControlTemplate}"/>

</StackLayout>
```

## See Also

* [RadMaskedInput Tokens]({%slug maskedinput-features-mask-tokens%})
* [RadMaskedInput Events]({%slug maskedinput-features-events%})
* [RadMaskedInput Commands]({%slug maskedinput-features-commands%})