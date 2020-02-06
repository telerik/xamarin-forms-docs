---
title: Key Features
page_title: RadChat Key Features
position: 2
slug: chat-key-features
---

# Key Features #

**RadChat** is a Xamarin UI component that can be used for chatbots and chat-based user interfaces. In this topic we will go through the basic properties of the Chat component as well as the key features it provides.

### Basic Setup

RadChat exposes the following properties you could use to setup the component:

![RadChat Basic Elements](images/chat_basic_features.png)

* **Author** – represents the current user who sends messages using the Chat UI. This instance determines the messages alignment – incoming messages are placed on the left, outgoing messages - on the right;

* **Message** – defines the current message typed into the input field.

* **Items** collection – contains all the chat items included in the conversation such TextMessages, PickerItems, etc. For more details on the available chat items go to [Chat Items]({% slug chat-items-overview %}) topic.

* **Picker** – defines the ChatPicker that is shown either as overlay over the messages’ view or inline as part of the conversation and could display different pickers in order to provide the end user with a selection of choices. Go to [ChatPicker]({%slug chat-picker-overview %}) topic for more details on the matter.

### MVVM and Commands Support

The Chat control supports data binding through the **ItemsSource** property that can be bound to a collection of any data objects which then have to be converted into chat items. In addition, you can implement the MVVM pattern through the provided commands of both Chat and ChatPicker controls.

You could find detailed instructions on how to use the Chat component in a MVVM setup in the [MVVM Support]({%slug chat-mvvm-support %}) and [Commands]({%slug chat-commands%}) topics.
	
## See Also

- [Chat Items]({% slug chat-items-overview %}) 
- [ChatPicker]({%slug chat-picker-overview %})
- [MVVM Support]({% slug chat-mvvm-support %})
- [ItemTemplateSelector] ({% slug chat-itemtemplateselector %})