---
title: Editors
page_title: RadDataForm Editors  | Telerik UI for Xamarin.Android Documentation
description: Explains how to use the built-in editors for RadDataForm
slug: data-form-editors
tags: dataform, data, form, editors
position: 3
publish: true
---

## DataForm for Xamarin.Android: Built-in Editors

**RadDataForm** contains many built-in property editors that are either automatically resolved depending on the property's type or by the associated annotation **@DataFormProperty** `editor`. RadDataForm currently ships with the following built-in editors:

- DataFormTextEditor
- DataFormEmailEditor
- DataFormPasswordEditor
- DataFormPhoneEditor
- DataFormIntegerEditor
- DataFormDecimalEditor
- DataFormSwitchEditor
- DataFormNumberPickerEditor
- DataFormSeekBarEditor
- DataFormSegmentedEditor
- DataFormDateEditor
- DataFormTimeEditor
- DataFormSpinnerEditor
- DataFormListViewEditor
- DataFormRadioGroupEditor
- DataFormCheckBoxEditor
- DataFormRadAutoCompleteEditor

## Using @DataFormProperty

RadDataForm 'Editor annotation' can be used to easily assign an editor to a property of the source object. The next example demonstrates how to set the editor of a property via the described annotations:

```C#
[DataFormProperty(Label = "Phone Number", Hint = "phone",
				  Editor = typeof(DataFormPhoneEditor)]
public string Phone
{
	get;
	set;
}
```

## Using the DataFormRadAutoCompleteEditor

DataFormRadAutoCompleteEditor is a bit more advanced editor which provides quick search functionality. This editor uses the [RadAutoCompleteTextView]({%slug android-autocomplete-overview%}) standalone control and all its functionality like `DisplayMode` is available to the RadDataForm editor.

### Setting the suggestions 'source'

Because of the nature of the RadAutoCompleteTextView the editor which exposes its functionality requires some additional data to be passed to it which will be used as the 'suggestions' when a user starts typing in its textbox.

In order to pass this data, you would need to create `AutoCompleteAdapter` and set it to the RadAutoComplete via its `Adapter` property. RadAutoComplete control can be accessed through the EditorView of the DataFormRadAutoCompleteEditor.

To illustrate the approach better, the example below will use the following class as a Source of the DataForm:

```C#
public class Booking : NotifyPropertyChangedBase
{
    private string from;
    private string to;

    [DataFormProperty(Label = "From", Index =0, Editor = typeof(DataFormRadAutoCompleteEditor))]
    public string From
    {
        get
        {
            return this.from;
        }
        set
        {
            this.from = value;
            NotifyListeners("From", value);
        }
    }

    [DataFormProperty(Label = "To", Index = 1, Editor = typeof(DataFormRadAutoCompleteEditor))]
    public string To
    {
        get
        {
            return this.to;
        }
        set
        {
            this.to = value;
            NotifyListeners("To", value);
        }
    }
}
```

Here is the DataForm definition with the AutoCompleteAdapter applied:

```C#
public class MainActivity : AppCompatActivity
{
	private List<string> destinations = new List<string>()
	{
		"Atlanta", "Beijing", "Los Angeles", "Dubai", "Tokyo", "Chicago", "London", "Shanghai", "Paris",
		"Dallas", "Amsterdam", "Hong Kong", "Frankfurt", "Delhi", "Madrid", "Toronto", "Sydney"
	};
	
	protected override void OnCreate(Bundle savedInstanceState)
	{
		base.OnCreate(savedInstanceState);
		Xamarin.Essentials.Platform.Init(this, savedInstanceState);

		RadDataForm dataForm = new RadDataForm(Application.Context);

		dataForm.SetEntity(new Booking());           
		var adapter = new AutoCompleteAdapter(Application.Context, this.GetTokenObjects(), Java.Lang.Integer.ValueOf(Resource.Layout.suggestion_item_layout));
		adapter.CompletionMode = CompletionMode.StartsWith;
		

		DataFormRadAutoCompleteEditor fromEditor = (DataFormRadAutoCompleteEditor)dataForm.GetExistingEditorForProperty("From");
		RadAutoCompleteTextView fromAutocomplete = (RadAutoCompleteTextView)fromEditor.EditorView;
		fromAutocomplete.Adapter = adapter;	
		SetContentView(dataForm);
	}

	private List<TokenModel> GetTokenObjects()
	{
		List<TokenModel> feedData = new List<TokenModel>();
		for (int i = 0; i < this.destinations.Count; i++)
		{
			TokenModel token = new TokenModel(this.destinations[i], null);
			feedData.Add(token);
		}

		return feedData;
	}
}
```

### Setting the DisplayMode

If you are familiar with the RadAutoCompleteTextView element you know that is supports out of the box two different selected items display modes:

- Token - the selected item from the 'suggestion box' is displayed as a box with a remove 'X' button
- Plain - the selected item's text is appended and autocompleted after an item from the 'suggestion box' is selected

When using the `DataFormRadAutoCompleteEditor` you too have the option to change the editor's `DisplayMode`:

```C#
DataFormRadAutoCompleteEditor fromEditor = (DataFormRadAutoCompleteEditor)dataForm.GetExistingEditorForProperty("From");
RadAutoCompleteTextView fromAutocomplete = (RadAutoCompleteTextView)fromEditor.EditorView;
fromAutocomplete.DisplayMode = DisplayMode.Tokens;
```

When the DisplayMode is set to `Tokens` if the bound to that editor property of your EntityProperty is of type `String[]` and each of its elements is present in the "suggestion source" those items from the array will be rendered as separate tokens.
