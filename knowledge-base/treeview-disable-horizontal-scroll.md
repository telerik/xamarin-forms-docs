---
title: TreeView Disable horizontal scroll caused by long item names
description: This article will show you how to disable the horizontal scroll inside the TreeView control. 
type: how-to
page_title: Disable TreeView hrizontal scroll caused with items with long text
slug: treeview-disable-horizontal-scroll
position: 
tags: treeview, scrolling, horizontal scroll, long text, xamarin, xamarin.forms 
ticketid: 1503952
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2021.1.119.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>TreeView for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

For this purpose, we will need to implement a custom renderer for android and for iOS.

## Solution

Here is a sample TreeView definition:

```XAML
<ContentPage.Resources>
        <ResourceDictionary>
            <telerikTreeView:LevelToMarginConverter x:Key="levelToMarginConverter" />

            <DataTemplate x:Key="CustomControlTemplate">
                <StackLayout Orientation="Horizontal"
                     Margin="{Binding Path=Level, Converter={StaticResource levelToMarginConverter}}">
                    <StackLayout.HeightRequest>
                        <OnPlatform x:TypeArguments="x:Double">
                            <On Platform="iOS" Value="44"></On>
                            <On Platform="Android" Value="40"></On>
                            <On Platform="UWP" Value="40"></On>
                        </OnPlatform>
                    </StackLayout.HeightRequest>
                    <telerikTreeView:ExpandCollapseIndicator FontSize="Medium"
                                           WidthRequest="10"
                                           Margin="15,0"
                                           VerticalTextAlignment="Center"
                                           IsLoading="{Binding Path=IsLoading}"
                                           IsLoadOnDemandEnabled="{Binding Path=IsLoadOnDemandEnabled}"
                                           IsExpanded="{Binding Path=IsExpanded}"
                                           IsLeaf="{Binding Path=IsLeaf}"/>
                    <telerikPrimitives:RadCheckBox IsChecked="{Binding Path=IsChecked, Mode=TwoWay}"
                                    IsVisible="{Binding Path=IsCheckBoxVisible}"
                                    VerticalOptions="Center"/>
                    <telerikTreeView:ItemText Text="{Binding Path=Header}"
                                              VerticalTextAlignment="Center"
                                              MaxLines="1"
                                              LineBreakMode="TailTruncation"/>
                </StackLayout>
            </DataTemplate>
        </ResourceDictionary>
    </ContentPage.Resources>

    <Grid>
        <telerikDataControls:RadTreeView x:Name="treeView" ItemsSource="{Binding Source}">
            <telerikDataControls:TreeViewDescriptor DisplayMemberPath="Name"
                                            ItemsSourcePath="Children"
                                                    ItemTemplate="{StaticResource CustomControlTemplate}"
                                            TargetType="{x:Type local:Item}" />
        </telerikDataControls:RadTreeView>
    </Grid>
```

and the used ViewModel

```C#
public class Item
{
    public Item(string name)
    {
        this.Name = name;
        this.Children = new ObservableCollection<Item>();
    }

    public string Name { get; set; }
    public IList<Item> Children { get; set; }
}

public class ViewModel
{
    public ViewModel()
    {
        Source = new ObservableCollection<Item>();
        Source.Add(new Item("My Documents")
        {
            Children = new List<Item>()
        {
            new Item("Xamarin Projects")
            {
                Children = new ObservableCollection<Item>()
                {
                    new Item("TreeView Examples"),
                    new Item("Calendar & Scheduling QSF")
                }
            },
            new Item("Documentation Drafts")
        }
        });
        Source.Add(new Item("Shared Documents")
        {
            Children = new List<Item>()
        {
            new Item("Reports")
            {
                Children = new List<Item>()
                {
                    new Item("Long text text text text text text text text text text text text text text end"),
                    new Item("November"),
                    new Item("December")
                }
            }
        }
        });
    }
    public ObservableCollection<Item> Source { get; set; }
}
```

then the BindingContext set

```C#
this.BindingContext = new ViewModel();
```

### Custom Renderer for Android

Custom Renderer implementation on Android

