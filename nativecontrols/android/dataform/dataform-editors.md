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

The **RadDataForm** contains many built-in property editors that are either automatically resolved depending on the property's type or by the associated annotation **@DataFormProperty** `editor`. The RadDataForm currently ships with the following built-in editors:

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

# Using @DataFormProperty

The RadDataForm 'annotations' can be used to easily assign an editor to a property of the set Entity. The next example demonstrates how to set the editor of a property via the described annotations:



# Using the 'DataFormRadAutoCompleteEditor'

The DataFormRadAutoCompleteEditor is a bit more advanced editor which provides an out of the box quick search functionality. This editor uses the **RadAutoCompleteTextView** stand alone element and all its functionality like `DisplayMode` is available to the RadDataForm editor.

## Setting the suggestions 'source'

Because of the nature of the RadAutoCompleteTextView the editor which exposes its functionality requires some additional data to be passed to it which will be used as the 'suggestions' when a user starts typing in its text box.

Passing this data can be done in multiple different approaches depending on which one is the easiest for your scenario:

- By using the `additionalData` property of the **@DataFormProperty** and setting it to an static `String[]`
- By creating an `AutoCompleteAdapter` and setting it to the DataFormRadAutoCompleteEditor via its `setAdapter()` method
- Or by directly by calling the `updateValues()` of the specific `EntityPropertyCore` object. The next code snippet shows how you can use the mentioned 'updateValues' method on an existing 'from' property of the RadDataForm, the `list` object is a simple `List<String>` :

 

 Because calling the updateValues can be done after the editor has been rendered you need to make sure you also update the DataFormRadAutoCompleteEditor itself by simply calling its `updateAdapter()` method:

 

## Setting the DisplayMode

If you are familiar with the RadAutoCompleteTextView element you know that is supports out of the box two different selected items display modes:

- Token - the selected item from the 'suggestion box' is displayed as a box with a remove 'X' button
- Plain - the selected item's text is appended and autocompleted after an item from the 'suggestion box' is selected

When using the `DataFormRadAutoCompleteEditor` you too have the option to change the editor's `displayMode` by simply calling its `setDisplayMode()` and passing the desired mode:

 

 When the displayMode is set to `TOKEN` if the bound to that editor property of your EntityProperty is of type `String[]` and each of its elements is present in the "suggestion source" those items from the array will be rendered as separate tokens.

 The full Java source code of the above example can be found [here](https://github.com/telerik/Android-samples/blob/453ad69247632f3c4d48eff87e682e167a35115a/Samples-Java/Samples/src/main/java/fragments/dataform/DataFormAutoCompleteTextViewEditorFragment.java).