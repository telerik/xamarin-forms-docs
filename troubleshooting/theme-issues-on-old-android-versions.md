---
title: Theme issues on old Android versions
page_title: Theme issues on old Android versions
slug: theme-issues-on-old-android-versions
---

# Theme issues on old Android versions

The AppCompat themes provide material design styles for some widgets used as building blocks for our components. If the AppCompat theme is not set, some elements could have weird look on old Android versions, e.g. white text on white background.

How to set AppCompat theme?

The AppCompat theme requires FormsAppCompatActivity, which is different from the default activity created in Xamarin.Android project - the FormsApplicationActivity. Here is how the main activity should look like with the AppCompat theme:

	[Activity(Theme = "@style/Theme.AppCompat.NoActionBar", ...)]
	public class MainActivity : FormsAppCompatActivity
	{ 
		...
	}

Here are the available themes:

- **Dark**: Theme.AppCompat.NoActionBar
- **Light**:Theme.AppCompat.Light.NoActionBar
