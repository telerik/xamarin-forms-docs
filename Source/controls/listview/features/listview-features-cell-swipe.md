---
title: Cell Swipe
page_title: Cell Swipe
position: 
slug: listview-features-cell-swipe
---

# Cell Swipe

The cell swipe feature allows end-users to use swipe gesture on cells. When the user swipes, the content view moves revealing a designated swipe background view where you can place custom views ready for interaction e.g. buttons, images etc.

Figure 1: Cell Swipe

![CellSwipe](images/listview-features-cell-swipe.png)

## Properties

The following RadListView properties are related to the sell swiping feature:

- **IsItemSwipeEnabled**: of type bool which turns on or off the feature. It's default value is false.
- **SwipeThreshhold**: of type double which gets or sets the length (in pixels) of the swipe gesture which is required to trigger the feature. Any shorter swipe will not be respected. It's default value is 0.
- **SwipeOffset**: of type Thickness which gets or sets how much the swiped cell will be moved to the side and stick there. It's default value is 100.
- **ItemSwipeContentTemplate**: of type DataTemplate which gets or sets the content that will be visualized when users swipe a cell.

To enable this feature in a project the **IsItemSwipeEnabled** property of the RadListView should be set to **True**. 

In *Android* it is enough to set this property. It will force the swiped item to stick to the corresponding side. Visualizing the underlying SwipeContent.

In *iOS* however, the **SwipeThreshhold** property should be set to force the items to stick to the swiped side. This property represents the length of the swipe gesture in pixels that will visualize the DataTemplate defined as **ItemSwipeContentTemplate**. Any swipe less than this value will not trigger the Cell Swipe.

## Methods

The following RadListView methods are related to the sell swiping feature:

- void **EndItemSwipe**(bool *isAnimated*): Moves the swiped item to its default position.

## Events

The following RadListView events are related to the sell swiping feature:

- **ItemSwipeStarting**: Occurs when the user has initiated swipe gesture. The event arguments are of type **ItemSwipeStartingEventArgs**, that provides the following properties:
 - **Item** (object): The item that will be swiped.
 - **Cancel** (bool): If you set this value to `false`, the swiping will be canceled.
- **ItemSwiping**: Occurs while the user is swiping the item. The event arguments are of type **ItemSwipingEventArgs**, that provides the following properties:
 - **Item** (object): The item that is being swiped.
 - **Offset** (double): The current swipe offset.
- **ItemSwipeCompleted**: Occurs when the user finishes the swipe gesture. The event arguments are of type **ItemSwipeCompletedEventArgs**, that provides the following properties:
 - **Item** (object): The item that has been swiped.
 - **Offset** (double): The swipe offset at which the item has been dropped.

## Example

#### XAML
	<Grid BackgroundColor="#33888888">
	    <Grid.RowDefinitions>
	      <RowDefinition Height="Auto"/>
	      <RowDefinition/>
	    </Grid.RowDefinitions>
	
	    <Label Text="swipe an item" HorizontalOptions="Center" FontSize="Medium"/>
	
	    <telerikDataControls:RadListView x:Name="listView" Grid.Row="1" IsItemSwipeEnabled="True" SwipeThreshold="10" BackgroundColor="White" SelectionMode="None">
	      <telerikDataControls:RadListView.ItemStyle>
	        <telerikListView:ListViewItemStyle BorderWidth="0"/>
	      </telerikDataControls:RadListView.ItemStyle>
	      <telerikDataControls:RadListView.ItemTemplate>
	        <DataTemplate>
	          <telerikListView:ListViewTemplateCell>
	            <telerikListView:ListViewTemplateCell.View>
	              <StackLayout HorizontalOptions="Center" Padding="10">
	                <Label Text="{Binding Name}" HorizontalOptions="Center" TextColor="Black" FontSize="Medium"/>
	                <StackLayout Orientation="Horizontal" HorizontalOptions="Center">
	                  <Label TextColor="Gray" Text="Amount: "/>
	                  <Label TextColor="Gray" Text="{Binding Value}"/>
	                </StackLayout>
	              </StackLayout>
	            </telerikListView:ListViewTemplateCell.View>
	          </telerikListView:ListViewTemplateCell>
	        </DataTemplate>
	      </telerikDataControls:RadListView.ItemTemplate>
	    
	      <telerikDataControls:RadListView.ItemSwipeContentTemplate>
	        <DataTemplate>
	          <Grid>
	            <Grid.ColumnDefinitions>
	              <ColumnDefinition Width="100"/>
	              <ColumnDefinition/>
	              <ColumnDefinition Width="100"/>
	            </Grid.ColumnDefinitions>
	            <Button Text="increase" TextColor="White" BackgroundColor="#FF9966" Clicked="IncreaseButtonClicked"/>
	            <Button Text="decrease" TextColor="White" BackgroundColor="#66CCFF" Clicked="DecreaseButtonClicked" Grid.Column="2"/>
	          </Grid>
	        </DataTemplate>
	      </telerikDataControls:RadListView.ItemSwipeContentTemplate>
	    </telerikDataControls:RadListView>
	</Grid>

#### C# 
    private int[] randomNumbers = new int[] { 11, 5, 13, 11, 4, 5, 20, 20, 6, 2, 16, 20, 14, 1, 7, 5, 5, 11, 17, 1, 9, 11, 7, 6, 11, 8, 11, 14, 20, 3, 3, 1, 17, 20, 6, 16, 16,
    17, 5, 11, 18, 15, 2, 20, 10, 9, 3, 8, 20, 5 };

    public SwipeGesture()
    {
        InitializeComponent();
        listView.ItemsSource = this.GetSource(50);
        listView.SwipeOffset = Device.OnPlatform<Thickness>(new Thickness(100, 0, 100, 0), 70, 0);
        listView.LayoutDefinition.ItemLength = Device.OnPlatform<double>(60,-1,-1);
    }

    private System.Collections.IEnumerable GetSource(int count)
    {
        var items = new List<Item>();
        for (int i = 0; i < count; i++)
        {
            items.Add(new Item { Name = string.Format("product {0}", i), Value = randomNumbers[i] });
        }

        return items;
    }

    private void IncreaseButtonClicked(object sender, EventArgs e)
    {
        var button = sender as Button;
        var item = button.BindingContext as Item;
        item.Value++;
        listView.EndItemSwipe();
    }

    private void DecreaseButtonClicked(object sender, EventArgs e)
    {
        var button = sender as Button;
        var item = button.BindingContext as Item;
        if (item.Value > 0)
        {
            item.Value--;
        }

        listView.EndItemSwipe();
    }