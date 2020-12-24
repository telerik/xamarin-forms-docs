---
title: Custom Editors
page_title: RadDataForm Custom Editors  | Telerik UI for Xamarin.Android Documentation
description: Explains how to create custom editors for RadDataForm
slug: data-form-custom-editors
tags: dataform, data, form, custom editors
position: 4
publish: true
---

## DataForm for Xamarin.Android: Custom Editors

Creating a custom editor for RadDataForm consists of two things: creating an **editor** and creating a **viewer**, when in read-only mode.

To create a custom editor developers need to create a class that inherits from **EntityPropertyEditor** and provide a constructor that accepts a **Context** as
its first argument and an **EntityProperty** object as its second argument. For example:

```C#
public class CustomEditor : EntityPropertyEditor {
	public CustomEditor(RadDataForm form, IEntityProperty property) : base(form,
		Resource.Layout.custom_editor_layout,
		Resource.Layout.custom_editor_header_layout,
		Resource.Id.custom_editor_header,
		Resource.Layout.custom_editor_core,
		Resource.Id.custom_editor,
		Resource.Layout.custom_editor_validation_layout,
		property) 
	{
		
	}
	public CustomEditor(RadDataForm dataForm, int layoutId, int headerLayoutId, 
		int headerViewId, int editorLayoutId, int editorViewId, 
		int validationLayoutId, IEntityProperty property) : 
		
		base(dataForm, layoutId, headerLayoutId, headerViewId, editorLayoutId, 
			editorViewId, validationLayoutId, property)
	{
	}

	public override Java.Lang.Object Value() {
		return ((EditText)EditorView).Text;
	}

	protected override void ApplyEntityValueToEditor(Java.Lang.Object entityValue) {
		((EditText)EditorView).Text = entityValue.ToString();
	}
}
```

This basic custom editor is designed to edit String properties. Notice how the constructor calls the super constructor with a specific layout and the ids of the necessary parts that define the editor. These are the **editor** itself, the **header view** and the **validation view**. The editor can be a button, an edit text widget, a spinner or anything else that allows the user to edit the associated property. The layout can be completely arbitrary and the only requirement is that the editor, header and validation view be specified. One minor restriction is that the validation view must inherit from **DataFormValidationView**.