---
title: How to use validation behaviors with RadEntry control
description: Shows how to validate RadEntry through Xamarin.Forms Behaviors
type: how-to
page_title: How to enable validation for Telerik Entry control
slug: entry-validation
position: 
tags: entry, validation, behavior
ticketid: 1339821
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2019.2 802.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Entry for Xamarin</td>
		</tr>
	</tbody>
</table>


## Description

RadEntry supports the standard Xamarin.Forms behaviors in a similar way as the Xamarin.Forms Entry. You just need to create a Behavior class and apply it to its Behaviors property.

## Solution

Below you can find a simple implementation of an email validation behavior applied to RadEntry control.

First, create the custom EmailValidatorBehavior class that inherits from Behavior&lt;RadEntry&gt; - the TextColor of the Entry is changed depending on whether the user has entered valid email:

```C#
public class EmailValidatorBehavior : Behavior<RadEntry>
    {
    const string emailRegex = @"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
    @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$";


    protected override void OnAttachedTo(RadEntry bindable)
    {
        bindable.TextChanged += HandleTextChanged;
        base.OnAttachedTo(bindable);
    }

    void HandleTextChanged(object sender, TextChangedEventArgs e)
    {
        bool IsValid = false;
        IsValid = (Regex.IsMatch(e.NewTextValue, emailRegex, RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250)));
        ((RadEntry)sender).TextColor = IsValid ? Color.Black : Color.Red;
    }

    protected override void OnDetachingFrom(RadEntry bindable)
    {
        bindable.TextChanged -= HandleTextChanged;
        base.OnDetachingFrom(bindable);
    }
}
```

Apply the above defined behavior to the RadEntry instance:

```XAML
<telerikInput:RadEntry x:Name="entry" WatermarkText="Email" >
    <telerikInput:RadEntry.Behaviors>
        <local:EmailValidatorBehavior x:Name="emailValidator"/>
    </telerikInput:RadEntry.Behaviors>
</telerikInput:RadEntry>
```

>note You could learn more about behaviors in the following Xamarin blog post: [Behaviors in Xamarin.Forms](https://devblogs.microsoft.com/xamarin/behaviors-in-xamarin-forms/).