```C#
using System;
using System.Reflection;
using Android.Content;
using AndroidX.RecyclerView.Widget;
using RadTreeViewXF.Droid;
using Telerik.XamarinForms.DataControls;
using Telerik.XamarinForms.DataControls.TreeView;
using Telerik.XamarinForms.DataControlsRenderer.Android;
using Xamarin.Forms;
using Xamarin.Forms.Internals;
using Xamarin.Forms.Platform.Android;
using AndroidViews = Android.Views;

[assembly: ExportRenderer(typeof(RadTreeView), typeof(CustomTreeViewRenderer))]
namespace RadTreeViewXF.Droid
{
    public class CustomTreeViewRenderer : TreeViewRenderer
    {
        public CustomTreeViewRenderer(Context context)
            : base(context)
        {
        }

        protected override void OnElementChanged(ElementChangedEventArgs<RadTreeView> e)
        {
            base.OnElementChanged(e);

            var nativeTreeView = this.Control;
            if (nativeTreeView != null)
            {
                Registrar.Registered.Register(typeof(TreeViewTemplateCell), typeof(CustomTreeViewTemplateCellRenderer));
                nativeTreeView.SetLayoutManager(new LinearLayoutManager(this.Context));
            }
        }

        class CustomTreeViewTemplateCellRenderer : CellRenderer
        {
            protected override AndroidViews.View GetCellCore(Cell item, AndroidViews.View convertView, AndroidViews.ViewGroup parent, Context context)
            {
                var viewCell = (ViewCell)item;

                IVisualElementRenderer renderer = Platform.GetRenderer(viewCell.View);
                if (renderer == null || renderer.Element == null)
                {
                    renderer = Platform.CreateRendererWithContext(viewCell.View, context);
                    Platform.SetRenderer(viewCell.View, renderer);
                }

                return new TreeViewTemplateCellContainer(context, renderer, viewCell);
            }
        }

        class TreeViewTemplateCellContainer : FormsViewGroup
        {
            private static Type invalidationEventArgsType;
            private static PropertyInfo triggerProperty;

            protected readonly ViewCell viewCell;
            protected readonly IVisualElementRenderer view;
            private MethodInfo invalidateMeasureMethod;

            public TreeViewTemplateCellContainer(Context context, IVisualElementRenderer view, ViewCell viewCell)
                : base(context)
            {
                this.viewCell = viewCell;
                this.view = view;
                this.AddView(view.View);

                this.viewCell.View.MeasureInvalidated += this.OnMeasureInvalidated;
                this.invalidateMeasureMethod = this.view.Element.GetType().GetMethod("InvalidateMeasure", BindingFlags.InvokeMethod | BindingFlags.NonPublic | BindingFlags.Public | BindingFlags.Instance, null, new System.Type[] { }, new ParameterModifier[] { });
            }

            protected override void OnMeasure(int widthMeasureSpec, int heightMeasureSpec)
            {
                var treeView = (RadExtendedListView)this.Parent;
                var width = treeView.Width;
                this.invalidateMeasureMethod.Invoke(this.view.Element, new object[] { });

                var sizeRequest = this.view.Element.Measure(double.PositiveInfinity, double.PositiveInfinity, MeasureFlags.IncludeMargins);

                var height = (int)this.Context.ToPixels(this.viewCell.Height > 0 ? this.viewCell.Height : sizeRequest.Request.Height);
                this.SetMeasuredDimension(width, height);
            }

            protected override void OnLayout(bool changed, int left, int top, int right, int bottom)
            {
                var context = base.Context;
                var width = context.FromPixels(right - left);
                var height = context.FromPixels(bottom - top);

                Xamarin.Forms.Layout.LayoutChildIntoBoundingRegion(this.view.Element, new Rectangle(0, 0, width, height));
                this.view.UpdateLayout();
            }

            private void OnMeasureInvalidated(object sender, System.EventArgs e)
            {
                var trigger = TryGetInvalidationTrigger(e);
                if (trigger.HasValue && trigger.Value.HasFlag(InvalidationTrigger.SizeRequestChanged) ||
                    trigger.Value.HasFlag(InvalidationTrigger.MarginChanged) ||
                    trigger.Value.HasFlag(InvalidationTrigger.MeasureChanged))
                {
                    this.RequestLayout();
                }
            }

            protected override void Dispose(bool disposing)
            {
                if (disposing)
                {
                    if (this.viewCell != null && this.viewCell.View != null)
                    {
                        this.viewCell.View.MeasureInvalidated -= this.OnMeasureInvalidated;
                        this.viewCell.View = null;
                    }
                }

                base.Dispose(disposing);
            }

            internal static InvalidationTrigger? TryGetInvalidationTrigger(EventArgs e)
            {
                Type type = e.GetType();
                if (invalidationEventArgsType == null)
                {
                    if (type.FullName == "Xamarin.Forms.InvalidationEventArgs")
                    {
                        invalidationEventArgsType = type;
                        triggerProperty = type.GetRuntimeProperty("Trigger");
                    }
                }

                if (type != invalidationEventArgsType)
                {
                    return null;
                }

                object propertyValue = triggerProperty.GetValue(e);
                InvalidationTrigger actualTrigger = (InvalidationTrigger)propertyValue;
                return actualTrigger;
            }
        }
    }
}

```

### Custom Renderer for iOS

Custom Renderer implementation on iOS

```C#
using CoreGraphics;
using Foundation;
using RadTreeViewXF.iOS;
using Telerik.XamarinForms.DataControls;
using Telerik.XamarinForms.DataControlsRenderer.iOS;
using TelerikUI;
using Xamarin.Forms;

[assembly: ExportRenderer(typeof(RadTreeView), typeof(CustomTreeViewRenderer))]
namespace RadTreeViewXF.iOS
{
    public class CustomTreeViewRenderer : TreeViewRenderer
    {
        protected override TKTreeViewListView CreateNativeControl()
        {
            return new CustomTKTreeViewListView();
        }

        class CustomTKTreeViewListView : TKTreeViewListView
        {
            public override TKListViewLinearLayout CreateLayout()
            {
                return new CustomTreeViewLayout(this);
            }
        }
    }

    public class CustomTreeViewLayout : TreeViewLayout
    {
        TKListView listView;
        public CustomTreeViewLayout(TKListView listView)
            : base(listView)
        {
            this.listView = listView;
        }

        public override CGSize GetItemSizeForIndexPath(NSIndexPath indexPath)
        {
            return this.Delegate.SizeForItem(this.listView, this, indexPath);
        }
    }
}

```