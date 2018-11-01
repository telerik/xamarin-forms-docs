---
title: Key Features
page_title: Key Features
position: 2
slug: checkbox-key-features
---

# Key Features

The purpose of this help article is to show you the key features of the **RadCheckBox** control. 

## CheckBox States

RadCheckBox provides three states – **Checked**, **Unchecked** and **Indeterminate**. The state is controlled through the **IsChecked** property which is of type bool?. The state could be set either through the UI or programmatically as explained below:

* **Checked**/**Unchecked** state - when **IsChecked** is true/false respectively;
* **Indeterminate** state - when **IsChecked** is null;

The default value of **IsChecked** is false.

Here is an example how you can set the **Indeterminate** state:

<snippet id='checkbox-key-features-ischeckednull-xaml'/>


Here is the end result with available states defined:


![CheckBox Key Feature Example](images/checkbox-features.png)

## See Also

- [CheckBox Getting Started]({% slug checkbox-getting-started%})
- [CheckBox Styling]({% slug checkbox-styling%}) 
