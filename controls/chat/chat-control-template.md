---
title: Control Template
page_title: Control Template
position: 4
slug: chat-control-template
---

# Control Template

**RadChat's** visual appearance is defined through a Control Template. In order to customize the way the Conversational UI looks, you would need to take the default *ControlTemplate* and modify it. 

This topic gives an overview of the **ControlTemplate** of the Chat control, so you can copy it to your app and make changes.

#### The original ControlTemplate

The XAML defined below relies on the following namespaces to be set:

```XAML
xmlns:telerikCommon="clr-namespace:Telerik.XamarinForms.Common;assembly=Telerik.XamarinForms.Common"
xmlns:telerikConversationalUI="clr-namespace:Telerik.XamarinForms.ConversationalUI;assembly=Telerik.XamarinForms.ConversationalUI"
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

```XAML
<ResourceDictionary>
    <telerikConversationalUI:ChatListViewMarginConverter x:Key="ChatListViewMarginConverter" />

    <ControlTemplate x:Key="RadChat_ControlTemplate">
        <Grid telerikInput:KeyboardHelper.IsTranslationTarget="True"
            RowSpacing="2">
            <Grid.RowDefinitions>
                <RowDefinition />
                <RowDefinition Height="Auto" />
                <RowDefinition Height="Auto" />
            </Grid.RowDefinitions>
            <telerikConversationalUI:ChatListView telerikCommon:StyleManager.InheritedStyleClass="{TemplateBinding ActualStyleClass}"
												AutoScrollMode="{TemplateBinding AutoScrollMode}"
												ScrollMediator="{TemplateBinding ActualScrollMediator}"
												Margin="{Binding Height, Source={x:Reference PickerContainer}, Converter={StaticResource ChatListViewMarginConverter}}"
												ItemTemplate="{TemplateBinding ItemTemplateSelector}" 
												ItemsSource="{TemplateBinding Items}"
												AutomationProperties.Name="ChatListView" />
            <telerikCommon:RadContentView telerikCommon:StyleManager.InheritedStyleClass="{TemplateBinding ActualStyleClass}"
										Grid.Row="1"
										Content="{TemplateBinding TypingIndicator}" />
            <telerikCommon:RadContentView telerikCommon:StyleManager.InheritedStyleClass="{TemplateBinding ActualStyleClass}"
										x:Name="PickerContainer"
										VerticalOptions="End"
										Content="{TemplateBinding Picker}" />
            <Grid Grid.Row="2" BackgroundColor="{TemplateBinding InputAreaBackgroundColor}" Padding="5, 0, 0, 0">
                <Grid.ColumnDefinitions>
                    <ColumnDefinition />
                    <ColumnDefinition Width="Auto" />
                </Grid.ColumnDefinitions>
                <telerikConversationalUI:ChatEntry telerikCommon:StyleManager.InheritedStyleClass="{TemplateBinding ActualStyleClass}"
												Text="{TemplateBinding Message, Mode=TwoWay}"
												BackgroundColor="Transparent"
												VerticalOptions="Center"
												CompletedCommand="{TemplateBinding ActualSendMessageCommand}"
												FocusMediator="{TemplateBinding FocusMediator}"
												telerikInput:KeyboardHelper.IsTranslationSource="True" />
                <telerikInput:RadButton telerikCommon:StyleManager.InheritedStyleClass="{TemplateBinding ActualStyleClass}"
										Grid.Column="1"
										Margin="0, 0, 10, 0"
										BackgroundImage="{TemplateBinding SendMessageButtonImage}"
										BackgroundColor="Transparent"
										Command="{TemplateBinding ActualSendMessageCommand}"
										WidthRequest="30"
										HeightRequest="30"
										VerticalOptions="Center" />
            </Grid>
        </Grid>
    </ControlTemplate>
</ResourceDictionary>
```

Finally, use the custom ControlTemplate as a **StaticResource** on any instance of RadChat:

```XAML
<telerikConversationalUI:RadChat x:Name="chat"
								 ControlTemplate="{StaticResource RadChat_ControlTemplate}"/>
```

## See Also

* [Key Features]({%slug chat-key-features%})
- [Chat Items]({% slug chat-items-overview %}) 
- [ItemTemplateSelector] ({% slug chat-itemtemplateselector %})