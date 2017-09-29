---
title: Mask Tokens
page_title: Mask Tokens
position: 4
slug: maskedinput-features-mask-extensions
---

## Mask Extensions

The static class **Telerik.XamarinForms.Input.MaskedInput.MaskExtensions** contains two static regular expressions which you can directly use for validation when the **MaskType** is **Regex**:

- **IP**:  "^(([1-9]?\\d|1\\d\\d|2[0-5][0-5]|2[0-4]\\d)\\.){3}([1-9]?\\d|1\\d\\d|2[0-5][0-5]|2[0-4]\\d)$"
- **Email**: "^(([^<>()\\[\\]\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$"
 
## See Also

* [Getting Started]({% slug maskedinput-getting-started %})
* [Events]({% slug maskedinput-features-events %})
* [Commands]({% slug maskedinput-features-commands %})