---
title: TimePicker
page_title: Chat TimePicker
position: 2
slug: chat-timepicker
---

# TimePicker #

RadChatPicker control provides **TimePickerContext** that can be used to display a clock view to choose a time.

**TimePickerContext** exposes the following properties you could use to adjust the clock items:

* SelectedValue - defines the currently selected time;
* StartTime -  it is of type TimeSpan and represents the starting time of the clock's items.
* EndTime -  it is of type TimeSpan and corresponds to the time of the last clock item.
* TimeInterval - it is also of type TimeSpan and defines the step between the clock's items. Default value is 1 hour.

Here is a quick example on how to user TimePicker in RadChat:

<snippet id='chat-chatpicker-timepicker' />
	
#### Figure 1: Chat with TimePicker

![Chat Message](images/chat_timepicker.png)

## See Also

- [ChatPicker]({% slug chat-picker-overview %})
- [TimePicker]({% slug chat-timepicker %})
- [ItemPicker]({% slug chat-itempicker %})
- [CardPicker]({% slug chat-cardpicker %})