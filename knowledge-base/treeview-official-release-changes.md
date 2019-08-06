---
title: How to upgrade TreeView from Beta to Official
description: TreeView official release introduces API changes
type: how-to
page_title: TreeView official release changes
slug: treeview-official-release-changes
position: 
tags: treeview, changes 
ticketid: 
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>R3 2018</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>TreeView for Xamarin</td>
	</tr>
</table>


## Description

What changes are introduced with the official release of RadTreeView for Xamarin and how to upgrade from Beta to Official?

## Solution

With its official release in R3 2018 RadTreeView introduces a few API changes described below. 

#### IHierarchyAdapter interface is replaced with TreeViewDescriptors

We reconsidered items loading mechanism in order to enable XAML-only setup of RadTreeView. Now, the IHierarchyAdapter interface is replaced with TreeViewDescriptors. To illustrate the new API, we’ll check the following example:

Let’s have “Item” business object that holds its subitems in Children collection:

```C#
public class Item 
{
    public string Name { get; set; }
    public IList<Item> Children {get; set;}
}
```

We'll use a collection of Item objects as an ItemsSource of RadTreeListView. The approach for defining the hieararchy has changed like this:

**Previously**:

Create a custom HierarchyAdapter class which implements IHierarchyAdapter:

```C#
public class TreeViewDemoAdapter : IHierarchyAdapter
{
    public object GetItemAt(object item, int index)
    {
        return (item as Item).Children[index];
    }

    public IEnumerable<object> GetItems(object item)
    {
        return (item as Item).Children ?? Enumerable.Empty<object>();
    }
} 
```

And set it to the RadTreeView  HierarchyAdapter property:

```C#
treeView.HierarchyAdapter = new TreeViewDemoAdapter();
```

**Now with R3 2018**:

Apply TreeViewDescriptor to RadTreeView with the corresponding properties (DisplayMemberPath and ItemsSourcePath) applied:

```XAML
<telerikDataControls:RadTreeView x:Name="treeView" ItemsSource="{Binding Source}">
     <treeView:TreeViewDescriptor DisplayMemberPath="Name"
								 ItemsSourcePath="Children"
								 TargetType="{x:Type local:Item}"/>
</telerikDataControls:RadTreeView>
```

#### ItemActionEventsArgs is replaced with TreeViewItemEventArgs

This change is made in order to unify the events arguments related to the TreeView control.

Let’s for example subscribe to ItemTapped event of RadTreeView:

```XAML
<telerikDataControls:RadTreeView x:Name="treeView" 
							 ItemsSource="{Binding Source}" 
							 ItemTapped="treeView_ItemTapped" />
```

**Previously**:

```C#
private void treeView_ItemTapped(object sender, Telerik.XamarinForms.DataControls.TreeView.ItemActionEventArgs e)
{
	var tappedItem = e.Item;
}
```

**Now with R3 2018**:

```C#
private void tv_ItemTapped(object sender, Telerik.XamarinForms.DataControls.TreeView.TreeViewItemEventArgs e)
{
	var tappedItem = e.Item;
}
```
