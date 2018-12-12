---
title: Programmatic Scrolling
page_title: Programmatic Scrolling
position: 8
slug: listview-features-scrolling
description: Describing how to scroll RadListView to a certain item
tags: programmatic, scrolling
---

# Programmatic Scrolling

RadListView exposes the following method for programmatic scrolling to a specific data item: 

* **ScrollItemIntoView(object item)**: Attempts to bring the specified data item into the view.

## Example

Here is the definition of the ListView control:

<snippet id='listview-features-programmatic-scrolling-xaml'/>

use the following code to create a simple data for the ListView component:

<snippet id='listview-features-programmatic-scrolling'/>

Create a method called **ScrollToItem** and inside this method use __ScrollItemIntoView__ to navigate to a concrete item:

<snippet id='listview-features-programmatic-scrolling-scroll-to-item-method'/>
	
And the end result:

#### Figure 1: Scrolling item into View
![](images/listview-features-scrolling.png)
	
## See Also

- [Selection]({%slug listview-features-selection%})
- [Grouping]({%slug listview-features-grouping%})
- [Reordering]({%slug listview-features-reorder-items%})


