---
title: Overview
page_title: ChatPicker Overview
position: 0
slug: chat-picker-overview
---

# Overview #

**RadChat** offers different pickers to present the user a selection of choices either as part of the conversation, or over the messages' view. 

Depending on the information that is presented and the choice that should be made, the pickers can be one of the types listed below. 

* DatePicker – for displaying a Calendar to choose a date;
* TimePicker - for displaying a clock view to choose a time;
* ItemPicker – for presenting a list of suggestions the end user could choose from;
* CardPicker - for presenting a list of cards with structured layout;

Each of these pickers is part of the **RadChatPicker** control and is defined through the corresponding **PickerContext** property, namely DatePickerContext, TimPickerContext, ItemPickerContext, etc,
 
**RadChatPicker** can be used in three different ways:

* [Inline as part of the conversation](#inline-as-part-of-the-conversation) – through a PickerItem added to the Chat’s Items collection.
* [Inside the Chat but not part of the conversation](#inside-the-chat-but-not-part-of-the-conversation) - the picker is placed between the entry and the conversation; implemented through the RadChat’s Picker property.
* As a separate ChatPicker control - shown outside the RadChat control.

### Inline as part of the conversation

In this case you would need to create an item of type **PickerItem** that actually derives from the **ChatItem**, set its **Context** and add it to the Items collection of the Chat. Here is a quick example:

<snippet id='chat-chatpicker-datepicker' />
	
When the user makes a selection, you can add a new TextMessage with the SelectedDate and remove the PickerItem from the conversation.

#### Figure 1: RadChat with an inline DatePicker

![](images/chat_picker_2.png)

### Inside the Chat but not part of the conversation

If you choose this approach you would need to create a RadChatPicker instance and set it to the Picker property of the Chat:

<snippet id='chat-pickeroverlay-xaml' />

Then, when you need to display any of the available pickers, you will have to set the Context property of the ChatPicker. Check the example below with DatePickerContext:

<snippet id='chat-chatpicker-overlay-code' />
			
When the user chooses a date, the Context is reset to null and a new TextMessage with the SelectedDate can be added to the conversation.

#### Figure 2: RadChat with DatePicker as an overlay

![](images/chat_picker_1.png)

In the example above, RadChatPicker is used for immediate selection by setting its IsOkButtonVisible and IsCancelButtonVisible to false. You could also show Ok and Cancel buttons and use the provided events/commands in order to handle the selection.
	
## See Also

- [DatePicker]({% slug chat-datepicker %})
- [TimePicker]({% slug chat-timepicker %})
- [ItemPicker]({% slug chat-itempicker %})
- [CardPicker]({% slug chat-cardpicker %})