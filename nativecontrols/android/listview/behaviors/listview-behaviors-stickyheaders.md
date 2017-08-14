---
title: Sticky Headers
page_title: Sticky Header Behavior | Telerik UI for Xamarin.Android Documentation
description: A help topic about StickyHeaderBehavior in RadListView for Android.
slug: listview-behaviors-stickyheaders
tags: radlistview, behaviors, stickyheaders, list, listview
publish: true
position: 7
---

# RadListView: StickyHeaderBehavior

If your list contains group headers as demonstrated in [this article]({% slug listview-data %} "Read more about Grouping"), you can use the **StickyHeaderBehavior** which will 'freeze' the group header of the top item:

![TelerikUI-ListView-StickyHeaders](images/listview-behaviors-stickyheaders-1.png "This is the sticky header behavior.")

As you can see from the image, even though the list is scrolled to the middle of an item, its header remains visible on the top of the list. Here's the code for this to work:

```Java
StickyHeaderBehavior stickyHeaderBehavior = new StickyHeaderBehavior();
listView.addBehavior(stickyHeaderBehavior);
```
```C#
StickyHeaderBehavior stickyHeaderBehavior = new StickyHeaderBehavior ();
listView.AddBehavior (stickyHeaderBehavior);
```
