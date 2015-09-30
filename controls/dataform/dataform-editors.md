---
title: Editors
page_title: Editors
slug: dataform-editors
position: 3
---

# Editors

The RadDataForm provides the following methods to replace the default editors:

- void **RegisterEditor**(string *propertyName*, EditorType *editorType*): Registers an editor type for a property with a specific name.
- void **RegisterEditor**(Type *propertyType*, EditorType *editorType*): Registers an editor type for a specific property type.

> The editors registered for property name are with higher priority than the ones registered for property type.

## Editor Types

The values from the **EditorType** enumeration are interpreted differently by each platform and when an editor type is missing, the closest type is used. The following table shows the type mapping:  

<table>
	<tr>
		<th>EditorType</th>
		<th>Android native editor</th>
		<th>iOS native editor</th>
		<th>editor value type</th>
	</tr>
	<tr>
		<td>SliderEditor</td>
		<td>AndroidDataFormSeekBarEditor</td>
		<td>TKDataFormSliderEditor</td>
		<td>float</td>
	</tr>
	<tr>
		<td>PickerEditor</td>
		<td>DataFormSpinnerEditor</td>
		<td>TKDataFormPickerViewEditor</td>
        <td>*requires PropertyDataSourceProvider</td>
	</tr>
	<tr>
		<td>TextEditor</td>
		<td>DataFormTextEditor</td>
		<td>TKDataFormTextFieldEditor</td>
		<td>string</td>
	</tr>
	<tr>
		<td>SegmentedEditor</td>
		<td>DataFormSegmentedEditor</td>
		<td>TKDataFormSegmentedEditor</td>
		<td>*requires PropertyDataSourceProvider</td>
	</tr>
	<tr>
		<td>NumberPickerEditor</td>
		<td>DataFormNumberPickerEditor</td>
		<td>TKDataFormStepperEditor</td>
		<td>double</td>
	</tr>	
	<tr>
		<td>CheckBoxEditor</td>
		<td>DataFormCheckBoxEditor</td>
		<td>TKDataFormSwitchEditor instead</td>
		<td>bool</td>
	</tr>
	<tr>
		<td>ToggleButtonEditor</td>
		<td>DataFormToggleButtonEditor</td>
		<td>TKDataFormSwitchEditor instead</td>
		<td>bool</td>
	</tr>
	<tr>
		<td>Custom</td>
		<td>custom</td>
		<td>custom</td>
		<td>requires custom editors</td>
	</tr>
</table>
 
\* **[PropertyDataSourceProvider]({% slug dataform-data-annotations%}#datasourcekeyattribute)**

<!--Sometimes your property type will not be the same as the editor type, e.g. when you wish to edit integers with a NumberPicker editor. In this case you will have to use a **[converter]({% slug dataform-data-annotations%}#converterattribute)**.-->

### Custom Editors

When a Custom editor type is registered, specific renderer methods will be called on each platform. You will have to inherit from the renderers and override specific methods to setup a custom editor.

	dataForm.RegisterEditor("Gender", EditorType.Custom);

	[assembly: ExportRenderer(typeof(RadDataForm), typeof(CustomRenderer))]

	CustomRenderer : DataFormRenderer
	{
	    ...
	}

> For more detailed example you can take a look at the [Further Customization]({%slug dataform-further-customization%}) article.
> 
> The DataFormRenderer works differently on each platform - see the specific methods available for override below.

#### Android

DataFormRenderer available methods for override:

- EntityPropertyEditor **GetCustomEditorForProperty**(IEntityProperty *property*, EntityPropertyMetadata *metadata*)
- EntityPropertyViewer **GetCustomViewerForProperty**(IEntityProperty *property*, EntityPropertyMetadata *metadata*)
- void **UpdateEditor**(EntityPropertyEditor *editor*, EntityPropertyMetadata *metadata*)
- void **UpdateViewer**(EntityPropertyViewer *viewer*, EntityPropertyMetadata *metadata*)

> On Android if a property is read-only, a viewer is used.

#### iOS

DataFormRenderer available methods for override:

- Type **GetCustomEditorType**(string *propertyName*, Type *propertyType*)
- void **UpdateEditor**(TKDataFormEditor *editor*, TKEntityProperty *property*, EntityPropertyMetadata *metadata*)

> On iOS if a property is read-only, the editor is disabled.
