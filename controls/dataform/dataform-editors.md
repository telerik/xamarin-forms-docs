---
title: Editors
page_title: Editors
slug: dataform-editors
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
		<th>EditorType value</th>
		<th>Android native editor</th>
		<th>iOS native editor</th>
	</tr>
	<tr>
		<td>SliderEditor</td>
		<td>AndroidDataFormSeekBarEditor</td>
		<td>TKDataFormSliderEditor</td>
	</tr>
	<tr>
		<td>PickerEditor</td>
		<td>DataFormSpinnerEditor</td>
		<td>TKDataFormPickerViewEditor</td>
	</tr>
	<tr>
		<td>SwitchEditor</td>
		<td>DataFormSwitchEditor</td>
		<td>TKDataFormSwitchEditor</td>
	</tr>
	<tr>
		<td>TextEditor</td>
		<td>DataFormTextEditor</td>
		<td>TKDataFormTextFieldEditor</td>
	</tr>
	<tr>
		<td>SegmentedEditor</td>
		<td>DataFormSegmentedEditor</td>
		<td>TKDataFormSegmentedEditor</td>
	</tr>
	<tr>
		<td>NumberPickerEditor</td>
		<td>DataFormNumberPickerEditor</td>
		<td>TKDataFormStepperEditor</td>
	</tr>
	<tr>
		<td>DateEditor</td>
		<td>DataFormDateEditor</td>
		<td>TKDataFormDatePickerEditor</td>
	</tr>
	<tr>
		<td>TimeEditor</td>
		<td>DataFormTimeEditor</td>
		<td>TKDataFormTimePickerEditor</td>
	</tr>
	<tr>
		<td>CheckBoxEditor</td>
		<td>DataFormCheckBoxEditor</td>
		<td>TKDataFormSwitchEditor instead</td>
	</tr>
	<tr>
		<td>ToggleButtonEditor</td>
		<td>DataFormToggleButtonEditor</td>
		<td>TKDataFormSwitchEditor instead</td>
	</tr>
	<tr>
		<td>DecimalEditor</td>
		<td>DataFormDecimalEditor</td>
		<td>custom</td>
	</tr>
	<tr>
		<td>IntegerEditor</td>
		<td>DataFormIntegerEditor</td>
		<td>custom</td>
	</tr>
	<tr>
		<td>Custom</td>
		<td>custom</td>
		<td>custom</td>
	</tr>
</table>
 
### Custom Editors

When a Custom editor type is registered, specific renderer methods will be called in each platform. You will have to inherit from the renderers and override these methods to to provide your custom editor.

	dataForm.RegisterEditor("Gender", EditorType.Custom);

	[assembly: ExportRenderer(typeof(RadDataForm), typeof(CustomRenderer))]

	CustomRenderer : DataFormRenderer
	{
	    ...
	}

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

