---
title: Getting Started
page_title: DataForm Getting Started
position: 2
---

# DataForm: Getting Started

This quick start tutorial demonstrates how to create a simple iOS application with <code>TKDataForm</code>.

<img src="../images/dataform-gettingstarted001.png" />


## Setting up TKDataForm

Now that our project is created and the TelerikUI.framework is added, we can start referencing and using the TelerikUI types:

Open your **ViewController.m** file and add a reference to the chart header file:

    #import <TelerikUI/TelerikUI.h>

Note that starting with Xcode 6 Apple doesn't generate the precompiled headers file automatically. That is why you should add import the UIKit framework before importing TelerikUI:

    #import <UIKit/UIKit.h>

If you are writing Swift, add the same line in your bridging header.

If you are using Xamarin, add a reference to TelerikUI.dll in your project and use the using directive:

    using TelerikUI;

First you should create a bussiness object that will be displayed and edited by <code>TKDataForm</code>. Lets create a class called <code>PersonalInfo</code>

<snippet id='dataform-info'/>
<snippet id='dataform-info-swift'/>
```C#
public class PersonalInfo : NSObject
{
    [Export("Server")]
    public string Server { get; set;}

    [Export("Details")]
    public string Details { get; set;}

    [Export("Account")]
    public string Account { get; set;}

    [Export("Secure")]
    public bool Secure { get; set;}

    [Export("Password")]
    public string Password { get; set;}

    [Export("EncryptionLevel")]
    public int EncryptionLevel { get; set;}

    [Export("SendAllTraffic")]
    public bool SendAllTraffic { get; set;}

    [Export("InfoProtocol")]
    public int InfoProtocol{ get; set;}

    public PersonalInfo ()
    {
        this.InfoProtocol = 0;
        this.Details = "";
        this.Server = "";
        this.Secure = false;
        this.Password = "";
        this.EncryptionLevel = 0;
        this.Account = "";
        this.SendAllTraffic = true;
    }
}
```

The <code>TKDataForm</code> object should be created in <code>viewDidLoad</code> method:

<snippet id='dataform-obj'/>
<snippet id='dataform-obj-swift'/>
```C#
this.dataForm = new TKDataForm (this.View.Bounds);
this.dataForm.Delegate = this.dataFormDelegate;
this.View.AddSubview (this.dataForm);
```

You should adopt <code>TKDataFormDelegate</code> and implement its <code>dataForm:updateEditor:forProperty:</code> method in order to customize the editors:

<snippet id='dataform-delegate'/>
<snippet id='dataform-delegate-swift'/>
```C#
public override void UpdateEditor (TKDataForm dataForm, TKDataFormEditor editor, TKEntityProperty property)
{
    TKGridLayoutCellDefinition feedbackDef = editor.GridLayout.DefinitionForView (editor.FeedbackLabel);
    editor.GridLayout.SetHeight (0, feedbackDef.Row.Int32Value);

    if (property.Name == "InfoProtocol") {
        editor.Style.TextLabelDisplayMode = TKDataFormEditorTextLabelDisplayMode.Hidden;
        TKGridLayoutCellDefinition textLabelDef = editor.GridLayout.DefinitionForView (editor.TextLabel);
        editor.GridLayout.SetWidth (0, textLabelDef.Column.Int32Value);
    }

    if (editor.IsKindOfClass (new Class(typeof(TKDataFormTextFieldEditor))) && !(property.Name.Equals("Password"))) {
        property.HintText = "Required";
    }
}
```

## Setting up TKDataForm with TKDataFormViewController

In master/detail scenario the content of an editor will open on its own screen. It this case you should use <code>TKDataFormViewController</code>. This view controller contains a <code>TKDataForm</code> and adopts its <code>TKDataFormDelegate</code> and <code>TKDataFormDataSouece</code> protocols. <code>TKDataFormOptionsEditor</code>  is used to display option lists on its own screen and it requires the usage of <code>TKDataFormViewController</code>.

<table>
	<tr>
		<td><img src="../images/dataform-gettingstarted002.png" /></td>
		<td><img src="../images/dataform-gettingstarted003.png" /></td>
	</tr>
</table>

We should create a view controller that inherits from <code>TKDataFormViewController</code>. For demonstration purposes we will be using the <code>PersonalInfo</code> class from the snippet above.

<snippet id='dataform-ctrl'/>
<snippet id='dataform-ctrl-swift'/>
```C#
public class DataFormGettingStarted : TKDataFormViewController
{
```

<code>TKDataFormViewController</code> does not contain a navigation controller. You should provide one before using the TKDataFormViewController.

The setup of the <code>TKDataForm</code> is done in the <code>viewDidLoad</code> of the inheriting class. since the <code>TKDataformViewController</code> provides ready-to-use instance of the <code>TKDataForm</code>, you can used it and just setup the visual appereance and data properties.

<snippet id='dataform-ctrl-setup'/>

<snippet id='dataform-ctrl-setup-swift'/>

```C#
public override void ViewDidLoad()
{
    base.ViewDidLoad ();
        
    this.personalInfo = new PersonalInfo ();
    this.dataSource = new TKDataFormEntityDataSourceHelper (this.personalInfo);
    this.dataFormDelegate = new GettingStartedDataFormDelegate ();

    this.dataSource["Password"].HintText = "Ask every time";
    this.dataSource ["Password"].EditorClass = new Class (typeof(TKDataFormPasswordEditor));
    this.dataSource["InfoProtocol"].ValuesProvider = NSArray.FromStrings(new string[] { "L2TP", "PPTP", "IPSec" });
    this.dataSource["EncryptionLevel"].ValuesProvider = NSArray.FromStrings(new string[] { "FIPS Compliant", "High", "Client Compatible", "Low" });

    this.dataSource.AddGroup(" ", new string[] { "InfoProtocol" });
    this.dataSource.AddGroup (" ", new string[] {
        "Details",
        "Server",
        "Account",
        "Secure",
        "Password",
        "EncryptionLevel",
        "SendAllTraffic"
    });
                
    this.DataForm.BackgroundColor = new UIColor (0.937f, 0.937f, 0.960f, 1.0f);
    this.DataForm.GroupSpacing = 20;
    this.DataForm.Delegate = this.dataFormDelegate;
    this.DataForm.WeakDataSource = this.dataSource.NativeObject;
}
```
