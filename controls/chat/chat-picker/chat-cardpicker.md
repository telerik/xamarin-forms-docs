---
title: CardPicker
page_title: Chat CardPicker
position: 4
slug: chat-cardpicker
---

# CardPicker #

RadChatPicker control provides **CardPickerContext** that can be used to display a list of cards.

Each card presents data in a structured layout. Thus, the visually ordered information is easier to digest for the user. In addition, it may respond to users' action.

**CardPickerContext**  exposes the following property:

* Cards - it is of type IEnumerable&lt;CardContext&gt; and contains the available Cards defined by the CardContext;

Depending on the information that is presented, the **CardContext** can be one of the following types:

* BasicCardContext - for presenting a card with Title, SubTitle and Descrption;
* ImageCardContext - derives from BasicCardContext with an additional Image property;

Here is a quick example with BasicCardContext:



#### Cards Actions

Each card allows you to add a certain action that can be handled:

## See Also

- [Getting Started]({% slug autocomplete-getting-started %})