---
title: Changes
page_title: Changes
description: Describes what changes were made when the control was released with its official version
position: 2
slug: datetime-picker-changes
---

# DateTime Picker from Beta to Official

The following article describes the changes made in the DateTimePicker in its official version.

## API changes

The following table contains the names of the properties which were changed in the official version of the control.

| Beta | Official |
| -------- | -------- |
| StartDate | MinimumDate |
| EndDate | MaximumDate |
| SelectedDate | Date |
| DefaultDisplayDate | DefaultHighlightedDate |
| SpinnerFormatString | SpinnerFormat |
| SpinnerHeadersStyle | SpinnerHeaderStyle |

To accomodate these changes in your application update the property names from the beta version to the official ones.

## Visual changes

### OK and Cancel Buttons TextColor

The **TextColor** of the OK and Cancel buttons inside the popup is now **Accent** for the OS instead of "#007AFF". Use PickerPopupSelectorSettings.**AcceptButtonStyle** and PickerPopupSelectorSettings.**CancelButtonStyle** to set the color per your requirement:

```XAML
<telerikInput:RadDateTimePicker>
    <telerikInput:RadDateTimePicker.SelectorSettings>
        <telerikInput:PickerPopupSelectorSettings>
            <telerikInput:PickerPopupSelectorSettings.AcceptButtonStyle>
                <Style TargetType="Button">
                    <Setter Property="TextColor" Value="#007AFF"/>
                </Style>
            </telerikInput:PickerPopupSelectorSettings.AcceptButtonStyle>
            <telerikInput:PickerPopupSelectorSettings.CancelButtonStyle>
                <Style TargetType="Button">
                    <Setter Property="TextColor" Value="#007AFF"/>
                </Style>
            </telerikInput:PickerPopupSelectorSettings.CancelButtonStyle>
        </telerikInput:PickerPopupSelectorSettings>
    </telerikInput:RadDateTimePicker.SelectorSettings>
</telerikInput:RadDateTimePicker>
```

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

### Match UWP design guidelines for OK and Cancel buttons

The OK and Cancel buttons in WUP are swapped to match the design guidelines of the platform. To swap them back set the PickerPopupSelectorSettings.**FooterTemplate** as follows:

```XAML
<telerikInput:RadDateTimePicker>
    <telerikInput:RadDateTimePicker.SelectorSettings>
        <telerikInput:PickerPopupSelectorSettings>
            <telerikInput:PickerPopupSelectorSettings.FooterTemplate>
                <ControlTemplate>
                    <telerikPrimitives:RadBorder BackgroundColor="{TemplateBinding BackgroundColor}"
                                       BorderColor="{TemplateBinding BorderColor}"
                                       BorderThickness="{TemplateBinding BorderThickness}"
                                       CornerRadius="{TemplateBinding CornerRadius}">
                        <StackLayout Orientation="Horizontal" Spacing="0" HorizontalOptions="End">
                            <Button Text="{TemplateBinding CancelButtonText}"
                                    Style="{TemplateBinding CancelButtonStyle}"
                                    Command="{TemplateBinding CancelCommand}" 
                                    AutomationId="PickerPopupCancelButton"/>
                            <Button Text="{TemplateBinding AcceptButtonText}"
                                    Style="{TemplateBinding AcceptButtonStyle}"
                                    Command="{TemplateBinding AcceptCommand}"
                                    AutomationId="PickerPopupOkButton"/>
                        </StackLayout>
                    </telerikPrimitives:RadBorder>
                </ControlTemplate>
            </telerikInput:PickerPopupSelectorSettings.FooterTemplate>
        </telerikInput:PickerPopupSelectorSettings>
    </telerikInput:RadDateTimePicker.SelectorSettings>
</telerikInput:RadDateTimePicker>
```

In addition to this, you need to add the following namespace:

```XAML
xmlns:telerikPrimitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
```

## Visible spinners header

All spinners in the RadDateTimePicker are visible by default. To hide them use **AreSpinnerHeadersVisible** property.

```XAML
<telerikInput:RadDateTimePicker AreSpinnerHeadersVisible="False">
```

## See Also

- [Templates]({%slug datetime-picker-templates%})
- [Styling]({% slug datetime-picker-styling%})
- [SpinnerFormat]({% slug datetime-picker-format-string%})
