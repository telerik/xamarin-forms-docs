---
title: ListViewTemplateCell and SelectedItemStyle
page_title: Xamarin ListView Documentation | ListViewTemplateCell and SelectedItemStyle
description: Check our &quot;ListViewTemplateCell and SelectedItemStyle&quot; documentation article for Telerik ListView for Xamarin control.
position: 0
slug: listview-howto-selectedstyle-with-templatecell
description: Describing how to apply SelectedItemStyle when using ListViewTemplateCell
tags: style, selected,
---

# ListViewTemplateCell and SelectedItemStyle

When using a ListViewTemplateCell, a SelectedItemStyle's **TextCellTextColor** value will not be used for custom views in the DataTemplate. You can still achieve a similar result by using a model property and ValueConverter, the example below uses such an approach.

### Example

Add an IsSelected boolean property with NotifyPropertyChanged implemented to the business object.

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

Create an IValueConverter implementation that returns a different color based on the value of **IsSelected**.

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

1. Added an instance of the SelectedToColorConverter to the RadListView control's **Resources**
2. The Label's **TextColor** property is bound to the **IsSelected** property, with a converter defined using the *SelectedToColorConverterKey*.
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

Finally, in the SelectionChanged event handler, the IsSelected value is updated:

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

## See Also

- [Selection]({%slug listview-features-selection%})
- [Styling]({%slug listview-features-styling%})
