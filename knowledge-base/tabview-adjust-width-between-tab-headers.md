---
title: Adjust the width between the tab view headers
description: Adjust the width between the tab view headers
type: how-to
page_title: Adjust the width between the tab view headers
slug: tabview-adjust-width-tab-headers
position: 
tags: 
ticketid: 1500488
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2020.3.1207.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>TabView for Xamarin Cross Paltform</td>
		</tr>
	</tbody>
</table>


## Description

This help article will show you how to adjust the width between the tab headers. By default there is a spacing between the tab view headers. The behavior comes from the `RadToolbar` control which is used for the TaBview headers.

## Solution

In order to adjust the width between the tabview headers you will need to set the `ItemSpacing` property (of type `double`) to the `RadTabView.Header`.

For example:

```XAML
<telerikPrimitives:RadTabView x:Name="tabView"
                            HeaderPosition="Top">
    <telerikPrimitives:RadTabView.Header>
        <telerikPrimitives:TabViewHeader ItemSpacing="0"/>
    </telerikPrimitives:RadTabView.Header>
    <telerikPrimitives:RadTabView.Items>
        <telerikPrimitives:TabViewItem>
            <telerikPrimitives:TabViewItem.Header>
                <telerikPrimitives:TabViewHeaderItem Text="Tab 1" BackgroundColor="LightBlue"/>
            </telerikPrimitives:TabViewItem.Header>
        </telerikPrimitives:TabViewItem>
        <telerikPrimitives:TabViewItem HeaderText="Tab 2">
            <telerikPrimitives:TabViewItem.Content>
                <telerikPrimitives:RadTabView
                            HeaderPosition="Top">
                    <telerikPrimitives:RadTabView.Header>
                        <telerikPrimitives:TabViewHeader ItemSpacing="0"/>
                    </telerikPrimitives:RadTabView.Header>
                    <telerikPrimitives:RadTabView.Items>
                        <telerikPrimitives:TabViewItem>
                            <telerikPrimitives:TabViewItem.Header>
                                <telerikPrimitives:TabViewHeaderItem Text="Tab 2.1" BackgroundColor="LightBlue" />
                            </telerikPrimitives:TabViewItem.Header>
                        </telerikPrimitives:TabViewItem>
                        <telerikPrimitives:TabViewItem HeaderText="Tab 2.2">
                        </telerikPrimitives:TabViewItem>
                    </telerikPrimitives:RadTabView.Items>
                </telerikPrimitives:RadTabView>
            </telerikPrimitives:TabViewItem.Content>
        </telerikPrimitives:TabViewItem>
    </telerikPrimitives:RadTabView.Items>
</telerikPrimitives:RadTabView>
```
