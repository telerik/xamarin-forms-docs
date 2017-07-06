---
title: Delegate
page_title: TKTabview Delegate
position: 5
slug: tabview-delegate
---

# Delegate

TKTabView will notify its **TKTabViewDelegate** before and after a tab selection occurs. Also the delegate will ask for a tab's content view if it does not have one.

Here is an example implementation of the selection notifications:

<snippet id='tabview-delegate-selection'/>

Content view callback example:

<snippet id='tabview-delegate-content-view'/>
