---
title: How to add missing item to the AutoCompleteView ItemsSource
description: when no result found, add the item to the ItemsSource
type: how-to
page_title: How to add item to the AutoCompleteView collection
slug: autocompleteview-add-items-to-the-source
position: 
tags: 
ticketid: 1364788
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2018.3.1122.3</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>AutoCompleteView for Xamarin</td>
	</tr>
	<tr>
		<td>Xamarin.Forms</td>
		<td>3.4</td>
	</tr>
</table>


## Description

This article shows how to add no match item to the AutoCompleteView ItemsSource.

## Solution

Create a business object, for example type Client with the following properties:

```C#
public class Client
{
    public Client(string name, string email, string imageSource)
    {
        this.Name = name;
        this.Email = email;
        this.ImageSource = imageSource;
    }
    public string Name { get; set; }
    public string Email { get; set; }
    public string ImageSource { get; set; }
}
```

and the needed ViewModel:

```C#
public class ViewModel
{
	public ObservableCollection<Client> Source { get; set; }
	public ViewModel()
	{
		this.Source = new ObservableCollection<Client>()
		{
 			new Client("Freda Curtis", "fcurtis@mail.com"),
        	new Client("Jeffery Francis", "jfrancis@mail.com"),
       		new Client("Eva Lawson", "elawson@mail.com"),
            new Client("Emmett Santos", "esantos@mail.com"),
            new Client("Theresa Bryan", "tbryan@mail.com"),
            new Client("Jenny Fuller", "jfuller@mail.com"),
            new Client("Terrell Norris", "tnorris@mail.com"),
            new Client("Eric Wheeler", "ewheeler@mail.com"),
            new Client("Nida Carty", "ncarty@mail.com"),
            new Client("Niki Samaniego", "nsamaniego@mail.com")
		};
	}
}
```

Define the RadAutoCompleteView in XAML:

```XAML
<StackLayout>
    <telerikInput:RadAutoCompleteView ItemsSource="{Binding Source}"
                                            x:Name="autoCompleteView"
                                            DisplayMode="Tokens" 
                                            Watermark="Search for Name"
                                            TextSearchPath="Name">
        <telerikInput:RadAutoCompleteView.NoResultsTemplate>
            <DataTemplate>
                <Grid>
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition/>
                        <ColumnDefinition Width="Auto"/>
                    </Grid.ColumnDefinitions>
                    <Label Text="No Result: " 
					       HorizontalTextAlignment="Center" 
						   VerticalTextAlignment="Center"
                           VerticalOptions="Center" 
						   HorizontalOptions="Center" 
						   FontSize="15"/>
                    <Button Text="Add" Clicked="Button_Clicked" Grid.Column="1"/>
                </Grid>
            </DataTemplate>
        </telerikInput:RadAutoCompleteView.NoResultsTemplate>
    </telerikInput:RadAutoCompleteView>
</StackLayout>
```

And add Clicked event to the Button and in code behind use the following snippet:

```C#
private void Button_Clicked(object sender, System.EventArgs e)
{
    var searchText = this.autoCompleteView.Text;
    if (!string.IsNullOrEmpty(searchText))
    {
        var newClient = new Client(searchText, string.Empty);
        this.vm.Source.Add(newClient);
        this.autoCompleteView.Tokens.Add(newClient);
        this.autoCompleteView.Text = string.Empty;
    }
}
```

Finaly add the BindingContext to be ViewModel

```C#
private ViewModel vm;

	public MainPage()
	{
		InitializeComponent();
		this.vm = new ViewModel();
	    this.BindingContext = this.vm;
	}
```
