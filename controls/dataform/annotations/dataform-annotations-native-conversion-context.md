---
title: NativeConversionContext Attribute
page_title: Xamarin DataForm Documentation | NativeConversionContext Attribute
description: Check our &quot;NativeConversionContext Attribute&quot; documentation article for Telerik DataForm for Xamarin control.
slug: dataform-annotations-native-convertion-context
---

## NativeConversionContextAttribute

Working with properties of type DateTime could be tricky because of the DateTime.Kind property. There is no straightforward way to map the kind while converting between CLR DateTime and Android/iOS dates. This is why sometimes you should explicitly specify the kind of the property. This can be done with the **NativeConversionContextAttribute**.

<snippet id='dataform-dataannotations-native-conversion-context-source'/>
	
## See Also

- [Converter Attribute]({%slug dataform-annotations-converter%})
- [DataSourceKey Attribute]({%slug dataform-annotations-data-source-key%})
- [DisplayOptions Attribute]({%slug dataform-annotations-display-options%})
- [DisplayValueFormat Attribute]({%slug dataform-annotations-display-value-format%})
- [Ignore Attribute]({%slug dataform-annotations-ignore%})
- [ReadOnly Attribute]({%slug dataform-annotations-read-only%})
- [Validation Attribute]({%slug dataform-annotations-validation%})
