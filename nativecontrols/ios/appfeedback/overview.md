---
title: Overview
page_title: AppFeedback Overview
slug: ios-appfeedback-overview
position: 1
---

# AppFeedback: Overview

With the Telerik AppFeedback component added in your app you can gain invaluable insights into the users experience with it. Sending feedback on the users’ side is very easy. They can simply shake the device or navigate to the feedback option. The control takes a screenshot automatically and prompts the users to provide comments. The control is seamlessly integrated with Telerik Baas enabling developers to easily monitor and track all their users’ feedback in one place, rather than get it scattered across your mail, chat, spreadsheets or other ways of communicating with your users.

Telerik AppFeedback workflow is simple and easy:

- You use the TKFeedback component into your app. The component collects and displays feedback data the user sends.
- The AppFeedback project in your Telerik Platform workspace is a central repository that collects feedback items from the mobile apps running the Feedback component. The development teams use the project in the workspace to review and reply to the feedback items from users.

Features
===

To use the feedback component, you should to initialize the TKFeedback class with a valid data source. Then you can show the feedback with a call to the showFeedback method:

<snippet id='feedback-initialize'/>

<snippet id='feedback-initialize-swift'/>

```C#
TKFeedback.SetDataSource(new TKPlatformFeedbackSource("58cb0070-f612-11e3-b9fc-55b0b983d3be", "iosteam@telerik.com"));
```

If you want to show the feedback with a shake gesture, you should override and handle the motionEnded: method in your view controller:

<snippet id='feedback-motion'/>

<snippet id='feedback-motion-swift'/>

```C#
public override void MotionEnded(UIEventSubtype motion, UIEvent evt)
{
    TKFeedback.ShowFeedback();
}
```

When you want the shake gesture to be available on all screens in your application you can set TKFeedbackController as a root UIViewController in your application and set the appliction root ViewControler as a content controller. This should be done in the <code>application:didFinishLaunchingWithOptions:</code> method of your AppDelegate class.

Once integrated, the Feedback component offers the following functionality from within the app running on the user’s device:

- It can take a screenshot of the user’s device current state.
- With the feedback sent by the end-user, the Feedback component can collect system data about what device, OS and application is used by the user (e.g. if it is iPhone or iPad, iOS version).
- It allows the user to enter a text description of their feedback. For example, a beta user might say, “Clicking the calendar icon causes the app to hang.” Together with the screenshot and device information, your team can make better evaluation of the feedback.
- It shows the feedback already sent, along with the current state for each feedback item (open or resolved).
- It shows the details about a given feedback item - the screenshot, the description, etc., sent from the device.

Settings
===
AppFeedback exposes the `feedbackSettings` property which returns an instance of the `TKFeedbackSettings` class. It exposes the following properties:

- `showFeedbackSentAlert` - defines whether the Alert window at the end of the feedback procedure is shown or not
- `feedbackSentAlertTitle` - defines the title of the Alert window shown at the end of the feedback procedure
- `feedbackSentAlertText` - defines the text within the Alert window shown at the end of the feedback procedure
- `feedbackTitle` - defines the Title of the AppFeedback's main view
- `feedbackMenuSendCaption` - defines the text of the button that starts the feedback procedure
- `feedbackMenuSettingsCaption` - defines the text of the button that opens the user settings of the feedback component
- `feedbackMenuMyFeedbackCaption` - defines the text of the button that shows the feedback items for the user

Here's an example of how settings can be modified programmatically:

<snippet id='feedback-settings'/>

AppFeedback project in Telerik Platform
===

The AppFeedback project is where you and members of your development team receive and manage the feedback sent by your users. To access it, go to your Telerik Platform workspace and select the specific AppFeedback project.

There you can:

- See all feedback sent for that project
- Respond to feedback such as ask for more details, etc.
- Assign feedback items to workspace members on your team so you know who is responsible for handling the feedback
- Resolve feedback so you and your users know if the feedback has been implemented or resolved.
