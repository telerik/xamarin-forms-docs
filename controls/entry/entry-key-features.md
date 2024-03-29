---
title: Key Features
page_title: Xamarin Entry Documentation | Key Features
description: Check our &quot;Key Features&quot; documentation article for Telerik Entry for Xamarin control.
position: 2
slug: entry-key-features
---

# Key Features

The purpose of this help article is to show you the key features of the **RadEntry** control. 

## Text

The following properties are related to the Entry Text appearance and alignment:

* **Text**(*string*): Defines the Text;
* **TextColor**(*Color*): Defines the color of the visible text of the RadEntry control.
* **VerticalTextAlignment**(*of type Xamarin.Forms.TextAlignment*): Specifies the vertical alignment of the RadEntry.Text;
* **HorizontalTextAlignment**(*of type Xamarin.Forms.TextAlignment*): Specifies the horizontal alignment of the RadEntry.Text;
* **Padding**(*Thickness*): Defines the Padding of the text;

### Example

The example below shows how you can bind **Text** property of the Entry to a `string` property inside your ViewModel.

Here is the Entry definition:

<snippet id='entry-features-textbinding'/>

And a sample ViewModel class which should implement `INotifyPropertyChanged` interface in order to update the UI when the string property is modified.

<snippet id='entry-textbinding-viewmodel'/>

The ViewModel class inherits from `Telerik.XamarinForms.Common.NotifyPropertyChangedBase` which actually implements the `INotifyPropertyChanged` interface.

Last step is to set the ViewModel class as a BindingContext of the page:

<snippet id='entry-textbinding-setviewmodel'/>

## Watermark 

RadEntry exposes **WatermarkText**(*string*) property used to give guidance to the end user on what should be entered in the text input. The watermark text is displayed when the control is empty.  Additionally, you could set **WatermarkTextColor**(*Color*) to customize the look of the watermark text. 

<snippet id='entry-features-customwatermark'/>

Where:

<snippet id='xmlns-telerikinput'/>

## Password

RadEntry provides **IsPassword**(*bool*) property, which when set to True, replaces the input with password hint character.

>tip With Telerik UI for Xamarin version 2021.1.409.1 we have added an additional feature to the RadEntry control - The suggestion tab that is above the keyboard is hidden when **IsPassword="True"**. 

<snippet id='entry-features-password'/>

## Read-Only State

With R1 2021 Service Pack, RadEntry control provides a feature which allows you to choose whether the control will be editable or not - Read-Only state.

* **IsReadOnly** *bool* property: Specifies whether the control will be in edit mode. The default value is `False`. If you want to restrict the control from editing, set the `IsReadOnly` to `True`

### Example

<snippet id='entry-features-read-only'/>

>important You can find a working demo labeled **Read-Only State** in the Entry/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## Max Length

From r1 2021 Service Pack, the Radentry control has an additional feature, you can restrict the number of the symbols allowed to be entered in the input field. 

* **MaxLength** (*int*) property: Specifies the maximum number of symbols allowed to be entered.

### Example with MaxLength set to 10

<snippet id='entry-features-maxlength'/>

>important You can find a working demo labeled **Max Length** in the Entry/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## Keyboard

The **Keyboard** property of type *Xamarin.Forms.Keyboard* allows you to define the type of the keyboard that will be visualized by the device.

```XAML
<telerikInput:RadEntry x:Name="entry" 
                       Keyboard="Numeric"
                       WatermarkText="Watermark Text" />
```

## Text Selection

The following properties are related to the Entry text selection: 

* **CursorPosition**(*int*) Specifies the starting position of the text selected in the entry.
* **SelectionLength**(*int*) Specifies the number of characters in the current selection in the entry control.

The next snippet shows how both could be applied in order to preselect part of the Text of the Entry when the control receives the focus:

<snippet id='entry-features-textselection' />

And the Clicked event handler:

<snippet id='entry-features-textselection-code' />

Here is the end result:

![Entry Key Features Example](images/entry_key_features.png)

## Font Options:

RadEntry control has the following properties for defining the Font Options:

* **FontAttributes**
* **FontFamily**
* **FontSize**

<snippet id='entry-font-options-xaml' />

>important You can find a working demo labeled **Key Features** in the Entry/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

>tip For a full list of the provided properties of RadEntry, check its API reference here: [RadEntry Properties](https://docs.telerik.com/devtools/xamarin/api/Telerik.XamarinForms.Input.RadEntry.html#properties).

## See Also

- [Events]({% slug entry-events%})
- [Theming and Style]({% slug entry-theming-style%})
- [Getting Started]({% slug entry-getting-started%})
