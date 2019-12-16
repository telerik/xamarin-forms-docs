---
title: Listening for changes
page_title: RadTabView Listeners | Telerik UI for Xamarin.Android Documentation
description: This article shows how to listen for changes in RadTabView.
slug: tabview-change-listeners
tags: radtabview, change, tabs, notification
position: 5
publish: true
---

# Listening for changes

RadTabView Beta will notify its **TabViewChangeListener** objects before and after a tab selection occurs. Also the listeners will be asked for a tab's content view if it does not have one.

Here is an example implementation of the selection notifications:

```C#
public bool OnSelectingTab(Tab tabToSelect)
{
	return false;
}

public void OnTabSelected(Tab selectedTab, Tab deselectedTab)
{
	if (deselectedTab != null)
	{
		Log.Debug("TabView deselected: ", deselectedTab.Title);
	}
	Log.Debug("TabView selected: ", selectedTab.Title);
}
```

Content view callback example:

```C#
public Java.Lang.Object GetContentViewForTab(Tab tab)
{
	TextView contentView = new TextView(this.Context);
	contentView.Text = "Content view for " + tab.Title;
	contentView.Gravity = GravityFlags.Center;
	return contentView;
}
```
