---
title: Select items from a checkbox in the group header 
description: select all items in the group from the group header
type: how-to
page_title: Select listview items from a checkbox in the group header
slug: listview-select-items-from-group-header
position: 
tags: 
ticketid: 1539965
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.1.413.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>ListView for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article will show you how to select all items from a group uisng checkbox in the groupo header.

## Solution

You can create a [GroupHeaderTemplate]({%slug listview-features-grouping%}#groupheadertemplate) and inside it place a CheckBox control with a Command handled in the ViewModel, basically through an EventToCommandBehavior you can subscribe to the IsCheckedChanged event and implement the needed logic for checking/unchecking the group child items.

ListView definition in XAML. The CheckBox control is added inside the GroupHeaderTemplate:

```XAML
<ContentPage.Resources>
    <ResourceDictionary>
        <DataTemplate x:Key="ListViewItemTemplate">
            <telerikListView:ListViewTemplateCell>
                <telerikListView:ListViewTemplateCell.View>
                    <Grid Padding="16, 0, 0, 0" BackgroundColor="#F1F2F5">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="30" />
                            <ColumnDefinition Width="*" />
                        </Grid.ColumnDefinitions>
                        <telerikPrimitives:RadCheckBox IsChecked="{Binding IsSelected} "/>
                        <Label Grid.Column="1" Text="{Binding Name}" TextColor="#6F6F70" FontSize="Small" />
                    </Grid>
                </telerikListView:ListViewTemplateCell.View>
            </telerikListView:ListViewTemplateCell>
        </DataTemplate>
        <DataTemplate x:Key="ListViewGroupHeaderTemplate">
            <Grid>
                <Grid.ColumnDefinitions>
                    <ColumnDefinition Width="Auto" />
                    <ColumnDefinition Width="Auto" />
                    <ColumnDefinition />
                </Grid.ColumnDefinitions>
                <Label Text="&#x25B8;" Margin="8, 12, 0, 6" TextColor="DarkGray" FontSize="Medium">
                    <Label.Triggers>
                        <DataTrigger TargetType="Label" Binding="{Binding IsExpanded}" Value="True">
                            <Setter Property="Text" Value="&#x25BE;" />
                        </DataTrigger>
                    </Label.Triggers>
                </Label>
                <telerikPrimitives:RadCheckBox  Margin="0, 12, 0, 6"  Grid.Column="1">
                    <telerikPrimitives:RadCheckBox.Behaviors>
                        <behaviors:EventToCommandBehavior EventName="IsCheckedChanged" 
                                                          Command="{Binding BindingContext.IsCheckedChangedCommand, Source={x:Reference listView}}"                                                                          
                                                          CommandParameter="{Binding}" />
                    </telerikPrimitives:RadCheckBox.Behaviors>
                </telerikPrimitives:RadCheckBox>
                <Label Margin="0, 12, 0, 6" Text="{Binding }" Grid.Column="2" TextColor="DarkGray" FontSize="Medium" HorizontalOptions="Start" />
            </Grid>
        </DataTemplate>
        <telerikListView:ListViewGroupStyle x:Key="ListViewGroupHeaderStyle" BackgroundColor="Transparent" />
    </ResourceDictionary>
</ContentPage.Resources>
<Grid>
    <telerikDataControls:RadListView x:Name="listView" ItemsSource="{Binding Cities}"
                             ItemTemplate="{StaticResource ListViewItemTemplate}"
                             GroupHeaderTemplate="{StaticResource ListViewGroupHeaderTemplate}"
                             GroupHeaderStyle="{StaticResource ListViewGroupHeaderStyle}">
        <telerikDataControls:RadListView.GroupDescriptors>
            <telerikListView:PropertyGroupDescriptor PropertyName="Country"/>
        </telerikDataControls:RadListView.GroupDescriptors>
    </telerikDataControls:RadListView>
</Grid>
```

The ViewModel and business model used:

```C#
public class ViewModel
{
    public ObservableCollection<City> Cities { get; set; }

    public ObservableCollection<string> SelectedGroupKeys { get; set; }
    public ViewModel()
    {
        this.Cities = new ObservableCollection<City>()
        {
            new City() { Name = "Barcelona", Country = "Spain"},
            new City() { Name = "Madrid", Country = "Spain"},
            new City() { Name = "Rome", Country = "Italy"},
            new City() { Name = "Florence", Country = "Italy"},
            new City() { Name = "London", Country = "England"},
            new City() { Name = "Manchester", Country = "England"},
            new City() { Name = "New York", Country = "USA"},
            new City() { Name = "Boston", Country = "USA"}
         };

        this.IsCheckedChangedCommand = new Command(this.IsCheckedChangedCommandExecute);
        this.SelectedGroupKeys = new ObservableCollection<string>();
    }

    public ICommand IsCheckedChangedCommand { get; private set; }

    private void IsCheckedChangedCommandExecute(object param)
    {
        var currentGroupkey = (string) (param as GroupHeaderContext).Key;
        var childitems = (param as GroupHeaderContext).Items;
        bool shouldBeSelected;

        if (this.SelectedGroupKeys.Contains(currentGroupkey))
        {
            this.SelectedGroupKeys.Remove(currentGroupkey);

            shouldBeSelected = false;
        }
        else
        {
            this.SelectedGroupKeys.Add(currentGroupkey);
            shouldBeSelected = true;
        }

       foreach(City city in this.Cities.Where(c => c.Country == currentGroupkey).ToList())
        {
            city.IsSelected = shouldBeSelected;
        }

    }
}

public class City: NotifyPropertyChangedBase
{
    private bool isSelected;
    public string Name { get; set; }
    public string Country { get; set; }

    public bool IsSelected
    {
        get { return this.isSelected; }
        set
        {
            if(this.isSelected != value)
            {
                this.isSelected = value;
                this.OnPropertyChanged();
            }
        }
    }
}
```

Set the `BindingContex`t after `InitializeComponent()`:

```C#
this.BindingContext = new ViewModel();
```

EventToCommand behavior implementation:

Create a BehaviorBase

```C#
public class BehaviorBase<T> : Behavior<T> where T : BindableObject
{
    public T AssociatedObject { get; private set; }

    protected override void OnAttachedTo(T bindable)
    {
        base.OnAttachedTo(bindable);
        AssociatedObject = bindable;

        if (bindable.BindingContext != null)
        {
            BindingContext = bindable.BindingContext;
        }

        bindable.BindingContextChanged += OnBindingContextChanged;
    }

    protected override void OnDetachingFrom(T bindable)
    {
        base.OnDetachingFrom(bindable);
        bindable.BindingContextChanged -= OnBindingContextChanged;
        AssociatedObject = null;
    }

    void OnBindingContextChanged(object sender, EventArgs e)
    {
        OnBindingContextChanged();
    }

    protected override void OnBindingContextChanged()
    {
        base.OnBindingContextChanged();
        BindingContext = AssociatedObject.BindingContext;
    }
}
```

Create a class EventToCommandBehavior which inherits from BehaviorBase

```C#
public class EventToCommandBehavior : BehaviorBase<VisualElement>
{
    Delegate eventHandler;

    public static readonly BindableProperty EventNameProperty = BindableProperty.Create("EventName", typeof(string), typeof(EventToCommandBehavior), null, propertyChanged: OnEventNameChanged);
    public static readonly BindableProperty CommandProperty = BindableProperty.Create("Command", typeof(ICommand), typeof(EventToCommandBehavior), null);
    public static readonly BindableProperty CommandParameterProperty = BindableProperty.Create("CommandParameter", typeof(object), typeof(EventToCommandBehavior), null);
    public static readonly BindableProperty InputConverterProperty = BindableProperty.Create("Converter", typeof(IValueConverter), typeof(EventToCommandBehavior), null);

    public string EventName
    {
        get { return (string)GetValue(EventNameProperty); }
        set { SetValue(EventNameProperty, value); }
    }

    public ICommand Command
    {
        get { return (ICommand)GetValue(CommandProperty); }
        set { SetValue(CommandProperty, value); }
    }

    public object CommandParameter
    {
        get { return GetValue(CommandParameterProperty); }
        set { SetValue(CommandParameterProperty, value); }
    }

    public IValueConverter Converter
    {
        get { return (IValueConverter)GetValue(InputConverterProperty); }
        set { SetValue(InputConverterProperty, value); }
    }

    protected override void OnAttachedTo(VisualElement bindable)
    {
        base.OnAttachedTo(bindable);
        RegisterEvent(EventName);
    }

    protected override void OnDetachingFrom(VisualElement bindable)
    {
        DeregisterEvent(EventName);
        base.OnDetachingFrom(bindable);
    }

    void RegisterEvent(string name)
    {
        if (string.IsNullOrWhiteSpace(name))
        {
            return;
        }

        EventInfo eventInfo = AssociatedObject.GetType().GetRuntimeEvent(name);
        if (eventInfo == null)
        {
            throw new ArgumentException(string.Format("EventToCommandBehavior: Can't register the '{0}' event.", EventName));
        }
        MethodInfo methodInfo = typeof(EventToCommandBehavior).GetTypeInfo().GetDeclaredMethod("OnEvent");
        eventHandler = methodInfo.CreateDelegate(eventInfo.EventHandlerType, this);
        eventInfo.AddEventHandler(AssociatedObject, eventHandler);
    }

    void DeregisterEvent(string name)
    {
        if (string.IsNullOrWhiteSpace(name))
        {
            return;
        }

        if (eventHandler == null)
        {
            return;
        }
        EventInfo eventInfo = AssociatedObject.GetType().GetRuntimeEvent(name);
        if (eventInfo == null)
        {
            throw new ArgumentException(string.Format("EventToCommandBehavior: Can't de-register the '{0}' event.", EventName));
        }
        eventInfo.RemoveEventHandler(AssociatedObject, eventHandler);
        eventHandler = null;
    }

    void OnEvent(object sender, object eventArgs)
    {
        if (Command == null)
        {
            return;
        }

        object resolvedParameter;
        if (CommandParameter != null)
        {
            resolvedParameter = CommandParameter;
        }
        else if (Converter != null)
        {
            resolvedParameter = Converter.Convert(eventArgs, typeof(object), null, null);
        }
        else
        {
            resolvedParameter = eventArgs;
        }

        if (Command.CanExecute(resolvedParameter))
        {
            Command.Execute(resolvedParameter);
        }
    }

    static void OnEventNameChanged(BindableObject bindable, object oldValue, object newValue)
    {
        var behavior = (EventToCommandBehavior)bindable;
        if (behavior.AssociatedObject == null)
        {
            return;
        }

        string oldEventName = (string)oldValue;
        string newEventName = (string)newValue;

        behavior.DeregisterEvent(oldEventName);
        behavior.RegisterEvent(newEventName);
    }
}
```