---
title: Commands
page_title: RadChat Commands
position: 12
slug: chat-commands
---

# Commands #

RadChat allows you to attach commands that will be executed when certain actions such as SendMessage occur. 

>Before proceeding check the [MVVM Support]({% slug chat-mvvm-support %}) topic for more details on how to use RadChat in a MVVM setup.

## Chat Commands

You could take advantage of the SendMessageCommand that is triggered by two actions  when the send-message button is clicked. The command is raised before the Chat auto-creates a ChatItem and adds it to the Items. 

Here is a quick example on how to define a command in the ViewModel and bind the SendMessageCommand to it:

<snippet id='chat-commands-viewmodel' />

And the command Execute method:

<snippet id='chat-commands-executemethod' />

Following the definition of RadChat components:

<snippet id='chat-commands-xaml' />

## ChatPicker Commands

RadChatPicker control exposes OkCommand and CancelCommand fired when the corresponding "Ok" and "Cancel" buttons are clicked.

## See Also

- [Key Features]({% slug chat-key-features %})
- [MVVM Support]({% slug chat-mvvm-support %})
- [ItemTemplateSelector] ({% slug chat-itemtemplateselector %})