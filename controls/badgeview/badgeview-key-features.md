---
title: Key Features
page_title: Xamarin BadgeView Documentation | Key Features
description: Check our &quot;Key Features&quot; documentation article for Telerik BadgeView for Xamarin control.
position: 2
slug: badgeview-key-features
---

# Key Features

The purpose of this help article is to show you the key features of the **RadBadgeView** control. 

## Content

>important The BadgeView will be visualized only if its `Content` property is set. 

* **Content**(of type *Xamarin.Formd.View*): Defines the content of the RadBadgeView.

You must define a content. The Badge marker/indicatior is positioned based on the content inside the RadBadgeView. Without a content the Badge won't be visualized.

```XAML
<telerikPrimitives:RadBadgeView>
    <telerikPrimitives:RadBadgeView.Content>
        <!-- add the content of the RadBadgeView. For exmaple: Label, Image, Frame, Border, Button, etc -->
    </telerikPrimitives:RadBadgeView.Content>
</telerikPrimitives:RadBadgeView>
```

### Example

There is a Button inside the Content. The BadgeText is updated on a ButtonClick.  



![BadgeView Badge Content](images/badgeview-content-text.gif)

## Badge Text

With `BadgeText` property(*string*) you can define a text. The text will be displayed in the badge marker. 

### Example

```XAML
<telerikPrimitives:RadBadgeView BadgeText="Badge Text">
    <telerikPrimitives:RadBadgeView.Content>
        <telerikPrimitives:RadBorder WidthRequest="80"
                                     HeightRequest="80"
                                     BorderThickness="1"
                                     BorderColor="LightGray">
            <Label Text="Telerik Badge View for Xamarin" 
                   FontSize="14"
                   VerticalTextAlignment="Center"
                   HorizontalTextAlignment="Center"/>
        </telerikPrimitives:RadBorder>
    </telerikPrimitives:RadBadgeView.Content>
</telerikPrimitives:RadBadgeView>
```

![BadgeView Badge Text](images/badgeview-badgetext.png)

## Badge Position 

Use the `BadgeHorizontalPositon` and `BadgeVerticalPosition` properties to position the badge marker based on the content inside the RadBadgeView. The properties are of type *Telerik.XamarinForms.Primitives.BadgePosition* and the available options are `Start`, `Center` and `End`. 

For more details about this check the [Badge Position]({%slug badgeview-position-alignment%}) article.

![BadgeView Badge Position](images/badgeview-badgeposition.png)

## Badge Alignment 

Specify the alignment of the badge based on the content insdie the RadBadgeView using the `BadgeHorizontalAlignment` and `BadgeVerticalAlignment` properties. The properties are of type *Telerik.XamarinForms.Primitives.BadgeAlignment* and the available options are `Start`, `Center` and `End`. 

For more details about this check the [Badge Alignment]({%slug badgeview-position-alignment%}) article.

![BadgeView Badge Alignment](images/badgeview-badgealignment.png)

## Badge Offset

Specify the horizontal/vertical distance between the content of the Badge and its alignment point using the `BadgeOffsetX` and  `BadgeOffsetY` properties. 

For more details please visit our [Badge Offset]({%slug badgeview-position-alignment%}) article.

## Badge Animation 

You can choose wheter the badge marker/indicator will be displayed with animation. In addition you can define the antimation duration and easing. 

For more details please visit our [Badge Animation]({%slug badgeview-animation%}) article.

## Badge Types

You can choose what will be the type of the badge by setting the `BadgeType` property(enumeration of type *Telerik.XamarinForms.Primitives.BadgeType*). 

Here are the available options:

![BadgeView Badge Types](images/badgeview-badgetypes.png)

## Customization and Styling Options

You can easily customize the badge appearance using the 

## See Also


