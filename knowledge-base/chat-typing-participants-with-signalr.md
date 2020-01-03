---
title: RadChat How To Use SignalR and TypingIndicator
description: This example walks you through customizing the RadChat control with a custom ControlTemplate which is capable of invoking SignalR messages to show all chat room participant who is currently typing
type: how-to
page_title: Sharing currently typing chat room authors in SignalR
slug: button-create-togglelike-button
position: 
tags: toggle, button, Xamarin, XamarinForms
ticketid: 1447468
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2019.3.1126</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>RadChat for Xamarin</td>
	</tr>
</table>


## Description

This is a tutorial on how to sync RadChat Typing Participants using SignalR, or another remote service, so that all currently typing authors are visible.

## Solution

The RadChat control has a built in `TypingIndicator` feature that is used to show who is currently typing. Using this, as well as a customized Entry, the RadChat can stay synced with all platform users.

### Prerequisites

##### TypingIndicator Setup

Before getting started, you will need to visit the Conversational UI [**Typing Indicator**](https://docs.telerik.com/devtools/xamarin/controls/chat/chat-typing-indicator) documentation. An understanding how it is setup and how to add and remove authors from the participant list is crucial.

##### SignalR Setup

With the basics setup, we need a way to trigger the SignalR message for the changes in who is typing. To do this, we will need a SignalR Hub method that is solely responsible for sending updates for who is typing.

Here's a simple example hub with a method named `SendTyper`. It accepts two parameters, a **string** `message` for the user's name and a **bool** `isTyping` to communicate if they are currently typing.

```csharp
public class ChatHub : Hub
{
	public async Task SendMessage(string user, string message)
	{
		await Clients.All.SendAsync("ReceiveMessage", user, message);
	}

	public async Task SendTyper(string user, bool isTyping)
	{
		await Clients.All.SendAsync("ReceiveTyper", user, isTyping);
	}
}
```

Let's move on to the Xamarin side of things. 

#### Typing Participant Changes

As you seen in the TypingIndicator documentation, you add and remove authors from the `TypingIndicator.Authors` collection. So we need to do two things, handle incoming messages and produce outgoing messages to the SignalR hub.
Lets break this in to two parts.

##### Incoming

The first step is to handle when a message is received from the SignalR Hub. In this demo,there is an event for typer changes named **OnTypersUpdated**. The event handler will be invoked with the two parameters username and istyping


```csharp
protected override async void OnAppearing()
{
	service = new ChatService("YOUR_HUB_URL");
	service.OnTypersUpdated += Service_OnTypersUpdated;
    ...
}

private void Service_OnTypersUpdated(string username, bool isTyping)
{
	Device.BeginInvokeOnMainThread(() =>
	{
		// If the SignalR is sending an update for the current user, we should ignore it
		if (username == me.Name)
			return;
			
		// If the Author is already in the typer list, get a reference to it
		Author author = participants.FirstOrDefault(a => a.Name == username);

		// If the autor is not in the list, make a new item
		if (author == null)
		{
			author = new Author { Name = username };
		}

		if (isTyping)
		{
		    // Add the typer to the Authors collection
			if (!MyTypingIndicator.Authors.Contains(author))
				MyTypingIndicator.Authors.Add(author);
		}
		else // remove author if they've stopped typing
		{
		    // Remove the typer to the Authors collection
			if (MyTypingIndicator.Authors.Contains(author))
				MyTypingIndicator.Authors.Remove(author);
		}
	});
}
```

##### Outgoing

We need to communicate when the current user is typing nor not. The **Authors** property of `TypingIndicator` element is an `ObservableCollection`, this means we have a `CollectionChanged` event!

All we need to do is just filter out the changes to only include the current author

```csharp
private async void TypingIndicatorAuthors_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
{
    // Send a SignalR update if the app user was added or removed from the TypingIndicator's Authors

    if (e.NewItems != null && e.NewItems.Contains(me))
    {
        await service.SendTyperAsync(me.Name, true);
    }

    if (e.OldItems != null && e.OldItems.Contains(me))
    {
        await service.SendTyperAsync(me.Name, false);
    }
}
```

#### Text Changed

The last piece of the puzzle is to figure out how we are going to add and remove the current app user from the authors list. At the time of writing this article, there isn't a TypingStarted or TypingEnded event. 

Therefore, we need to get access to the Entry control in order to use its **TextChanged** event. To do this, we can define the RadChat ControlTemplate, which contains the ChatEntry control.

Add the following xmlns statements to the XAML

```xml
 xmlns:conversationalUi="clr-namespace:Telerik.XamarinForms.ConversationalUI;assembly=Telerik.XamarinForms.ConversationalUI"
 xmlns:primitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
 xmlns:common="clr-namespace:Telerik.XamarinForms.Common;assembly=Telerik.XamarinForms.Common"
 xmlns:input="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
```

Next, place the following converter at the top of your resources:

```xml
<ContentPage.Resources>
    <conversationalUi:ChatListViewMarginConverter x:Key="ChatListViewMarginConverter" />
</ContentPage.Resources>
```

Now, add the following ControlTemplate underneath the converter:

```xml
<ControlTemplate x:Key="CustomChatControlTemplate">
    <Grid input:KeyboardHelper.IsTranslationTarget="True"
          RowSpacing="2">
        <Grid.RowDefinitions>
            <RowDefinition />
            <RowDefinition Height="Auto" />
            <RowDefinition Height="Auto" />
        </Grid.RowDefinitions>
        <conversationalUi:ChatListView common:StyleManager.InheritedStyleClass="{TemplateBinding ActualStyleClass}"
                                       AutoScrollMode="{TemplateBinding AutoScrollMode}"
                                       ScrollMediator="{TemplateBinding ActualScrollMediator}"
                                       Margin="{Binding Height, Source={x:Reference PickerContainer}, Converter={StaticResource ChatListViewMarginConverter}}"
                                       ItemTemplate="{TemplateBinding ItemTemplateSelector}"
                                       ItemsSource="{TemplateBinding Items}"
                                       AutomationProperties.Name="ChatListView" />
        <common:RadContentView common:StyleManager.InheritedStyleClass="{TemplateBinding ActualStyleClass}"
                               Grid.Row="1"
                               Content="{TemplateBinding TypingIndicator}" />
        <common:RadContentView common:StyleManager.InheritedStyleClass="{TemplateBinding ActualStyleClass}"
                               x:Name="PickerContainer"
                               VerticalOptions="End"
                               Content="{TemplateBinding Picker}" />
        <Grid Grid.Row="2"
              BackgroundColor="{TemplateBinding InputAreaBackgroundColor}"
              Padding="5, 0, 0, 0">
            <Grid.ColumnDefinitions>
                <ColumnDefinition />
                <ColumnDefinition Width="Auto" />
            </Grid.ColumnDefinitions>

            <conversationalUi:ChatEntry common:StyleManager.InheritedStyleClass="{TemplateBinding ActualStyleClass}"
                                        Text="{TemplateBinding Message, Mode=TwoWay}"
                                        BackgroundColor="Transparent"
                                        VerticalOptions="Center"
                                        CompletedCommand="{TemplateBinding ActualSendMessageCommand}"
                                        FocusMediator="{TemplateBinding FocusMediator}"
                                        input:KeyboardHelper.IsTranslationSource="True"
                                        TextChanged="RadEntry_OnTextChanged" />

            <input:RadButton common:StyleManager.InheritedStyleClass="{TemplateBinding ActualStyleClass}"
                             Grid.Column="1"
                             Margin="0, 0, 10, 0"
                             BackgroundImage="{TemplateBinding SendMessageButtonImage}"
                             BackgroundColor="Transparent"
                             Command="{TemplateBinding ActualSendMessageCommand}"
                             WidthRequest="30"
                             HeightRequest="30"
                             VerticalOptions="Center" />
        </Grid>
    </Grid>
</ControlTemplate>
```
> Everything in this ControlTemplate is the default except the ChatEntry's  `TextChanged="RadEntry_OnTextChanged"` event handler

Assign **CustomChatControlTemplate** to the `RadChat` instance.

```xml
<conversationalUi:RadChat x:Name="ChatControl"
                          ControlTemplate="{StaticResource CustomChatControlTemplate}">
    <conversationalUi:RadChat.TypingIndicator>
        <conversationalUi:TypingIndicator x:Name="MyTypingIndicator" />
    </conversationalUi:RadChat.TypingIndicator>
</conversationalUi:RadChat>
```

Finally, define the **RadEntry_OnTextChanged** event handler in the code-behind

```csharp

```



## Advanced Alternative - Custom Entry with Timer

The above example uses a less accurate method to determine if the user is typing:

- The there is text in the box, the user is typing.
- If there is no text in the box, the user is not typing.

In a production-ready application, you don't want this behavior. If the user stops typing in the middle of a sentence, the other chat room folks still see thatuser typing. Instead, you should a timer to determine when the user stopped typing.

In this case, it might be prudent for you to extend the ChatEntry control and add two custom events:

- **TypingStarted**
- **TypingEnded**

```csharp
public class TimedChatEntry : ChatEntry, IDisposable
{
    private readonly System.Timers.Timer timer;

    public TimedChatEntry()
    {
        TextChanged += TimedChatEntry_TextChanged;

        timer = new System.Timers.Timer(1000);
        timer.Elapsed += timer_Elapsed;
    }

    public event EventHandler<EventArgs> TypingStarted;

    public event EventHandler<EventArgs> TypingEnded;

    private void timer_Elapsed(object sender, System.Timers.ElapsedEventArgs args)
    {
        timer?.Stop();
        Device.BeginInvokeOnMainThread(() => TypingEnded?.Invoke(this, new EventArgs()));
    }

    private void TimedChatEntry_TextChanged(object sender, TextChangedEventArgs e)
    {
        if (timer == null)
            return;

        if (!timer.Enabled)
        {
            timer?.Start();
            Device.BeginInvokeOnMainThread(() => TypingStarted?.Invoke(this, new EventArgs()));
        }
        else
        {
            timer.Stop();
            timer.Start();
        }
    }

    public void Dispose()
    {
        if (timer != null)
        {
            timer.Elapsed -= timer_Elapsed;
        }
        timer?.Dispose();
    }
}
```

In the ControlTemplate replace the `ChatEntry` with the `TimeChatEntry`. Be sure not to change any of the existing properties... just place the **TextChanged** event with **TypingStarted** and **TypingEnded**.

```xml
<customControls:TimedChatEntry ... 
                               TypingStarted="TimedChatEntry_OnTypingStarted" 
                               TypingEnded="TimedChatEntry_OnTypingEnded" />
```

Here's an example of what it should look like inside the template:

```xml
<!-- part of the RadChat ControlTemplate -->
<Grid Grid.Row="2"
      BackgroundColor="{TemplateBinding InputAreaBackgroundColor}"
      Padding="5, 0, 0, 0">
    <Grid.ColumnDefinitions>
        <ColumnDefinition />
        <ColumnDefinition Width="Auto" />
    </Grid.ColumnDefinitions>

    <!-- ***NOTE***  Original ChatEntry control is replaced with TimedChatEntry -->
    <customControls:TimedChatEntry common:StyleManager.InheritedStyleClass="{TemplateBinding ActualStyleClass}"
                   Text="{TemplateBinding Message, Mode=TwoWay}"
                   BackgroundColor="Transparent"
                   VerticalOptions="Center"
                   CompletedCommand="{TemplateBinding ActualSendMessageCommand}"
                   FocusMediator="{TemplateBinding FocusMediator}"
                   input:KeyboardHelper.IsTranslationSource="True"
                   TypingStarted="TimedChatEntry_OnTypingStarted"
                   TypingEnded="TimedChatEntry_OnTypingEnded" />

    <input:RadButton common:StyleManager.InheritedStyleClass="{TemplateBinding ActualStyleClass}"
                     Grid.Column="1"
                     Margin="0, 0, 10, 0"
                     BackgroundImage="{TemplateBinding SendMessageButtonImage}"
                     BackgroundColor="Transparent"
                     Command="{TemplateBinding ActualSendMessageCommand}"
                     WidthRequest="30"
                     HeightRequest="30"
                     VerticalOptions="Center" />
</Grid>
```

Finally, instead of TextChanged, use the two event handlers to send SignalR messages

```csharp
private async void TimedChatEntry_OnTypingStarted(object sender, EventArgs e)
{
    if (service != null)
        await service.SendTyperAsync(me.Name, true);
}

private async void TimedChatEntry_OnTypingEnded(object sender, EventArgs e)
{
    if (service != null)
        await service.SendTyperAsync(me.Name, false);
}
```

> Important - Notice we're not using **TypingIndicator.Authors** and **TypingIndicator.Authors.CollectionChanged** anymore. They are no longer needed to communicate to the SignalR hub, so you can remove it from the code. *Most chat applications do not show that current user is typing to themselves.*