---
title: NativeConvertionContext Attribute
page_title: NativeConvertionContext Attribute
slug: dataform-annotations-native-convertion-context
---

## NativeConvertionContextAttribute

Working with properties of type DateTime could be tricky because of the DateTime.Kind property. There is no straightforward way to map the kind while converting between CLR DateTime and Android/iOS dates. This is why sometimes the customer should explicitly specify the kind of the property. This can be done with the **NativeConvertionContextAttribute**.

<snippet id="dataform-dataannotations-native-convertion-context-source"/>
	
## See Also

- [Converter Attribute]({%slug dataform-annotations-converter%})
- [DataSourceKey Attribute]({%slug dataform-annotations-data-source-key%})
- [DisplayOptions Attribute]({%slug dataform-annotations-display-options%})
- [DisplayValueFormat Attribute]({%slug dataform-annotations-display-value-format%})
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [ReadOnly Attribute]({%slug dataform-annotations-read-only%})
- [Validation Attribute]({%slug dataform-annotations-validation%})
