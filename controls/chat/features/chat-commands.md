---
title: Commands
page_title: RadChat Commands
position: 2
slug: chat-commands
---

# Commands #

RadChat allows you to attach commands that will be executed when certain actions such as SendMessage occur. 

>Before proceeding check the [MVVM Support]() topic for more details on how to use RadChat in a MVVM setup.

## Chat Commands

You could take advantage of the SendMessageCommand that is triggered by two actions - one is the send-message button click, and the other is when the user presses the "return" of the keyboard.
In both cases, the command is raised before the Chat auto-creates a ChatItem and adds it to the Items. 

## ChatPicker Commands

RadChatPicker control exposes OkCommand and CancelCommand fired when the corresponding "Ok" and "Cancel" buttons are clicked.

	
## See Also

- [Getting Started]({% slug autocomplete-getting-started %})