---
title: Toggle TabView SelectedItem Visibility 
description: How to hide the current selected item when iscontentpreserved is true
type: how-to
page_title: Hide the current TabView  SelectedItem
slug: tabview-hide-current-selected-item-iscontentpreserved-true
position: 
tags: tabview, selected item, visibility, iscontentpreserved, true, hide tabview item
ticketid: 1532945
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product</td>
			<td>TabView for Xamarin Cross-Platform</td>
		</tr>
	</tbody>
</table>


## Description

This article will explain the approach you need to follow in order to hide the current selected TabView Item when RadTabView.`IsContentPreserved` is `True`.

## Solution

You have to programatically select the next available item(that is **visible** and **enabled**) and then hide the previously selected item.

>important The next selected item must be visible in the TabView Header and must be enabled

## Example

RadTabView definition and `IsContentPreserved` set to `True`. On Buton click event we will change the first item visibility.

```XAML
<StackLayout>
    <Label Text="Hide selected item when RadTabView.IsContentPreserved is true." />
    <telerikPrimitives:RadTabView x:Name="tabView"
                                  IsContentPreserved="True"
                                  Margin="0, 30, 0, 0">
        <telerikPrimitives:RadTabView.Items>
            <telerikPrimitives:TabViewItem HeaderText="item 1">
                <telerikPrimitives:TabViewItem.Content>
                    <Label Text="item 1 content" />
                </telerikPrimitives:TabViewItem.Content>
            </telerikPrimitives:TabViewItem>
            <telerikPrimitives:TabViewItem HeaderText="item 2">
                <telerikPrimitives:TabViewItem.Content>
                    <Label Text="item 2 content" />
                </telerikPrimitives:TabViewItem.Content>
            </telerikPrimitives:TabViewItem>
            <telerikPrimitives:TabViewItem HeaderText="item 3">
                <telerikPrimitives:TabViewItem.Content>
                    <Label Text="item 3 content" />
                </telerikPrimitives:TabViewItem.Content>
            </telerikPrimitives:TabViewItem>
        </telerikPrimitives:RadTabView.Items>
    </telerikPrimitives:RadTabView>
    <Button Text="Invert first item visibility"
            Clicked="Button_Clicked" />
</StackLayout>
```

and here is the logic inside the ButtonClicked method:

```C#
private void Button_Clicked(object sender, System.EventArgs e)
{
    var firstItem = this.tabView.Items[0];

    if (!firstItem.IsSelected)
    {
        firstItem.IsVisible = !firstItem.IsVisible;
    }
    else
    {
        if (firstItem.IsVisible)
        {
            this.tabView.Items[1].IsSelected = true;
            Device.BeginInvokeOnMainThread(async () =>
            {
                // Delay used to workaround a bug in iOS SlideView where exception is thrown
                // if selected item of SlideView control is removed dinamically

                await Task.Delay(50);
                firstItem.IsVisible = false;

            });
        }
        else
        {
            firstItem.IsVisible = true;
        }
    }
}
```