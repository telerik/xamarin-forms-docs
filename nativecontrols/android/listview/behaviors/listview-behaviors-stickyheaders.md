---
title: Sticky Headers
page_title: Sticky Header Behavior | Telerik UI for Xamarin.Android Documentation
description: A help topic about StickyHeaderBehavior in RadListView for Android.
slug: listview-behaviors-stickyheaders
tags: radlistview, behaviors, stickyheaders, list, listview
publish: true
position: 7
---

## ListView for Xamarin.Android: StickyHeaderBehavior

If your list contains group headers as demonstrated in [Group, Sort and Filter]({% slug listview-data %}#group "Read more about Grouping") topic, you can use the **StickyHeaderBehavior** which will 'freeze' the group header of the top item:

![TelerikUI-ListView-StickyHeaders](images/listview-behaviors-stickyheaders-1.png "This is the sticky header behavior.")

This means the GroupHeader will remain sticked to the top corner of the ListView while scrolling through the items until the whole group is scrolled away. As you scroll through the next group, the currently sticked group header will be pushed by the next group header.

Here's the code for this to work - just create an instance of <code>StickyHeaderBehavior</code> class and assign it to the ListView through **AddBehavior** method:

```C#
StickyHeaderBehavior stickyHeaderBehavior = new StickyHeaderBehavior();
listView.AddBehavior(stickyHeaderBehavior);
```
