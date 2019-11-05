---
title: Remove TreeView Animation Transition effect
description: remove / stop the treeview animation transition effect
type: how-to
page_title: Stop TreeView Animation Transition effect
slug: treeview-remove-animation-transition
position: 
tags: treeview, xamarin, xamarin.forms, animations, ransition
ticketid: 1436115
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2019.3 1023.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>TreeView for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

This help article will show you how to remove the TreeView animation transition when expand/collapse items

## Solution

This scenario could be achieved through a custom renderer or an effect for each platforms. Lets stop the animation creating an Effect.

### Creating an Effect on Each Platform

The following sections describe the platform-specific implementation of the AnimationEffect class.

### Android Project

The following code example shows the AnimationEffect implementation for the Android project:

```C#
using Android.Support.V7.Widget;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;

[assembly: ResolutionGroupName("MyCompany")]
[assembly: ExportEffect(typeof(TestLV.Droid.AnimationEffect), nameof(TestLV.AnimationEffect))]

namespace TestLV.Droid
{
    public class AnimationEffect : PlatformEffect
    {
        protected override void OnAttached()
        {
            RecyclerView treeView = (RecyclerView)this.Control;
            treeView.SetItemAnimator(null);
        }

        protected override void OnDetached()
        {
        }
    }
}
```

### iOS Project

The following code example shows the AnimationEffect implementation for the iOS project:

```C#
using TelerikUI;
using Xamarin.Forms;
using Xamarin.Forms.Platform.iOS;

[assembly: ResolutionGroupName("MyCompany")]
[assembly: ExportEffect(typeof(TestLV.iOS.AnimationEffect), nameof(TestLV.AnimationEffect))]

namespace TestLV.iOS
{
    public class AnimationEffect : PlatformEffect
    {
        protected override void OnAttached()
        {
            TKListView treeview = this.Control as TKListView;
            TKListViewLinearLayout layout = ((TKListViewLinearLayout)treeview.Layout);
            layout.AnimationDuration = 0;
        }
        protected override void OnDetached()
        {
           
        }
    }
}
```

### UWP Project

The following code example shows the AnimationEffect implementation for the UWP project:

```C#
using Xamarin.Forms;
using Xamarin.Forms.Platform.UWP;

[assembly: ResolutionGroupName("MyCompany")]
[assembly: ExportEffect(typeof(TestLV.UWP.AnimationEffect), nameof(TestLV.AnimationEffect))]
namespace TestLV.UWP
{
    public class AnimationEffect : PlatformEffect
    {
        protected override void OnAttached()
        {
            (Control as Windows.UI.Xaml.Controls.ItemsControl).ItemContainerTransitions = null;
        }
        protected override void OnDetached()
        {
        }
    }
}
```

### Consuming the Effect

Lets consume the effect from a Xamarin.Forms .NET Standard library project as follows:

1. Declare a control that will be customized by the effect and attach the effect to the control by adding it to the control's [Effects](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.element.effects?view=xamarin-forms#Xamarin_Forms_Element_Effects) collection.

```XAML
<telerikDataControls:RadTreeView x:Name="treeView" ItemsSource="{Binding Source}">
    <telerikDataControls:TreeViewDescriptor DisplayMemberPath="Name"
                                    ItemsSourcePath="Children"
                                    TargetType="{x:Type local:Item}" />
    <telerikDataControls:RadTreeView.Effects>
        <local:AnimationEffect/>
    </telerikDataControls:RadTreeView.Effects>
</telerikDataControls:RadTreeView>
```

and here is a sample ViewModel and business model definition:

```C#
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
                        new Item("October"),
                        new Item("November"),
                        new Item("December")
                    }
                }
            }
        });
        Source.Add(new Item("Shared")
        {
            Children = new List<Item>()
            {
                new Item("Items")
                {
                    Children = new List<Item>()
                    {
                        new Item("October"),
                        new Item("November"),
                        new Item("December")
                    }
                }
            }
        });
    }
    public ObservableCollection<Item> Source { get; set; }
}

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
```

then create AnimationEffect class in the .NET Standard Library project and add the following code:

```C#
using Xamarin.Forms;

namespace TestLV
{
    public class AnimationEffect : RoutingEffect
    {
        public AnimationEffect() : base($"MyCompany.{nameof(AnimationEffect)}")
        {

        }
    }
}
```