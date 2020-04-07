---
title: Members
page_title: Members
description: Check our &quot;Members&quot; documentation article for Telerik DataForm for Xamarin control.
position: 2
slug: dataform-members
published: False
---

# Members

Here are listed all **RadDataForm** members:

## Properties

- **[Source]({%slug data-form-data-source%})** (object)
- **IsReadOnly** (bool)
- **[ValidationMode]({%slug dataform-validate-and-commit%}#validate)** (ValidationMode)
- **[CommitMode]({%slug dataform-validate-and-commit%}#commit)** (CommitMode)
- **[EditorStyle]({%slug dataform-styling-editors%})** (DataFormEditorStyle)
- **[MetadataProvider]({%slug data-form-data-source%})** (PropertyMetadataProviderBase)

## Methods

- void **[RegisterEditor]({%slug dataform-editors%}#editors)**(Type *propertyType*, EditorType *editorType*)
- void **[RegisterEditor]({%slug dataform-editors%}#editors)**(string *propertyName*, EditorType *editorType*)
- void **Reload**()
- void **[CommitAll]({%slug dataform-validate-and-commit%}#commit)**()
- void **[ValidateAll]({%slug dataform-validate-and-commit%}#validate)**()
- void **[CommitProperty]({%slug dataform-validate-and-commit%}#commit)**(string *propertyName*)
- void **[ValidateProperty]({%slug dataform-validate-and-commit%}#validate)**(string *propertyName*)

## Events

- **[FormValidationFinished]({%slug dataform-validate-and-commit%}#events)**
- **[PropertyValidationFinished]({%slug dataform-validate-and-commit%}#events)**
