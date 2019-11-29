---
title: Events
page_title: Events
position: 3
slug: entry-events
---

# Events

**RadEntry** exposes the following events:

* **TextChanged**: Occurs when the text is changed. The TextChanged event handler receives a TextChangedEventArgs argument containing data related to this event. The TextChangedEventArgs provides the following properties:
	* NewTextValue*(string)*: which gets the new text value.
	* OldTextValue*(string)*: that gets the old text value.

* **Completed**: Occurs when the user finalizes the text in an entry with the return key.

## Commands

**RadEntry** control exposes **Command** for its Completed event: **CompletedCommand**(*ICommand*).

## Example

Here is the RadEntry definition in XAML with the TextChanged and Completed event handlers:

<snippet id='entry-events-xaml'/>

Here is a sample implementation of the TexhChanged event:

<snippet id='entry-textchanged-event'/>

and for the Completed event:

<snippet id='entry-completed-event'/>

>important You can find a working demo labeled **Events** in the Entry/Features folder of the [SDK Samples Browser application]({%slug developer-focused-examples%}).

## See Also

- [Entry Getting Started]({% slug entry-getting-started%})
- [Entry Theming and Style]({% slug entry-theming-style%})
