---
title: Styling
page_title: Styling
position: 7
slug: listview-features-styling
description: Describing the styling options of the RadListView
tags: style, selected, hovered, pressed, item, highlighted
---

# Styling

The RadListView component provides styling mechanism for customizing the look of its items. This mechanism consists of the following properties of type "ListViewItemStyle":

* **ItemStyle**
* **SelectedItemStyle**
* **PressedItemStyle**
* **ReorderItemStyle**

## ListViewItemStyle

The properties of this object are respectively applied to the native components. The supported ones are the following:

* **BackgroundColor** (*Color*): sets the background of the item(s).
* **BorderColor** (*Color*): sets the color of the border.
* **BorderWidth** (*double*): defines the width of the borer.
* **BorderLocation** (*Location*): describes an enumeration describing where the border should be visible.
* **TextCellTextColor** (*Color*): defines the text color of the ListView TextCell.


### Location

This enumeration contains the following members:

- **None** - the border should not be visualized.
- **Top** - the border should be visualized only at the top side.
- **Bottom** -the border should be visualized only at the bottom side.
- **Left** - the border should be visualized only at the left side.
- **Right** - the border should be visualized only at the right side.
- **All** (default value) - the border should be visualized all around the item.

### Example
```xml
<telerikDataControls:RadListView x:Name="listView" ItemsSource="{Binding Source}" IsItemsReorderEnabled="True">
    <telerikDataControls:RadListView.ItemTemplate>
        <DataTemplate>
            <telerikListView:ListViewTextCell Text="{Binding Name}" />
        </DataTemplate>
    </telerikDataControls:RadListView.ItemTemplate>
    <telerikDataControls:RadListView.ItemStyle>
        <telerikListView:ListViewItemStyle BackgroundColor="#1263E5"
                                           TextCellTextColor="#AAC7F6"
                                           BorderColor="#0A3A82"
                                           BorderWidth="2"
                                           BorderLocation="All" />
    </telerikDataControls:RadListView.ItemStyle>
    <telerikDataControls:RadListView.SelectedItemStyle>
        <telerikListView:ListViewItemStyle BackgroundColor="#83A9E2"
                                           TextCellTextColor="#AAC7F6"
                                           BorderColor="#0A3A82"
                                           BorderWidth="2" 
                                           BorderLocation="Bottom"/>
    </telerikDataControls:RadListView.SelectedItemStyle>
    <telerikDataControls:RadListView.PressedItemStyle>
        <telerikListView:ListViewItemStyle BackgroundColor="#C1C1C1" 
                                           TextCellTextColor="#AAC7F6"
                                           BorderColor="#0B3D89" 
                                           BorderWidth="2" 
                                           BorderLocation="Bottom"/>
    </telerikDataControls:RadListView.PressedItemStyle>
    <telerikDataControls:RadListView.ReorderItemStyle>
        <telerikListView:ListViewItemStyle BackgroundColor="#0B3D89"
                                           TextCellTextColor="#AAC7F6"
                                           BorderColor="Black"
                                           BorderWidth="2"
                                           BorderLocation="All" />
    </telerikDataControls:RadListView.ReorderItemStyle>
</telerikDataControls:RadListView>
```

And here is the end result:

#### Figure 1: ListView with ItemStyle and SelectedItemStyle
![](images/listview_features_itemstyle.png)

#### Figure 2: ListView with ReorderItemStyle
![](images/listview_features_reorderItemstyle.png)

>note You can find a working demo labeled **ItemStyles** in the ListView/Styling folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}). 

## Troubleshooting

### ListViewTemplateCell and SelectedItemStyle

When using a `ListViewTemplateCell` a SelectedItemStyle's **TextCellTextColor** value will not be used for custom views in the `DataTemplate`. You can still achieve a simiar result by using a model property and ValueConverter, the example below uses such an approach.

#### Example

Add an `IsSelected` boolean property with NotifyPropertyChanged implemented to the business object.

```C#
public class SourceItem : INotifyPropertyChanged
{
    public string Name { get; set; }
    
    private bool isSelected;
    public bool IsSelected
    {
        get => isSelected;
        set
	{ 
	    isSelected = value; 
	    OnPropertyChanged(); 
	}
    }
    
    public event PropertyChangedEventHandler PropertyChanged;
    protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}
```

Create an `IValueConverter` implementation that returns a different color based on the value of **IsSelected**.

```C#
class SelectedToColorConverter : IValueConverter
{
    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
    {
        if ((bool)value == true)
        {
            return Color.Green;
        }

        return Color.Gray;
    }
 
    public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }
}
```

In XAML below, the following is implemented:

1. Added an instance of the `SelectedToColorConverter` to the RadListView control's **Resources**
2. The `Label` **TextColor** property is bound to the **IsSelected** property, with a converter defined using the *SelectedToColorConverterKey*.
3. An event hander is defined for **SelectionChanged**

```XML
<telerikDataControls:RadListView SelectionChanged="RadListView_OnSelectionChanged">
    <telerikDataControls:RadListView.Resources>
        <ResourceDictionary>
            <portable:SelectedToColorConverter x:Key="SelectedToColorConverterKey"/>
        </ResourceDictionary>
    </telerikDataControls:RadListView.Resources>
    <telerikDataControls:RadListView.ItemTemplate>
        <DataTemplate>
            <telerikListView:ListViewTemplateCell>
                <telerikListView:ListViewTemplateCell.View>
                    <Grid Padding="3">
                        <Label Margin="10"
                               Text="{Binding Name}"
                               TextColor="{Binding IsSelected, Converter={StaticResource SelectedToColorConverterKey}}"/>
                    </Grid>
                </telerikListView:ListViewTemplateCell.View>
            </telerikListView:ListViewTemplateCell>
        </DataTemplate>
    </telerikDataControls:RadListView.ItemTemplate>
</telerikDataControls:RadListView>

```

Finally, in the `SelectionChanged` event handler, the  `IsSelected` value is updated

```C#
private void RadListView_OnSelectionChanged(object sender, NotifyCollectionChangedEventArgs e)
{
    if (e.NewItems != null && e.NewItems.Count > 0)
    {
        (e.NewItems[0] as SourceItem).IsSelected = true;
    }
 
    if (e.OldItems !=null && e.OldItems.Count > 0)
    {
        (e.OldItems[0] as SourceItem).IsSelected = false;
    }
}
```


##See Also

[Selection]({%slug listview-features-selection%})

[Reordering]({%slug listview-features-reorder-items%})
