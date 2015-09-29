---
title: Selection
page_title: Selection
position: 
slug: listview-features-selection
---

# Selection

The **RadListView** component exposes selection feature. It allows users to select one or many items out of the ItemsSource of the control. This feature provides both visual and programmatic feedback for the actions of the user. The following members are related to the selection: 

- **SelectionGesture** (SelectionGesture): Gets or sets the gesture triggering the selection. The available values are: **Tap**, **Hold**.
- **SelectionMode** (SelectionMode): Gets or sets the mode of the selection. The available values are: **None**, **Single**, **Multiple**.
- **SelectedItems** (ReadOnlyObservableCollection<object>): Holds the items that are currently selected.
- **SelectionChanged**: An event that is triggered whenever the SelectedItems collection is changed.

## Single Selection

This is the default selection mode. It allows users to select only one item. This is how it looks.

Figure 1: Single Selection

![SingleSelection](images/listview-features-selection-single.png)

## Multiple Selection

To enable it the **SelectionMode** property should be set to **SelectionMode.Multiple**. This mode allows users to select more than one item. Here is how it looks.

Figure 2: Multiple Selection

![MultipleSelection](images/listview-features-selection-multiple.png)

## Example

#### XAML

	<Grid BackgroundColor="#33888888">
		<Grid.RowDefinitions>
		  <RowDefinition Height="Auto"/>
		  <RowDefinition/>
		</Grid.RowDefinitions>
		
		<StackLayout Padding="10">
		  <Label Text="set selection mode:" FontSize="Medium"/>
		  <Picker x:Name="selectionModePicker"/>
		  <Label Text="set selection gesture:" FontSize="Medium"/>
		  <Picker x:Name="selectionGesturePicker"/>
		</StackLayout>
		
		<telerikDataControls:RadListView  x:Name="listView" Grid.Row="1" BackgroundColor="White">
		  <telerikDataControls:RadListView.SelectedItemStyle>
		    <telerikListView:ListViewItemStyle BackgroundColor="#88888888"/>
		  </telerikDataControls:RadListView.SelectedItemStyle> 
		</telerikDataControls:RadListView>
	</Grid>

#### C# 

    public Selection()
    {
        InitializeComponent();
        listView.ItemsSource = new List<string> { "dog", "cat", "horse", "cow" };
        this.InitializePickers();
    }

    private void InitializePickers()
    {
        selectionModePicker.Items.Add("None");
        selectionModePicker.Items.Add("Single");
        selectionModePicker.Items.Add("Multiple");
        selectionModePicker.SelectedIndexChanged += this.OnSelectionModeChanged;
        selectionModePicker.SelectedIndex = 1;

        selectionGesturePicker.Items.Add("Tap");
        selectionGesturePicker.Items.Add("Hold");
        selectionGesturePicker.SelectedIndexChanged += this.OnSelectionGestureChanged;
        selectionGesturePicker.SelectedIndex = 0;
    }

    private void OnSelectionGestureChanged(object sender, EventArgs e)
    {
        switch ((sender as Picker).SelectedIndex)
        {
            case 0:
                listView.SelectionGesture = SelectionGesture.Tap;
                break;
            case 1:
                listView.SelectionGesture = SelectionGesture.Hold;
                break;
        }
    }

    private void OnSelectionModeChanged(object sender, EventArgs e)
    {
        switch ((sender as Picker).SelectedIndex)
        {
            case 0:
                listView.SelectionMode = SelectionMode.None;
                break;
            case 1:
                listView.SelectionMode = SelectionMode.Single;
                break;
            case 2:
                listView.SelectionMode = SelectionMode.Multiple;
                break;
        }
    }

    private void ListViewSelectionChanged(object sender, NotifyCollectionChangedEventArgs e)
    {
        if (e.NewItems != null)
        {
            foreach (var item in e.NewItems)
            {
                this.DisplayAlert("Selected item:", (string)item, "OK");
            }
        }
    }