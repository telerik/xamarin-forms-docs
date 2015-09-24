---
title: Further Customization
page_title: Further Customization
slug: dataform-further-customization
---

# Further Customization

## Android


	[assembly: ExportRenderer(typeof(Telerik.XamarinForms.Input.RadDataForm), typeof(CustomRendererDroid))]

	public class CustomRendererDroid : DataFormRenderer
	{
	    private readonly Java.Lang.Object[] items = new Java.Lang.Object[] { "pretty cat", "fat cat", "fluffy cat" };
	
	    protected override EntityPropertyEditor GetCustomEditorForProperty(RadDataForm form, IEntityProperty property, EntityPropertyMetadata metadata)
	    {
            base.UpdateEditor(editor, metadata);

	        if (property.Name() == "Animal")
	        {
	            return new DataFormAutoCompleteEditor(form, property);
	        }
	
	        return base.GetCustomEditorForProperty(form, property, metadata);
	    }
	
	    protected override void UpdateEditor(EntityPropertyEditor editor, EntityPropertyMetadata metadata)
	    {
	        if (editor.Property().Name() == "Animal")
	        {
	            var autoComplete = editor.EditorView as AutoCompleteTextView;
	            autoComplete.Adapter = new ArrayAdapter(Forms.Context, Resource.Layout.data_form_autocomplete_item, this.items);
	        }
	    }
	}

![AutoComplete Editor](images/dataform-custom-renderer-android.png)

## iOS

