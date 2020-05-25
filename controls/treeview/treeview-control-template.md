---
title: Default ItemTemplate
page_title: Default ItemTemplate
description: Check our &quot;Default ItemTemplate&quot; documentation article for Telerik TreeView for Xamarin control.
position: 5
slug: treeview-control-template
---

# Default ItemTemplate

When using the **ItemTemplate** property of the **TreeViewDescriptor** it overrides the default template. For example, if you are using the default template with **CheckBoxes**, when overriding it, the CheckBoxes will be no longer shown. In order to properly visualize them you will need the original ItemTemplate.

This topic gives an overview of the default ItemTemplate of the TreeViewDescriptor, so you can copy it to your app and make changes.

**The original ItemTemplate**

The XAML defined below relies on the following namespace to be set:

```XAML
xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
xmlns:telerikDataControls="clr-namespace:Telerik.XamarinForms.DataControls;assembly=Telerik.XamarinForms.DataControls"
xmlns:telerikTreeView="clr-namespace:Telerik.XamarinForms.DataControls.TreeView;assembly=Telerik.XamarinForms.DataControls"
```

```XAML
<ResourceDictionary>
    <telerikTreeView:LevelToMarginConverter x:Key="levelToMarginConverter" />

    <DataTemplate x:Key="CustomControlTemplate">
        <StackLayout Orientation="Horizontal"
            Margin="{Binding Path=Level, Converter={StaticResource levelToMarginConverter}}">
            <StackLayout.HeightRequest>
                <OnPlatform x:TypeArguments="x:Double">
                    <On Platform="iOS" Value="44"></On>
                    <On Platform="Android" Value="40"></On>
                    <On Platform="UWP" Value="40"></On>
                </OnPlatform>
            </StackLayout.HeightRequest>
            <telerikTreeView:ExpandCollapseIndicator FontSize="Medium"
													WidthRequest="10"
													Margin="15,0"
													VerticalTextAlignment="Center"
													IsLoading="{Binding Path=IsLoading}"
													IsLoadOnDemandEnabled="{Binding Path=IsLoadOnDemandEnabled}"
													IsExpanded="{Binding Path=IsExpanded}"
													IsLeaf="{Binding Path=IsLeaf}">
                <AutomationProperties.HelpText>
                    <OnPlatform x:TypeArguments="x:String">
                        <On Platform="iOS" Value="RadTreeView"></On>
                    </OnPlatform>
                </AutomationProperties.HelpText>
            </telerikTreeView:ExpandCollapseIndicator>
            <telerikPrimitives:RadCheckBox IsChecked="{Binding Path=IsChecked, Mode=TwoWay}"
                        IsVisible="{Binding Path=IsCheckBoxVisible}"
                        VerticalOptions="Center">
                <AutomationProperties.HelpText>
                    <OnPlatform x:TypeArguments="x:String">
                        <On Platform="iOS" Value="RadTreeView"></On>
                    </OnPlatform>
                </AutomationProperties.HelpText>
            </telerikPrimitives:RadCheckBox>
            <telerikTreeView:ItemText Text="{Binding Path=Header}"
                VerticalTextAlignment="Center">
                <AutomationProperties.HelpText>
                    <OnPlatform x:TypeArguments="x:String">
                        <On Platform="iOS" Value="RadTreeView"></On>
                    </OnPlatform>
                </AutomationProperties.HelpText>
            </telerikTreeView:ItemText>
        </StackLayout>
    </DataTemplate>
</ResourceDictionary>
```

Finally, use the custom *Item ControlTemplate* as a *StaticResource* on any instance of *TreeViewDescriptor ItemTemplate*:

```XAML
<telerikDataControls:RadTreeView x:Name="treeView">
    <telerikDataControls:TreeViewDescriptor ItemTemplate="{StaticResource CustomControlTemplate}"/>
</telerikDataControls:RadTreeView>
```

## See Also

* [Commands]({%slug treeview-commands%})
* [CheckBoxes]({%slug treeview-checkboxes-support%})
* [Theming]({%slug treeview-theming%})