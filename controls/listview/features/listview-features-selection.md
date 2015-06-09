---
title: Selection
page_title: Selection
position: 
slug: listview-features-selection
---

# Selection
The **RadListView** component exposes selection feature. It allows users to select one or many items out of the ItemsSource of the control. This feature provides both visual and programmatic feedback for the actions of the user. It consists of:

1. **SelectionGesture** - a property of type SelectionGesture which gets or sets the gesture triggering the selection. Can be set to **SelectionGesture.Tap** or **SelectionGesture.Hold**
2. **SelectionMode** - a property of type SelectionMode which gets or sets the mode of the selection. It can be set to **SelectionMode.None**, **SelectionMode.Single** or **SelectionMode.Multiple**.
3. **SelectedItems** - a property of type ReadOnlyObservableCollection<object> which holds the items that are currently selected.
4. **SelectionChanged** - an event that is triggered whenever the SelectedItems collection is changed.

## Single Selection

This is the default selection mode. It allows users to select only one item. This is how it looks.

Figure 1: ListView SingleSelection in Android

![ListView SingleSelection Android](images/listview-features-selection-single-android.png)

Figure 2: ListView SingleSelection in iOS

![ListView SingleSelection iOS](images/listview-features-selection-single-ios.png)

## Multiple Selection

To enable it the **SelectionMode** property should be set to **SelectionMode.Multiple**. This mode allows users to select more than one item. Here is how it looks.

Figure 1: ListView MultipleSelection in Android

![ListView MultipleSelection Android](images/listview-features-selection-multiple-android.png)

Figure 1: ListView MultipleSelection in iOS

![ListView MultipleSelection iOS](images/listview-features-selection-multiple-ios.png)
