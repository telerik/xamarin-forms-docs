---
title: Controls Are Not Appearing
page_title: Controls Are Not Appearing"
slug: controls-are-not-appearing
position: 5
---

## Problem: Controls Are Not Appearing

Some of the Telerik UI for Xamarin controls, like `RadListView`, `RadDataGrid` and `RadTreeView`, use UI Virtualization, or other optimization methods, that require the visual parent to provide vertical or horizontal space for the control to fill into.

#### Too Little Space
When using a parent that does not provide space for the control to appear, the UI component *may not be visible at all or be partially cut off*.

A couple of these layout controls are:

- `StackLayout`
- Grid `RowDefinition Height="Auto"`

## Solution

To solve this, you can take one of two routes:


#### Option 1 - Use HeightRequest
Give the control a definitive `HeightRequest` value. For example:

```xml
<telerikDataControls:RadListView HeightRequest="500" .../>
```

#### Option 2 - Different Layout Type

Choose a more suitable parent. One that provides definitive boundaries for the control to expand into. The most common setup for this is a Grid and use the `RowDefinition` with a star-sized, or numerically-sized **Height**.

```xml
<Grid>
    <Grid.RowDefinitions>
        <RowDefinition Height="*" />
        <RowDefinition Height="Auto" />
    </Grid.RowDefinitions>

    <!-- This RadListView is in the star-sized row and will expand properly -->
    <telerikDataControls:RadListView .../>

    <Label Text="I'm in auto-sized row" Grid.Row="1" />
</Grid>
```

#### Additional Note: The *Too Much Space* Problem

Problems can arise in the opposite circumstance. If you use a parent layout control that lets the children expand infinitely, the UI component has no boundaries and will render all of it's items to the full height. 

This causes significant problems for UI Virtualization because all of the items will render, which present memory problems and UI performance suffers.

An example of this is the `ScrollView`.  In this case, the control's gestures no longer work. For example, the user is actually scrolling the `ScrollView`, not the `RadListView`.

The solution for this is the same as above.