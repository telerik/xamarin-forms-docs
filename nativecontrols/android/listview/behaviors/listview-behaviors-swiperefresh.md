---
title: Swipe to Refresh
page_title: Swipe to Refresh Behavior | Telerik UI for Android Documentation
description: A help topic about SwipeRefreshBehavior in RadListView for Android.
slug: listview-behaviors-swiperefresh
tags: radlistview, behaviors, swiperefresh, list, listview
publish: true
position: 4
---

# RadListView: SwipeRefreshBehavior

If your list contains items, which may change after the initial list has been loaded, it may be good idea to allow the users to refresh the list. That is easy with the **SwipeRefreshBehavior**. 
Simply add an instance of this behavior
to your list view and you will get a nice indicator that will be shown when the user swipes the list from its top.

## Getting Started

If you have read the [Getting Started page]({% slug listview-gettingstarted %} "Read the RadListView getting started"), you already have a project with **RadListView** which is populated with items of type **City**. In 
the [Behaviors Overview]({% slug listview-behaviors-overview %} "Read the behaviors overview page for RadListView") we introduced the behaviors and now we will go into more details about the **SwipeRefreshBehavior**.
Here's how to add the **SwipeRefreshBehavior** to your list view instance:

```Java
SwipeRefreshBehavior swipeRefreshBehavior = new SwipeRefreshBehavior();
listView.addBehavior(swipeRefreshBehavior);
```
```C#
SwipeRefreshBehavior swipeRefreshBehavior = new SwipeRefreshBehavior ();
listView.AddBehavior (swipeRefreshBehavior);
```

This will show a loading indicator when the user swipes from the top of the list, but in order to actually refresh the list you will need to add a **SwipeRefreshListener**.

## SwipeRefreshListener

The **SwipeRefreshListener** should be used to get notification that refresh is requested. Here's one simple implementation:

```Java
SwipeRefreshBehavior.SwipeRefreshListener swipeRefreshListener = 
	new SwipeRefreshBehavior.SwipeRefreshListener() {
	
	@Override
	public void onRefreshRequested() {
		cityAdapter.refreshList();
		cityAdapter.notifyRefreshFinished();
	}
};
```
```C#
public class SwipeListener : Java.Lang.Object, SwipeRefreshBehavior.ISwipeRefreshListener {
	private CityAdapter cityAdapter;
	public SwipeListener(CityAdapter adapter) {
		cityAdapter = adapter;
	}
	public void OnRefreshRequested ()
	{
		cityAdapter.RefreshList ();
		cityAdapter.NotifyRefreshFinished ();
	}
}
```

You will also need to create the **refreshList()** method in your adapter in order to actually refresh the list. That method's implementation will depend on the way you load your data, 
but for this example we can leave its body empty with the presumption that our initial list will not change over the time. 
Pay attention to the call of the **notifyRefreshFinished()** which is one of the options to notify the behavior that the refresh operation is complete. The other option is
to call SwipeRefreshBehavior's **endRefresh()** method and the effect will be the same &mdash; the loading indicator will hide. 

Now we can add the listener to our behavior:

```Java
swipeRefreshBehavior.addListener(swipeRefreshListener);
```
```C#
SwipeListener swipeRefreshListener = new SwipeListener ();
swipeRefreshBehavior.AddListener(swipeRefreshListener)
```

The indicator that this behavior uses is actually the 
<a href="https://developer.android.com/reference/android/support/v4/widget/SwipeRefreshLayout.html" target="_blank">SwipeRefreshLayout</a> from the support library. You can get the instance of this layout with
the **swipeRefresh()** method in case you need to apply any customizations to this layout, for example, change the indicator's color.