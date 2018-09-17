---
title: Commands
page_title: RadChat Commands
position: 10
slug: chat-commands
---

# Commands #

RadChat allows you to attach commands that will be executed when certain actions such as SendMessage occur. 

>Before proceeding check the [MVVM Support]({% slug chat-mvvm-support %}) topic for more details on how to use RadChat in a MVVM setup.

## Chat Commands

You could take advantage of the SendMessageCommand that is triggered by two actions  when the send-message button is clicked. The command is raised before the Chat auto-creates a ChatItem and adds it to the Items. 

Here is quick example on how to define to defind a command in the ViewModel and bind the SendMessageCommand to it:

	public ViewModel()
	{         
		this.Items = new ObservableCollection<ChatItem>();
		this.NewMessageCommand = new Command(NewMessageCommandExecute);
	}
	
	public ICommand NewMessageCommand { get; set; }
	public IList<ChatItem> Items { get; set; }
	
And the command Execute method:

	private void NewMessageCommandExecute(object obj)
	{
		var newMessage = (string)obj;
		//any additional logic you need to implement
	}
	
Following the definition of RadChat components:
	
	<telerikConversationalUI:RadChat x:Name="chat"                                 
                            ItemsSource="{Binding Items}"                            
                            SendMessageCommand="{Binding NewMessageCommand}">  
		<telerikConversationalUI:RadChat.BindingContext>
			<local:ViewModel />
		</telerikConversationalUI:RadChat.BindingContext>
	</telerikConversationalUI:RadChat>

## ChatPicker Commands

RadChatPicker control exposes OkCommand and CancelCommand fired when the corresponding "Ok" and "Cancel" buttons are clicked.

## See Also

- [Key Features]({% slug chat-key-features %})
- [MVVM Support]({% slug chat-mvvm-support %})
- [ItemTemplateSelector] ({% slug chat-itemtemplateselector %})