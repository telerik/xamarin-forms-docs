---
title: Event Listeners
page_title: RadAutoCompleteTextView Events | Telerik UI for Android Documentation
description: This page is dedicated to the events provided by the RadAutoCompleteTextView.
slug: autocomplete-events
tags: radautocompletetextview, events
position: 7
publish: true
---

#RadAutoCompleteTextView: Event Listeners
In this article you are going to learn about the **RadAutoCompleteTextView's** event listeners.
The event listeners are designed to notify you whenever a particular action, in the workflow of the control, has happened. They are quite useful when it comes to executing logic based on the **RadAutoCompleteTextView's** state. 

##Available listeners
The **RadAutoCompleteTextView** control exposes five different event listeners.

* `TokenRemovedListener` - triggered whenever a token is removed.
* `TokenAddedListener` - triggered whenever a token is added.
* `TokenSelectedListener` - triggered whenever a token is selected (highlighted)
* `TokenDeselectedListener` - triggered whenever a token is deselected (back to normal state)
* `ShowSuggestionListListener` - triggered whenever the suggestion view is about to become visible.

All five of the listeners have identical logical structure and identical workflow, the only difference between them is the event which they are observing and notifing you about. 


##Usage
In order to get notified when one of the above-mentioned events occur, you should use the following structure with the type of listener you want to use.

```Java
        autocomplete.addTokenAddedListener(new TokenAddedListener() {
            @Override
            public void onTokenAdded
            (RadAutoCompleteTextView radAutoCompleteTextView, TokenModel tokenModel) {
                // do something
            }
        });
```
```C#
	this.autocomplete.AddTokenAddedListener(new TokenAddedListenerImpl());
	
			class TokenAddedListenerImpl : Java.Lang.Object, ITokenAddedListener
		{
			public void OnTokenAdded(RadAutoCompleteTextView p0, TokenModel p1)
			{
				// do something
			}
		}
```




