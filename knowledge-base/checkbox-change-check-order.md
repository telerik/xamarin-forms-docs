---
title: Order the CheckBox states
description: how to change the checkbox states order
type: how-to
page_title: change the checkbox state order
slug: checkbox-change-check-order
position: 
tags: checkbox, state, ischecked, indeterminate, unchecked, checked, xamarin, xamarin.forms
ticketid: 1444495
res_type: kb
---

## Environment
<table>
	<tbody>
		<tr>
			<td>Product Version</td>
			<td>2019.3 1119.1</td>
		</tr>
		<tr>
			<td>Product</td>
			<td>Checkbox for Xamarin</td>
		</tr>
	</tbody>
</table>

## Description

By default the logic of the RadCheckBox *IsChecked* state when *IsThreeState = "True"* is **Indeterminate -> Unchecked -> Checked**. For sure there will be some scenarios when you want to change the state flow, for example **Indeterminate -> Checked -> Unchecked**.

In this help article we will show you how this could be achieved.

## Solution

The CheckBox IsChecked state flow can be changed inside the RadCheckBox IsCheckedChanged event. 

1. Create a ViewModel class with property that will be bind to the CheckBox IsChecked property.

	```C#
	public class ViewModel : NotifyPropertyChangedBase
	{
	    private bool? myproperty;
	    public bool? MyProperty 
	    {
	        get
	        {
	            return this.myproperty;
	        }
	        set
	        {
	            if(this.myproperty != value)
	            {
	                this.myproperty = value;
	                OnPropertyChanged();
	            }
	        }
	    }
	}
	```

1. then inside the code behind create a bool property that will be used to trigger whether the checkbox state is changed and inside the RadCheckBox_IscheckedChanged event implement a custom logic for changing the state:

	```C#
	public partial class MainPage : ContentPage
	{
	    ViewModel vm;
	       
	        
	
	    public MainPage()
	    {
	        InitializeComponent();
	
	        this.vm = new ViewModel();
	        this.BindingContext = vm;
	    }
	    private bool isinternalchanged = true;
	    public bool IsInternalChanged
	    {
	        get
	        {
	            return this.isinternalchanged;
	        }
	
	        set
	        {
	            if (this.isinternalchanged)
	            {
	                return;
	            }
	        }
	    }
	    private void RadCheckBox_IsCheckedChanged(object sender, Telerik.XamarinForms.Primitives.CheckBox.IsCheckedChangedEventArgs e)
	    {
	        var obj = sender as RadCheckBox;
	        var old = e.OldValue;
	
	        if (this.isinternalchanged)
	        {
	            this.isinternalchanged = false;
	            return;
	        }
	
	        if(old == null)
	        {
	            this.isinternalchanged = true;
	            vm.MyProperty = true;
	        }
	
	        else if(old == true)
	        {
	            this.isinternalchanged = true;
	            vm.MyProperty = false;
	        }
	
	        else if(old == false)
	        {
	            this.isinternalchanged = true;
	            vm.MyProperty = null;
	        }
	    }
	}
	```
