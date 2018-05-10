---
title: Getting Started
page_title: Getting Started
position: 0
slug: chat-getting-started
---

# Getting Started
   
This example will guide you through the steps needed to add a basic **RadChat** control in your application. For the purpose of the example a simple echo bot will be defined.

>Before you proceed, please, take a look at these articles and follow the instructions to setup your app:

>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})

## Example

If your app is setup, you are ready to add a RadChat control to your page.

#### XAML
	<telerikConversationalUI:RadChat x:Name="chat" />

In addition to this you need to add the following namespace:

#### XAML
	xmlns:telerikConversationalUI="clr-namespace:Telerik.XamarinForms.ConversationalUI;assembly=Telerik.XamarinForms.ConversationalUI"
	
So, for a simple demonstration purpose a sample echo bot will be defined.

#### C#

	class BotServiceRepeat
	{
		private Action<string> onReceiveMessage;

		internal void AttachOnReceiveMessage(Action<string> onMessageReceived)
		{
			this.onReceiveMessage = onMessageReceived;
		}

		internal void SendToBot(string text)
		{
			Task.Delay(500).ContinueWith(t => this.onReceiveMessage?.Invoke(text));
		}
	}

>important **SDK Browser** and **QSF** applications contain different examples that show RadChat's main features. You can find the applications in the **Examples** and **QSF** folders of your local **Telerik UI for Xamarin** installation.

## See Also
