---
title: Getting Started
page_title: Getting Started
position: 0
slug: treeview-getting-started
---

# Getting Started

This example will guide you through the steps needed to add a basic **RadTreeView** control in your application.

>Before you proceed, please, it might be useful to take a look at these articles and follow the instructions to set up your app:

>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})
>- [Required Telerik Assemblies]({%slug treeview-required-assemblies%})

## Example

Once your application is created, you are ready to add a **RadTreeView** control.

The simplest and fastest way to include the control is by simply defining it like this in XAML:

<snippet id='rating-gettingstarted-xaml'/>


You have to add the following namespaces:

<snippet id='xmlns-telerikrating'/>
<snippet id='ns-telerikrating'/>


As you can notice, the **ItemsSource** property of the control needs to be set. The collection we have is representing a hierarchical view and this is the reason for using the RadTreeView control for this setup. An important step for the control to load its items correctly is to set its **HierarchyAdapter** property:
  
	this.tv.HierarchyAdapter = new TreeViewDemoAdapter();

The custom hierarchy adapter should implement the **Telerik.XamarinForms.Common.IHierarchyAdapter** interface. Here is how the **TreeViewDemoAdapter** class is defined:

	public class TreeViewDemoAdapter : IHierarchyAdapter
    {
        public object GetItemAt(object item, int index)
        {
            return (item as Item).Children[index];
        }

        public IEnumerable<object> GetItems(object item)
        {
            return (item as Item).Children ?? Enumerable.Empty<object>();
        }
    } 

Where the Item class is defined as:

    public class Item : INotifyPropertyChanged
    {
        string name;
        public string Name
        {
            get
            {
                return this.name;
            }
            set
            {
                if (this.name != value)
                {
                    this.name = value;
                    this.OnPropertyChanged();
                }
            }
        }

        public IList<Item> Children { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;

        public Item()
        {
            this.Children = new ObservableCollection<Item>();
        }

        public void OnPropertyChanged([CallerMemberName] string propertyName = "")
        {
            var eh = this.PropertyChanged;
            if (eh != null)
                eh.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public override string ToString()
        {
            return this.Name;
        }
    }

Here is the appearance of the **RadTreeView** control once the upper steps have been accomplished:

>pic of RadTreeView

## See Also

* [Commands]({%slug treeview-commands%})
* [Expand/Collapse]({%slug treeview-expand-collapse-api%})
* [CheckBoxes]({%slug treeview-checkboxes%})
* [Theming]({%slug treeview-theming%})