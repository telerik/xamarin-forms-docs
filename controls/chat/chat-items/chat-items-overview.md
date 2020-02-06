---
title: Overview
page_title: RadChat Items Overview
position: 0
slug: chat-items-overview
---

# Chat Items #

RadChat works with a collection of **ChatItem** objects. The control provides different chat items that you could use, such as the basic TextMessage as well as various pickers (itempicker, datapicker, timepicker) and predefined cards (defined through a cardpicker).

This section covers the specific details of the different chat items RadChat provides:

* [Message]({%slug chat-messages %}) - the basic message unit in RadChat; apart from the text of the message itself, each **TextMessage** instance contains information about the Author of the message as well as any additional data;
* [Time Break]({%slug chat-timebreak %}) - used to encapsulate messages in a conversation by a certain condition such as read/unread, time intervals or any other you would choose. It is visualizes as a dividing line across the messages board with a text message attached to it.
* [PickerItem]({%slug chat-picker-overview %}) - special *ChatItem* type which contains RadChatPicker control used for providing a selection to the end user. Depending on the information that is presented and the choice that should be made, the pickers can be one of the types listed below:
	* DatePicker – for displaying a Calendar to choose a date;
    * TimePicker - for displaying a clock view to choose a time;
    * ItemPicker – for presenting a list of suggestions the end user could choose from;
    * CardPicker - for presenting a list of cards with structured layout;

> Additionally, you could create your own chat items with custom item templates and add them to the Items collection of the control. For more details go to [MVVM Support]({% slug chat-mvvm-support %}) and [ItemTemplateSelector]({% slug chat-itemtemplateselector %}) topics.

## See Also

- [Messages]({%slug chat-messages %})
- [Time Break]({%slug chat-timebreak %})
- [PickerItem]({%slug chat-picker-overview %})
- [MVVM Support]({% slug chat-mvvm-support %})
- [ItemTemplateSelector] ({% slug chat-itemtemplateselector %})