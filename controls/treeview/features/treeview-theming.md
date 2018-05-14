---
title: Theming
page_title: Theming
position: 4
slug: treeview-theming
---

# Theming #

By applying a **Telerik Theme** to your Telerik controls you can easily propagate a common look and feel throughout your application. The RadTreeView makes no exception and supports the theming mechanism which is really straightforward to set. 

As a first step, make sure that you have familiarized yourself with the [Themes Overview]({%slug common-themes-overview%}) topic. As a next step, you can proceed with merging the required ResourceDictionaries into your application's resources as explained in the [Setting a Theme]({%slug common-setting-a-theme%}) article.

Once you have completed the above steps, all you need to do is set the **StyleClass** property of the RadTreeView so that the TelerikTheme is applied:

	<dataControls:RadTreeView ItemsSource="{Binding SmallSource}"
                                  CheckBoxMode="Propagate"
                                  StyleClass="TelerikTheme"
                                  x:Name="tv">
    </dataControls:RadTreeView>

Here is the appearance of the RadTreeView element when the Blue theme is applied:

> pic

You can always modify the default theme resources in order to style the control so that it perfectly fits the tone of your application. For more information, check the [Create a Custom Theme]({%slug common-modifying-default-theme%}) topic.

## See Also

* [Commands]({%slug treeview-commands%})
* [Expand/Collapse]({%slug treeview-expand-collapse-api%})
* [CheckBoxes]({%slug treeview-checkboxes%})