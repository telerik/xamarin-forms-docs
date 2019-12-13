---
title: Getting Started
page_title: RadTabView Getting Started | Telerik UI for Xamarin.Android Documentation
description: This article shows how to create a basic tab view setup.
slug: tabview-gettingstarted
tags: radtabview, init, tabs
position: 2
publish: true
---

# Getting Started

To use **RadTabView** Beta  a reference to the Primitives library first must be added to your project. Then simply create an instance:

```C#
RadTabView tabView = new RadTabView(this.Context);
```

Then add some tabs:

```C#
tabView.Tabs.Add(new Tab("Tab 1"));
tabView.Tabs.Add(new Tab("Tab 2"));
tabView.Tabs.Add(new Tab("Tab 3"));
```

Add a **TabViewChangeListener**:

```C#
tabView.AddChangeListener(this);
```

Finally, implement the change listener methods. One of those methods is called to create a content view for each tab:

```C#
public Java.Lang.Object GetContentViewForTab(Tab tab)
{
	TextView contentView = new TextView(this.Context);
	contentView.Text = "Content view for " + tab.Title;
	contentView.Gravity = GravityFlags.Center;
	return contentView;
}
```

That's all there is to it. The result is a fully functioning tab view:

![TabView-GettingStarted](images/tab-view-getting-started.png "This is how a basic tab view looks like.")
