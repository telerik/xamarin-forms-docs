---
title: Layouts
page_title: Layouts
position: 
slug: listview-features-layouts
---

# Layouts

The **RadListView** component allows users to set either linear or grid layout definition. This can be done by changing the default setting of the **RadListView.LayoutDefinition**. This property is of type ListViewLayoutBase and gets or sets the layout of the control. 

## Common properties

Both layouts share common functionality in addition to the arrangement of the items. They allow users to control the size of the items and the spacing in between. Both layouts expose the following properties:

- **VerticalItemSpacing** (double): Gets or sets the vertical space between two items.
- **HorizontalItemSpacing** (double): Gets or sets the horizontal space between two items.
- **ItemLength** (double): Gets or sets the width or height (depending on the layout orientation) of the items. Its default value is -1 which means that the items will be sized according to the targeted platform.
- **GroupHeaderLength** (double): Gets or sets a value defining how much space the header item should take.
- **Orientation** (Orientation): Gets or sets a value describing how the list should be visualized.

## Linear Layout

Linear layout is the default layout of the control. It can be explicitly set by creating an instance of the **ListViewLinearLayout** class and assigning it to the **RadListView.LayoutDefinition** property.

Here is how the linear layouts look like:

Figure 1: Linear Vertical Layout

![Linear Vertical](images/listview-features-layout.png)

Figure 2: Linear Horizontal Layout

![Linear Horizontal](images/listview-features-horizontal-layout.png)

## Grid Layout

The Grid Layout is an alternative layout provided by the **RadListView** out of the box. It allows distributing cells in a fixed number of columns/rows. In addition to the properties of the linear layout it exposes the **SpanCount** property. It is of type **int** and gets or sets the count of the Columns/Rows (depending on the orientation) of the list. 

The grid layout can be utilized by setting the **RadListView.LayoutDefinition** property to a new instance of the **ListViewGridLayout** class.

Here is how the Grid Layout looks like:

Figure 3: Grid Vertical Layout

![Grid Vertical](images/listview-features-grid-layout.png)

Figure 4: Grid Horizontal Layout

![Grid Horizontal](images/listview-features-horizontal-grid-layout.png)

## Example

#### XAML
	<Grid BackgroundColor="#33888888">
		<Grid.RowDefinitions>
		  <RowDefinition Height="Auto"/>
		  <RowDefinition/>
		</Grid.RowDefinitions>
		
		<StackLayout Padding="10">
		  <Label Text="select layout:" FontSize="Medium"/>
		  <Picker x:Name="layoutPicker"/>
		  <Label Text="select orientation:" FontSize="Medium"/>
		  <Picker x:Name="orientationPicker"/>
		</StackLayout>

		<telerikDataControls:RadListView x:Name="listView" Grid.Row="1" BackgroundColor="White"/>
	</Grid>

#### C# 

    private Orientation orientation = Orientation.Vertical;

    public Layouts()
    {
        InitializeComponent();
        this.InitializePickers();
        listView.ItemsSource = GetSource(100);
    }

    private static IEnumerable GetSource(int count)
    {
        var source = new List<string>();
        for (var i = 0; i < count; i++)
        {
            source.Add(string.Format("item {0}", i));
        }

        return source;
    }

    private void InitializePickers()
    {
        orientationPicker.Items.Add("Vertical");
        orientationPicker.Items.Add("Horizontal");
        orientationPicker.SelectedIndexChanged += this.OnOrientationChanged;
        orientationPicker.SelectedIndex = 0;  
        
        layoutPicker.Items.Add("Linear");
        layoutPicker.Items.Add("Grid");
        layoutPicker.SelectedIndexChanged += this.OnLayoutChanged;
        layoutPicker.SelectedIndex = 0;
    }

    private void OnOrientationChanged(object sender, EventArgs e)
    {
        switch ((sender as Picker).SelectedIndex)
        {
            case 0:
                this.orientation = Orientation.Vertical;
                break;
            case 1:
                this.orientation = Orientation.Horizontal;
                break;
        }
        
        listView.LayoutDefinition.Orientation = this.orientation;
    }

    private void OnLayoutChanged(object sender, EventArgs e)
    {
        switch ((sender as Picker).SelectedIndex)
        {
            case 0:
                listView.LayoutDefinition = new ListViewLinearLayout { Orientation = this.orientation };
                break;
            case 1:
                listView.LayoutDefinition = new ListViewGridLayout { Orientation = this.orientation };
                break;
        }
    }