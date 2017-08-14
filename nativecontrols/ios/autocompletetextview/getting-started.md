---
title: Getting Started
page_title: AutoCompleteTextView Getting Started
position: 2
---

# AutoCompleteTextView (Beta): Getting Started

This quick start tutorial demonstrates how to create a simple iOS application with <code>TKAutoCompleteTextView</code>.


## Setting up TKAutoCompleteTextView

Now that our project is created and the TelerikUI.framework is added, we can start referencing and using the TelerikUI types:

Open your <code>ViewController.m</code> file and add a reference to Telerik UI header file:

    #import <TelerikUI/TelerikUI.h>

Note that starting with Xcode 6 Apple doesn't generate the precompiled headers file automatically. That is why you should add import the UIKit framework before importing TelerikUI:

    #import <UIKit/UIKit.h>

If you are writing Swift, add the same line in your bridging header.

In the <code>viewDidLoad</code> method of your view controller prepare a small array of sample data to be presented as suggestions in <code>TKAutoCompleteTextField</code>.

<snippet id='autocmp-feed'/>
<snippet id='autocmp-feed-swift'/>
```C#
NSString[] sampleArrayOfStrings = new NSString[] { new NSString("Kristina Wolfe"),
    new NSString("Freda Curtis"),
    new NSString("Jeffery Francis"),
    new NSString("Eva Lawson"),
    new NSString("Emmett Santos"), 
    new NSString("Theresa Bryan"), 
    new NSString("Jenny Fuller"), 
    new NSString("Terrell Norris"),
    new NSString("Eric Wheeler"), 
    new NSString("Julius Clayton"), 
    new NSString("Alfredo Thornton"), 
    new NSString("Roberto Romero"),
    new NSString("Orlando Mathis"),
    new NSString("Eduardo Thomas"),
    new NSString("Harry Douglas")
};
```

Next, create an instance of [<code>TKDataSource<code>](../datasource/getting-started). This component is used to feed <code>TKAutoCompleteTextView</code> with our data. Now we need to go through the items of the source array and create <code>TKAutoCompleteToken</code> objects with which the TKAutoCompleteTextView component operates.

<snippet id='autocmp-src'/>
<snippet id='autocmp-src-swift'/>
```C#
this.dataSource = new TKDataSource(sampleArrayOfStrings);
this.dataSource.Settings.AutoComplete.CreateToken (delegate(nuint index, NSObject item) {
TKAutoCompleteToken token = new TKAutoCompleteToken((NSString)item);
    return token;
});
```

Then create a new instace of <code>TKAutoCompleteTextView</code> and add it as a subview of the ViewController's main view. The <code>autoresizingMask</code> property is set in order to allow correct resizing of the list view when the device is rotated in landscape mode. 

<snippet id='autocmp-init'/>
<snippet id='autocmp-init-swift'/>
```C#
this.AutomaticallyAdjustsScrollViewInsets = false;
TKAutoCompleteTextView autocomplete = new TKAutoCompleteTextView(new CGRect(10, 80, this.View.Bounds.Width - 20, 30));
autocomplete.AutoresizingMask = UIViewAutoresizing.FlexibleWidth;
autocomplete.WeakDataSource = this.dataSource;
this.View.AddSubview(autocomplete);
```

Set up the <code>minimumCharactersToSearch</code> property which defines after what number of entered symbols the autocomplete should start suggesting Set also the <code>suggestionViewHeight</code> property which sets the height of the suggestions presenting view.

<snippet id='autocmp-char'/>
<snippet id='autocmp-char-swift'/>
```C#
autocomplete.MinimumCharactersToSearch = 1;    
autocomplete.SuggestionViewHeight = this.View.Bounds.Size.Height/2;
```

So far we have got the following view:

<img src="../images/autocomplete-gettingstarted001.png"/>

You can change the suggestion logic in order to control which suggestions to be shown. You can show suggestions which contain the typed phrase or suggestions that start with that phrase. The <code>completionMode</code> property is used to control the suggesting logic. The default behaviour is showing suggestions which start with the typed in phrase.

<snippet id='autocmp-completion'/>
<snippet id='autocmp-completion-swift'/>
```C#
this.dataSource.Settings.AutoComplete.CompletionMode = TKAutoCompleteCompletionMode.StartsWith;
```

This will result in: 

For more information about the completion modes, please refer to the [Completion Modes article](completion-modes)

Finally, right now we get suggestions in a drop-down and we have to tap one of them to perform selection. What will make the auto completion process even easier is if, in addition to the drop-down with suggestions, we get a single suggestion that is shown in the text view part of <code>TKAutoCompleteTextView</code> which we can easily select with a single keyboard stroke. This behavior is defined by the so called SuggestMode, and in order to get the described functionality, let's set the SuggestMode to SuggestAppend:

<snippet id='autocmp-suggestmode'/>
<snippet id='autocmp-suggestmode-swift'/>
```C#
autocomplete.SuggestMode = TKAutoCompleteSuggestMode.SuggestAppend;
```

The result will be:

<img src="../images/autocomplete-suggestmodes001.png"/>

For more information about the suggest modes, please refer to the [Suggest Modes article](suggest-modes)
 