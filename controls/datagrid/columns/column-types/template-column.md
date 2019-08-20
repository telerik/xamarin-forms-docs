---
title: Template Column
page_title: Template Column
position: 6
slug: datagrid-columns-template-column
---

# DataGrid TemplateColumn

If you want to completely customize the content of the cells in a grid column you can use **DataGridTemplateColumn**, which uses a **DataTemplate** to describe the content of each associated grid cell.

## Important Properties:

* **HeaderText**: Defines the content to be displayed in the Header UI that represents the column.
* **CellContentTemplate** (DataTemplate): Defines the DataTemplate instance that defines the appearance of each cell associated with this column.
* **CellContentTemplateSelector** (DataTemplateSelector): Defines a DataTemplateSelector instance that may be used to retrieve dynamic data templates on a per cell basis.

## Example

```XAML
<telerikGrid:DataGridTemplateColumn HeaderText="Template Column">
    <telerikGrid:DataGridTemplateColumn.CellContentTemplate>
        <DataTemplate>
            <StackLayout>
                <Grid BackgroundColor="Orange"
                      Margin="0, 10, 0, 0">
                    <Label Text="{Binding Country}" 
                           Margin="0, 5, 0, 5"
                           HorizontalOptions="Center"
                           VerticalTextAlignment="Center"/>
                </Grid>
                <Label Text="Some Custom Text" 
                       TextColor="DarkGreen"
                       FontSize="10"></Label>
            </StackLayout>
        </DataTemplate>
    </telerikGrid:DataGridTemplateColumn.CellContentTemplate>
</telerikGrid:DataGridTemplateColumn>
```

![Template Column](images/templatecolumn-overview.png)

## See Also

- [Columns Styling]({%slug datagrid-columns-styling%})
- [Boolean Column]({%slug datagrid-columns-boolean-column%})
- [Date Column]({%slug datagrid-columns-date-column%})
