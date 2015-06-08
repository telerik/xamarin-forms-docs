---
title: Layouts
page_title: Layouts
position: 
slug: listview-features-layouts
---

# Layouts

The **RadListView** component allows users to set either linear or grid layout definition. This can be done by changing the default setting of the **RadListView.LayoutDefinition**. It is of type ListViewLayoutBase and gets or sets the layout of the control. 

## Linear Layout

Linear layout is the default layout of the control. It can be explicitly set by creating an instance of the **ListViewLinearLayout** class and assigning it to the **RadListView.LayoutDefinition** property. In addition to the layout itself users can also change it's orientation. This can be done by changing the **ListViewLinearLayout.Orientation** property. It is of type *Orientation* enum and gets or sets the orientation either to *Vertical* or *Horizontal*.

Here is how the linear layouts look like:

![Linear Vertical](images/listview-features-layout-android.png)
![Linear Vertical](images/listview-features-layout-ios.png)

![Linear Horizontal](images/listview-features-horizontal-layout-android.png)
![Linear Horizontal](images/listview-features-horizontal-layout-ios.png)

## Grid Layout

The Grid Layout is an alternative layout provided by the **RadListView** out of the box. It allows distributing cells in a fixed number of columns/rows. It can be utilized by setting the **RadListView.LayoutDefinition** property to a new instance of the **ListViewGridLayout** class. It's orientation can also be changed by setting the **ListViewGridLayout.Orientation** property to either *Orientation.Vertical* or *Orientation.Horizontal*.

Here is how the Grid Layout looks like:

![Grid Vertical](images/listview-features-grid-layout-android.png)
![Grid Vertical](images/listview-features-grid-layout-ios.png)

![Grid Horizontal](images/listview-features-horizontal-grid-layout-android.png)
![Grid Horizontal](images/listview-features-horizontal-grid-layout-ios.png)