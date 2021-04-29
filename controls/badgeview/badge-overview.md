---
title: Badge
page_title: Xamarin Badge Documentation | Badge Overview
description: Check our &quot;Badge&quot; documentation article for Telerik Badge for Xamarin control.
position: 12
slug: badge-overview
---

# Badge

BadgeView vs Badge

RadBadge is a 

## Badge Getting Started

```XAML
<telerikPrimitives:Badge/>
```

## Badge Features

Badge has the following properties: 

* **Text**(*string*): Defines the badge text.
* **TextColor**(*Xamarin.Forms.Color*): Defines the text color of the badge.
* **TextMargin**(*Xamarin.Forms.Thickness*): Defines the margin of the badge text.
* **FontSize**(*double*): Defines the badge text font size.
* **FontFamily**(*string*): Defines the badge text font family.
* **FontAttributes**(*FontAttributes*): Defines the badge text font attributes.
* **BorderColor**(*Xamarin.Forms.Color*): Defines the badge border color.
* **CornerRadius**(*Xamarin.Forms.Thickness*): Defines the corner radius of the badge border.
* **BorderThickness**(*Xamarin.Forms.Thickness*): Defines the badge border thickness.
* **AnimationType**(*Telerik.XamarinForms.Primitives.BadgeAnimationType*). You can choose between `Scale` and `None`. The default value is `Scale`.
* **AnimationEasing**(*Xamarin.Forms.Easing*): Defines the animation easing. For more details about different easing options check the [Xamarin.Forms.Easing](https://docs.microsoft.com/en-us/xamarin/xamarin-forms/user-interface/animation/easing) article. The default value is `SinInOut`.
* **AnimationDuration** in milliseconds(*int*) Defines the animation duration in milliseconds. The default value is 300.
* **ControlTemplate**(*Xamarin.Forms.ControlTemplate*): Specifies the Badge control template.

## Badge ControlTemplate

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

## See Also

- [BadgeView Overview]({%slug badgeview-overview%})
- [BadgeView Getting Started]({%slug badgeview-getting-started%})