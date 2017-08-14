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

```Java
@Override
public boolean onSelectingTab(Tab tabToSelect) {
    // Cancel selection of the middle tab.
    return tabToSelect == this.tabView.getTabs().get(1);
}

@Override
public void onTabSelected(Tab selectedTab, Tab deselectedTab) {
    if(deselectedTab != null) {
        Log.d("TabView deselected: ", deselectedTab.getTitle());
    }
    Log.d("TabView selected: ", selectedTab.getTitle());
}
```

Content view callback example:

```Java
@Override
public View getContentViewForTab(Tab tab) {
    TextView contentView = new TextView(this.getContext());
    contentView.setText(tab.getTitle() + " content view");
    contentView.setGravity(Gravity.CENTER);

    return contentView;
}
```
