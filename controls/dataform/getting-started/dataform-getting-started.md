---
title: Getting Started
page_title: Getting Started
position: 0
slug: dataform-getting-started
---

# Getting Started #

This example will guide you through the steps needed to add a basic **RadDataForm** control in your application.

>Before you proceed, please, take a look at these articles and follow the instructions to setup your app:

>- [Setup on Windows]({%slug getting-started-windows%})
>- [Setup on Mac]({%slug getting-started-mac%})

## Example

If your app is setup, you are ready to add a **RadDataForm** control.

Here is a sample data class:

	public class Person : NotifyPropertyChangedBase
	{
	    private string name;
	
	    [DisplayOptions(Header = "Name", PlaceholderText = "name")]
	    [StringLengthValidator(2, int.MaxValue, "Name should be longer than 2 symbols.")]
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
	}

You can define the data form in XAML:

	<telerikInput:RadDataForm x:Name="dataForm"/>

Where:

	xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"

And finally set the Source of the form to an instance of the data class:

	dataForm.Source = new Person{ Name = "Peter" };

Or you can use binding if you have set a proper BindingContext:


	<telerikInput:RadDataForm Source={Binding SourceObject}/>	
	
## See Also

- [Editors]({%slug dataform-editors%})
- [Project Wizard]({% slug project-wizard %})
- [Getting Started on Windows]({% slug getting-started-windows %})
- [Getting Started on Mac]({% slug getting-started-mac %})