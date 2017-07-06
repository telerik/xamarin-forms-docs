---
title: Localization
page_title: RadFeedback Localization  | Telerik UI for Android Documentation
description: This article explains how to localize strings used throughout the AppFeedback component.
slug: feedback-localization
tags: radfeedback, feedback, localization
position: 2
publish: true
---

# RadFeedback: Localization

As a native Android component AppFeedback retrieves all of its strings from the `values\strings.xml` file in the `res` folder of the containing library. This allows you to easily define alternative resources for a given device configuration by using the corresponding resource IDs. The following XML snippet shows the default set of string values that AppFeedback uses alongside with their resource IDs:

    <string name="menu_title">Send feedback</string>
    <string name="menu_item_send_feedback">Send feedback</string>
    <string name="menu_item_send_feedback_desc">Submit your feedback about the app.</string>
    <string name="menu_item_view_feedback">Your feedback</string>
    <string name="menu_item_view_feedback_desc">"See what's happening with the feedback you've already sent us."</string>
    <string name="menu_item_edit_settings">Settings</string>
    <string name="menu_item_edit_settings_desc">Edit your name that will appear along with your feedback.</string>
    <string name="send_feedback_activity_title">Send feedback</string>
    <string name="send_feedback_activity_hint">Tap anywhere on the screenshot to leave a comment.</string>
    <string name="send_feedback_activity_edit_hint">Your feedback</string>
    <string name="your_feedback_activity_title">Your feedback</string>
    <string name="your_feedback_activity_hint">There are currently no items in this category. Try sending us feedback via the \'Send feedback\' button.</string>
    <string name="feedback_item_activity_title">Your feedback</string>
    <string name="feedback_item_comments_annotation">Comments</string>
    <string name="feedback_item_edit_comment_hint">Your comment</string>
    <string name="settings_activity_title">Your details</string>
    <string name="settings_name_key">Name</string>
    <string name="settings_name_hint_key">Your name will appear on the feedback and comments you are sending.</string>
    <string name="resolved_items_category">Resolved</string>
    <string name="open_items_category">Open</string>
    <string name="all_items_category">All</string>
    <string name="open_status_title">Open</string>
    <string name="resolved_status_title">Closed</string>
    <string name="date_time_format_string">yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'</string>
    <string name="date_time_label_format_string">MMMM dd, yyyy h:mm a</string>

To override these you simply need to create an alternative `values` resource folder in your application and provide new values for the IDs you would like to override. For more information about creating alternative resources take a look at the Android's documentation website: [http://developer.android.com/guide/topics/resources/localization.html](http://developer.android.com/guide/topics/resources/localization.html)
