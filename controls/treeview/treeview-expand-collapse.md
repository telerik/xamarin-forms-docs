---
title: Expand/Collapse Items
page_title: Expand/Collapse Items
position: 2
slug: treeview-expand-collapse-api
---

# Expand/Collapse Items

The RadTreeView control exposes several useful methods which can be utilized in order to control the states of its items. You can use the following methods when trying to change the state of an individual item:

* **void Expand(object item)**: Expands a specific item from the source collection
* **void Collapse(object item)**: Collapses a specific item from the source collection

The following code snippets show how to expand/collapse a specific item from the code-behind of the page where the control is defined:

        private void ExpandItem2(object sender, EventArgs e)
        {
            this.tv.Expand(Source[1]);
        }

		private void CollapseItem2(object sender, EventArgs e)
        {
            this.tv.Collapse(Source[1]);
        }

Where the **Source** property is an ObservableCollection used as an **ItemsSource** of the **RadTreeView** element:

	        public ObservableCollection<Item> Source { get; set; }

If you would like to collapse/expand all items within the source collection, you can utilize the following methods:

* **void ExpandAll()**:  Expands all items from the source collection
* **void CollapseAll()**: Collapses all items from the source collection

        private void Button_Clicked_2(object sender, EventArgs e)
        {
            this.tv.ExpandAll();
        }

        private void Button_Clicked_3(object sender, EventArgs e)
        {
            this.tv.CollapseAll();
        }


>important You can check a runnable demo in the **Features** section of the **RadTreeView** component in the **SDK Samples Browser application**(can be found in the Examples folder of your local *Telerik UI for Xamarin* installation)


## See Also

* [Commands]({%slug treeview-commands%})
* [CheckBoxes]({%slug treeview-checkboxes-support%})
* [Theming]({%slug treeview-theming%})