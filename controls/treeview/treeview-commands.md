---
title: Commands
page_title: Commands
position: 7
slug: treeview-commands
---

# Commands #

The Command design-pattern is very important and widely used in the XAML and MVVM world. **RadTreeView** follows these best practices and provides an intuitive and easy-to-use set of APIs that allow different aspects of the **RadTreeView** control’s behavior to be handled and/or completely overridden.

**RadTreeView** exposes a **Commands** collection that allows you to register custom commands with each control’s instance through the RadTreeView.Commands property:

* **Commands**: Gets the collection with all the custom commands registered with the CommandService. 
 
## Command Types

There are two types of commands:

* **TreeViewCommand**: All the default commands within RadTreeView derive from the base TreeViewCommand. Think of this command as a UI-related command as it operates over the RadTreeView instance that owns the command.

* **TreeViewUserCommand**: This type of command should be used when you would like to modify the behavior of the control on any of the available actions. It exposes the following properties: 

 * **Id**: The key that relates a command instance to a particular action/routine.
 * **Command**: Gets or sets the generic **ICommand** implementation that may come from the ViewModel.
 * **SuppressDefaultCommand**: Gets or sets a value indicating whether the default(built-in) UI command associated with the specified **Id** will be executed.    

## TreeViewCommandId Enumeration

All the predefined commands within a RadTreeView instance are identified by a member of the **TreeViewCommandId** enumeration. This is actually the key that relates a command instance to a particular action/routine within the owning element. In order to register a custom command within a RadTreeView instance you should instantiate a **TreeViewUserCommand** instance and set its **ID** and **Command** properties. Following are the members of the TreeViewCommandId enumeration:

* **ItemTap**
* **ItemHold**
* **ItemCollapse**
* **ItemExpand**
* **LoadOnDemand**
* **Unknown**

## Custom TreeViewUserCommand Example

As a first step, you can create a couple command properties which will invoke custom methods on **ItemTap** and **ItemHold**. Here is how this is done in the code behind of the page where the TreeView control is defined:

        public ICommand MyTapCommand { get; set; }
        public ICommand MyHoldCommand { get; set; }
        public TreeViewCommands ()
		{
			//sets the collection used as an ItemsSource
            this.SmallSource = new ObservableCollection<Item>(); 

			//Adds items to the source collection
            this.InitSources();
            this.BindingContext = this;

            this.MyTapCommand = new Command((p) => OnItemTap(p));
            this.MyHoldCommand = new Command((p) => OnItemHold(p));

            InitializeComponent ();

            this.tv.HierarchyAdapter = new TreeViewDemoAdapter();
        }

        private void OnItemHold(object p)
        {
            var context = (TreeViewItemCommandContext)p;
            this.tv.Expand(context.Item);
        }

        private void OnItemTap(object p)
        {
            var context = (TreeViewItemCommandContext)p;
            this.tv.Collapse(context.Item);
        }


Once you have created the custom commands, you need to add them to the Commands collection of the **RadTreeView** element:

     <dataControls:RadTreeView Grid.Row="1"
                           ItemsSource="{Binding SmallSource}"
                           BackgroundColor="LightBlue"
                           x:Name="tv">
         <dataControls:RadTreeView.Commands>
             <treeView:TreeViewUserCommand Id="ItemTap" SuppressDefaultCommand="True" Command="{Binding MyTapCommand}"/>
             <treeView:TreeViewUserCommand Id="ItemHold" SuppressDefaultCommand="True" Command="{Binding MyHoldCommand}"/>
         </dataControls:RadTreeView.Commands>
     </dataControls:RadTreeView>

>important You can check a runnable demo in the **Features** section of the **RadTreeView** component in the **SDK Samples Browser application**(can be found in the Examples folder of your local *Telerik UI for Xamarin* installation)

## See Also

* [Expand/Collapse]({%slug treeview-expand-collapse-api%})
* [CheckBoxes]({%slug treeview-checkboxes-support%})
* [Theming]({%slug treeview-theming%})