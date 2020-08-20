---
title: Pull to Refresh
page_title: Xamarin ListView Documentation | Pull to Refresh
description: Check our &quot;Pull to Refresh&quot; documentation article for Telerik ListView for Xamarin control.
position: 
slug: listview-features-pull-to-refresh
---

# Pull to Refresh

If the list contains items, which may change after the initial load, it may be good idea to allow users to refresh that list. **RadListView** is capable of doing this by a pull-to-refresh gesture. The feature allows the data to be refreshed by swiping finger down when the content is scrolled up to the top. This will trigger an animated activity indicator which will stay visible until data is refreshed.

This feature consists of:

- **RadListView.IsPullToRefreshEnabled**: a boolean property which gets or sets a statement disabling or enabling the feature. The default value of the property is false.
- **RadListView.RefreshRequested**: a public event which is triggered when the pull-to-refresh gesture is triggered. The custom data refreshing logic should be implemented in its handler.
- **RadListView.EndRefresh()**: a public method which must be called when the custom data refreshing logic finishes executing.


## Example

This example demonstrates how to enable the pull to refresh functionality.

Here is the definition of the list view in Xaml:

<snippet id='listview-gestures-pulltorefresh-listview'/>

Where:

<snippet id='xmlns-telerikdatacontrols'/>

Let's set some simple source to the list view in the code behind of the page:

<snippet id='listview-gestures-pulltorefresh-source'/>

And this is the method that updates the source of the list view when refresh is triggered:

<snippet id='listview-gestures-pulltorefresh-event'/>

This is how the refresh indicator looks like:

![PullToRefresh](images/listview-gestures-pull-to-refresh.png)

## Troubleshooting

RadListView should not be used in a View that restricts the Height to the minimum amount of vertical space. An example is `StackLayout` or a Grid with `<RowDefinition Height="Auto" />`. This will restrict the RadListView from expanding when items are populated and  prevents Pull To Refresh from working correctly.

The recommended use is to place the RadListView control in a container that expands to fill available space. For example, the RadListView in the example below is in the star-sized Grid RowDefinition.

```
<Grid>
    <Grid.RowDefinitions>
        <RowDefinition Height="*" />
        <RowDefinition Height="Auto" />
    </Grid.RowDefinitions>

    <!-- This RadListView is in the star-sized row and will expand properly -->
    <telerikDataControls:RadListView x:Name="EventsList" />

    <Label Text="I'm in auto-sized row" Grid.Row="1" />
</Grid>
```

## See Also

- [ListView Cell Types]({% slug listview-cells %})
- [ListView Layouts]({% slug listview-features-layouts %})
- [Cell Swipe]({% slug listview-features-cell-swipe %})
- [Reorder Items]({% slug listview-features-reorder-items %})
