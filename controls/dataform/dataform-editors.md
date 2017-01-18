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
		<th>Android<br/>native editor</th>
		<th>iOS<br/>native editor</th>
		<th>WinRT/UWP<br/>native editor</th>
		<th>value type</th>
	</tr>
	<tr>
		<td>SliderEditor</td>
		<td>AndroidDataFormSeekBarEditor</td>
		<td>TKDataFormSliderEditor</td>
		<td>SliderCustomEditor</td>
		<td>float</td>
	</tr>
	<tr>
		<td>PickerEditor</td>
		<td>DataFormSpinnerEditor</td>
		<td>TKDataFormPickerViewEditor</td>
		<td>ListEditor</td>
		<td>**requires PropertyDataSourceProvider</td>
	</tr>
	<tr>
		<td>TextEditor</td>
		<td>DataFormTextEditor</td>
		<td>TKDataFormTextFieldEditor</td>
		<td>StringEditor</td>
		<td>string</td>
	</tr>
	<tr>
		<td>SegmentedEditor</td>
		<td>DataFormSegmentedEditor</td>
		<td>TKDataFormSegmentedEditor</td>
		<td>SegmentedCustomEditor</td>
		<td>**requires PropertyDataSourceProvider</td>
	</tr>
	<tr>
		<td>NumberPickerEditor</td>
		<td>DataFormNumberPickerEditor</td>
		<td>TKDataFormStepperEditor</td>
		<td>NumericEditor</td>
		<td>double</td>
	</tr>
    <tr>
		<td>IntegerEditor</td>
		<td>DataFormIntegerEditor</td>
		<td>TKDataFormNumberEditor</td>
		<td>*StringEditor</td>
		<td>int</td>
	</tr>
    <tr>
		<td>DecimalEditor</td>
		<td>DataFormDecimalEditor</td>
		<td>TKDataFormDecimalEditor</td>
		<td>*StringEditor</td>
		<td>double</td>
	</tr>
	<tr>
		<td>CheckBoxEditor</td>
		<td>DataFormCheckBoxEditor</td>
		<td>*TKDataFormSwitchEditor</td>
		<td>BooleanEditor</td>
		<td>bool</td>
	</tr>
	<tr>
		<td>ToggleButtonEditor</td>
		<td>DataFormToggleButtonEditor</td>
		<td>TKDataFormSwitchEditor instead</td>
		<td>*BooleanEditor</td>
		<td>bool</td>
	</tr>
    <tr>
		<td>DateEditor</td>
		<td>DataFormDateEditor</td>
		<td>TKDataFormDatePickerEditor</td>
		<td>DateEditor</td>
		<td>DateTime</td>
	</tr>
    <tr>
		<td>TimeEditor</td>
		<td>DataFormTimeEditor</td>
		<td>TKDataFormTimePickerEditor</td>
		<td>TimeEditor</td>
		<td>DateTime</td>
	</tr>
	<tr>
		<td>Custom</td>
		<td colspan="4">Specifies that custom editor control will be provided.</td>
	</tr>
</table>

\* Some editors are not supported in all native platforms. In these cases we use the closest substitute.  
\** **[PropertyDataSourceProvider]({%slug dataform-annotations-data-source-key%})**

> Sometimes your property type will not be the same as the type supported by the editor, e.g. when you wish to edit integers with a NumberPicker editor. In this case you will have to use a **[converter]({%slug dataform-annotations-converter%})**.

## Custom Editors

When a Custom editor type is registered, specific renderer methods will be called on each platform. You will have to inherit from the renderers and override specific methods to setup a custom editor.

	dataForm.RegisterEditor("Gender", EditorType.Custom);

	[assembly: ExportRenderer(typeof(RadDataForm), typeof(CustomRenderer))]

	CustomRenderer : DataFormRenderer
	{
	    ...
	}

> The DataFormRenderer works differently on each platform - see the specific methods available for override below.

### Android

DataFormRenderer available methods for override:

- **UpdateEditor**(*Droid.EntityPropertyEditor*, *XF.IEntityProperty*)
- **UpdateViewer**(*Droid.EntityPropertyViewer*, *XF.IEntityProperty*)
- **GetCustomEditorForProperty**(*Droid.IEntityProperty*, *XF.IEntityProperty*)
- **GetCustomViewerForProperty**(*Droid.IEntityProperty*, *XF.IEntityProperty*)

Where:

- Droid = Com.Telerik.Widget.Dataform.Visualization.Core;
- XF = Telerik.XamarinForms.Input.DataForm;

> On Android if a property is read-only, a viewer is used.



### iOS

DataFormRenderer available methods for override:

- **GetCustomEditorType**(string *propertyName*, Type *propertyType*)
- **InitEditor**(*TKDataFormEditor*, *IEntityProperty*)
- **UpdateEditor**(*TKDataFormEditor*, *IEntityProperty*)

> On iOS if a property is read-only, the editor is disabled.

### UWP

				
## See Also

- [DataForm Layouts]({% slug dataform-group-layouts %})
- [Validate and Commit]({% slug dataform-validate-and-commit %})