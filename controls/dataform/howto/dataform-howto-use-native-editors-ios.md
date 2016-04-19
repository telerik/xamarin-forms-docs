---
title: Email and Password editors in iOS
page_title: Email and Password editors in iOS
slug: dataform-howto-use-native-editors-ios
position: 1
---

## Email and Password editors in iOS

This example will demonstrate how to add custom editors in iOS DataForm.

First, create a sample class.
 
	public class Account
	{
	    [DisplayOptions(Header="User Name", PlaceholderText = "user name", Group = "Registration Info")]
	    [StringLengthValidator(5, 30, "User name should be longed than 5 symbols.")]
	    public string UserName { get; set; }
	
	    [DisplayOptions(Header = "Email", PlaceholderText = "email", Group = "Registration Info")]
	    public string Email { get; set; }
	
	    [DisplayOptions(Header = "Password", PlaceholderText = "password", Position = 2, Group = "Registration Info")]
	    [StringLengthValidator(5, 30, "Password should be longed than 5 symbols.")]
	    public string Password { get; set; }
	}

Then, setup the source and register the editor types.
 
	dataForm.Source = new Account();

	dataForm.RegisterEditor("Email", EditorType.Custom);
	dataForm.RegisterEditor("Password", EditorType.Custom);
	dataForm.RegisterEditor("Date", EditorType.DateEditor);

After that, you have to inherit from the default **DataFormRenderer** and override the some of its methods.

	public class CustomRendererIOS : DataFormRenderer
	{
	    protected override Type GetCustomEditorType(string propertyName, Type propertyType)
	    {
	        if (propertyName == "Email")
	        {
	            return typeof(TKDataFormEmailEditor);
	        }
	
	        if (propertyName == "Password")
	        {
	            return typeof(TKDataFormPasswordEditor);
	        }
	
	        return base.GetCustomEditorType(propertyName, propertyType);
	    }
	}

Finally, replace the default **DataFormRenderer** with the new one in **AppDelegate.cs**:

	[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(CustomRendererIOS))]
		
## See Also
- [Autocomplete editor in Android]({%slug dataform-howto-use-native-editors-android%})
- [Editors]({%slug dataform-editors%})
- [Members]({%slug dataform-members%})