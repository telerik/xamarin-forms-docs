---
title: Members
page_title: Members
position: 2
slug: dataform-members
---

# Members

Here are listed all **RadDataForm** members:

## Properties

- **Source** (object)
- **[ValidationMode]({%slug dataform-validate-and-commit%}#validate)** (ValidationMode)
- **[CommitMode]({%slug dataform-validate-and-commit%}#commit)** (CommitMode)
- **[PropertyDataSourceProvider]({%slug dataform-data-annotations%}#datasourcekeyattribute)** (IPropertyDataSourceProvider)

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
