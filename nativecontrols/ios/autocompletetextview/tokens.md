---
title: Tokens
page_title: AutoCompleteTextView Tokens
position: 5
---

# AutoCompleteTextView for Xamarin.iOS: Tokens

<img src="../images/autocomplete-tokens001.png"/>

In order to provide better user expirience and complete set of functionalities <code>TKAutoCompleteTextView</code> supports text tokenizing which can be enabled through the <code>DisplayMode</code> property of the <code>TKAutoCompleteTextView</code>.

 ```C#
this.Autocomplete.DisplayMode = TKAutoCompleteDisplayMode.Tokens;
```

The layout flow of the tokens can be horizontal or vertically wrapped.
This feature can be accessed through the <code>layoutMode</code> property of the <code>TKAutoCompleteTextView</code>. By default vertical wrapping is used.
 
 ```C#
this.Autocomplete.LayoutMode = TKAutoCompleteLayoutMode.Wrap;
```

Tokens appereance can be customized by conforming to the <code>TKAutoCompleteDelegate</code> protocol and implementing the <code>ViewForToken</code> method. You can change variaty of properties to get custom look or you can provide a custom token object.

 ```C#
class AutoCompleteTokensDelegate : TKAutoCompleteDelegate
{
    public override TKAutoCompleteTokenView ViewForToken(TKAutoCompleteTextView autocomplete, TKAutoCompleteToken token)
    {
        TKAutoCompleteTokenView tokenView = new TKAutoCompleteTokenView(token);
        tokenView.BackgroundColor = UIColor.LightGray;
        tokenView.Layer.CornerRadius = 10;
        tokenView.ImageView.Layer.CornerRadius = 3;
        return tokenView;
    }
}
```

> AutoCompleteTextView Token demo can be fond in our [Native Xamarin.iOS examples]({%slug sdk-browser-overview%}##native-only-examples).
