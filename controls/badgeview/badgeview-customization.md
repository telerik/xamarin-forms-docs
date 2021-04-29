---
title: Badge Customization
page_title: Xamarin Badge Documentation | Badge Overview
description: Check our &quot;Badge Customization&quot; documentation article for Telerik BadgeView for Xamarin control.
position: 10
slug: badgeview-customization
---

# Badge Customization

You can use te following property to specify different text inside the badge

* **BadgeText**(*string*): Defines the badge text. You can set the `BadgeText` property for example if you want to customize the text inside the badge. If you don't want to use one of the predefined badges, etc.

## Badge Control Template

The Badge has a default ControlTemplate which you can customize. 

### Default ControlTemplate

```XAML
<ControlTemplate x:Key="RadBadge_BadgeTemplate">
    <primitives:RadBorder BorderThickness="{TemplateBinding BorderThickness}"
                          BorderColor="{TemplateBinding BorderColor}"
                          CornerRadius="{TemplateBinding CornerRadius}"
                          BackgroundColor="{TemplateBinding BackgroundColor}">
        <Label x:Name="PART_BadgeContent"
               Text="{TemplateBinding Text}" 
               TextColor="{TemplateBinding TextColor}"
               Padding="{TemplateBinding TextPadding}"
               FontSize="{TemplateBinding FontSize}"
               FontFamily="{TemplateBinding FontFamily}"
               FontAttributes="{TemplateBinding FontAttributes}"
               BackgroundColor="{TemplateBinding BackgroundColor}"
               HorizontalOptions="Center"
               VerticalOptions="Center"
               HorizontalTextAlignment="Center"
               VerticalTextAlignment="Center" />
    </primitives:RadBorder>
</ControlTemplate>
```

## Example how to change the default ControlTemplate



## See Also

- [BadgeView Overview]({%slug badgeview-overview%})
- [BadgeView Getting Started]({%slug badgeview-getting-started%})