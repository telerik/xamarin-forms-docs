---
title: Using Remote Data
page_title: RadAutoCompleteTextView Using Remote Data | Telerik UI for Android Documentation
description: This article explains how to implement remote filtering of suggestions with RadAutoCompleteTextView.
slug: autocomplete-usingremotedata
tags: radautocompletetextview, remotedata, autocomplete, remote
position: 6
publish: true
---

#RadAutoCompleteTextView: Using Remote Data
In this article, you are going to learn how to load and filter suggestions from a remote provider according to the text typed by the user. 

##How does it work
There are multiple scenarios where we need to represent data loaded from remote provider like a web service. Dynamic loading of items, based on the user input could be quite useful when we are working with  sets of data that are not available locally.
 
In order to provide this feature, the **RadAutoCompleteTextView** allows you to take full control over it's filtering logic.
In your custom filtering logic you should include the remote request to the server based on the current user input. Once the server has returned response, you need to parse the data into TokenModel objects and notify the **RadAutoCompleteTextView** that the remote loading is over.

In the next few sections we will discuss the process of working with remote data in details with step-by-step explanations.
For the purpose of the example we will use .json data containing description of airports.

##Step-by-step: Enable asynchronous loading
In order to start loading remote data into the **RadAutoCompleteTextView** you need to notify the control that you will provide the suggestions on later point of the execution. Meaning,  you will initialize the adapter with empty collection of suggestions and then, every time the user types a character, you will update the control with the loaded suggestions from your request.
All you need to do is set the `setUsingAsyncData` to true. This way the **RadAutoCompleteTextView** will be aware of the remote data loading and will operate in a tolerant manner.

```Java
autocomplete.setUsingAsyncData(true);
adapter = new AutoCompleteAdapter(this.getContext(), new ArrayList<TokenModel>(),
        R.layout.suggestion_item_layout);
```
```C#
this.autocomplete.UsingAsyncData = true;
this.adapter = new AutoCompleteAdapter(
    this.Context, new List<TokenModel>(), Integer.ValueOf(Resource.Layout.suggestion_item_layout));
```

##Step-By-Step: Completion mode implementation

The Completion mode is the piece of code, responsible for providing filtered list with `TokenModel` objects, which is used to populate the `suggestionsView`.
By default the autocomplete supports two completion modes - `STARTS_WITH` and `CONTAINS`, differing from each other by the rule on which items are being filtered.

To plug your logic into the **RadAutoCompleteTextView** workflow you should implement custom completion mode and execute the remote request logic in it.

```Java
public Function2Async<String, List<TokenModel>, List<TokenModel>> STARTS_WITH_REMOTE
        = new Function2Async<String, List<TokenModel>, List<TokenModel>>() {
    @Override
    public void apply(String filterString, List<TokenModel> originalCollection,
                      Procedure<List<TokenModel>> callback) {
        FeedAutoCompleteTask task =
                new FeedAutoCompleteTask(callback, filterString);
        task.execute();
    }
};
```
```C#
public class StartsWithRemote : Java.Lang.Object, IFunction2Async
{
    private RadAutoCompleteTextView autocomplete;

    public StartsWithRemote(RadAutoCompleteTextView autocomplete)
    {
        this.autocomplete = autocomplete;
    }

    public void Apply(Java.Lang.Object autoCompleteText,
                      Java.Lang.Object originalCollection, IProcedure finishedCallback)
    {
        IList list = originalCollection as IList;

        if (list == null)
        {
            FeedAutoCompleteTask task = new FeedAutoCompleteTask(
                finishedCallback, (string)autoCompleteText, this.autocomplete);
            task.Execute();
        }
    }
}
```

##Step-By-Step: Remote request logic
In order to achieve a smooth behavior you will need to create a class responsible for the connection to the remote server and the processing of the request. This class should extend the `AsyncTask` class and implement the doInBackground and `onPostExecute` methods.
In the `doInBackground` method is placed the request to the server. In case the request has succeeded we are saving the response as `JSONArray`.

```Java
@Override
protected Void doInBackground(String... params) {
    HttpURLConnection urlConnection = null;
    try {
        URL url = new URL
                ("http://www.telerik.com/docs/default-source/ui-for-ios/airports.json?sfvrsn=2");

        urlConnection = (HttpURLConnection) url.openConnection();

        urlConnection.setRequestMethod("GET");
        urlConnection.setRequestProperty("Content-length", "0");
        urlConnection.setUseCaches(false);
        urlConnection.setAllowUserInteraction(false);
        urlConnection.connect();
        int status = urlConnection.getResponseCode();

        if (status == 200) {
            BufferedReader reader = new BufferedReader
                    (new InputStreamReader(urlConnection.getInputStream()));
            char[] buffer = new char[1024];
            int n;
            Writer writer = new StringWriter();

            while ((n = reader.read(buffer)) != -1) {
                writer.write(buffer, 0, n);
            }

            String json = writer.toString();

            try {
                JSONObject jObj = new JSONObject(json);
                data = jObj.getJSONArray("airports");
            } catch (JSONException ex) {
                ex.printStackTrace();
            }
        }

    } catch (IOException e) {
        Log.e("IOException", e.toString());
        e.printStackTrace();
    } finally {
        if (urlConnection != null) {
            urlConnection.disconnect();
        }
    }

    return null;
}
```
```C#
protected override Java.Lang.Void RunInBackground(params string[] @params)
{
    HttpURLConnection urlConnection = null;
    try
    {
        URL url = new URL
            ("http://www.telerik.com/docs/default-source/ui-for-ios/airports.json?sfvrsn=2");

        urlConnection = (HttpURLConnection)url.OpenConnection();

        urlConnection.RequestMethod = "GET";
        urlConnection.UseCaches = false;
        urlConnection.AllowUserInteraction = false;
        urlConnection.Connect();
        HttpStatus status = urlConnection.ResponseCode;

        if (status.Equals(HttpStatus.Ok))
        {
            BufferedReader reader = new BufferedReader
                (new InputStreamReader(urlConnection.InputStream));
            char[] buffer = new char[1024];
            int n;
            Writer writer = new Java.IO.StringWriter();

            while ((n = reader.Read(buffer)) != -1)
            {
                writer.Write(buffer, 0, n);
            }

            string json = writer.ToString();

            try
            {
                JSONObject jObj = new JSONObject(json);
                data = jObj.GetJSONArray("airports");
            }
            catch (JSONException ex)
            {
                ex.PrintStackTrace();
            }
        }

    }
    catch (Java.IO.IOException e)
    {
        e.PrintStackTrace();
    }
    finally
    {
        if (urlConnection != null)
        {
            urlConnection.Disconnect();
        }
    }

    return null;
}
```

Right after the `doInBackground` method has finished execution the `onPostExecute` callback will be triggered.
After you have obtained the suggestions, you should filter them according the user input and notify the autocomplete that the suggestion data is available.

```Java
@Override
protected void onPostExecute(Void result) {
    List<TokenModel> filtered = new ArrayList<>();
    remoteData = getTokenModelObjects(data);
    for (TokenModel item : remoteData) {
        String text = item.getText();
        if (text.toLowerCase().startsWith(filter.toLowerCase())) {
            filtered.add(item);
        }
    }
    remoteCallback.apply(filtered);
    autocomplete.resolveAfterFilter(autocomplete.getTextField().getText().toString(),
            true);

}
```
```C#
protected override void OnPostExecute(Java.Lang.Void result)
{
    ArrayList filtered = new ArrayList();
    remoteData = GetTokenModelObjects(data);
    foreach (TokenModel item in remoteData)
    {
        string text = item.Text;
        if (text.ToLower().StartsWith(filter.ToLower()))
        {
            filtered.Add(item);
        }
    }
    remoteCallback.Apply(filtered);
    autocomplete.ResolveAfterFilter(autocomplete.TextField.Text.ToString(), true);
}
```

Have in mind these few notes on the snippet above:

* Although we are performing the filtering logic in the `onPostExecute` method, it is best to be performed on the server side whenever possible.

* `getTokenModelObjects` is a helper method used to convert the raw JSONArray data to List<TokenModel>.

* The `remoteCallback` variable holds callback provided by the autocomplete which contains logic for updating the source of the adapter with the provided parameter.

* The `resolveAfterFilter` method used to notify the RadAutoCompleteTextView that the remote data is available and it should complete the cycle of showing suggestions. The second parameter is a boolean flag used by the **RadAutCompleteTextView** to make difference between manual invocation of the `resolveAfterFilter` method and invocation by the control itself. 

<b>Whenever you are using the `resolveAfterFilter` method, you should pass `true` as second parameter. The `false` value is reserved for internal invocations.</b>

##Full implementation

This is the full code for the custom completion mode and the custom aync task.

```Java
private class FeedAutoCompleteTask extends AsyncTask<String, String, Void> {
    JSONArray data;
    private Procedure<List<TokenModel>> remoteCallback;
    private String filter;

    public FeedAutoCompleteTask(Procedure<List<TokenModel>> callback, String filterString) {
        this.remoteCallback = callback;
        this.filter = filterString;
    }

    protected void onPreExecute() {

    }

    @Override
    protected Void doInBackground(String... params) {
        HttpURLConnection urlConnection = null;
        try {
            URL url = new URL
                    ("http://www.telerik.com/docs/default-source/ui-for-ios/airports.json?sfvrsn=2");

            urlConnection = (HttpURLConnection) url.openConnection();

            urlConnection.setRequestMethod("GET");
            urlConnection.setRequestProperty("Content-length", "0");
            urlConnection.setUseCaches(false);
            urlConnection.setAllowUserInteraction(false);
            urlConnection.connect();
            int status = urlConnection.getResponseCode();

            if (status == 200) {
                BufferedReader reader = new BufferedReader
                        (new InputStreamReader(urlConnection.getInputStream()));
                char[] buffer = new char[1024];
                int n;
                Writer writer = new StringWriter();

                while ((n = reader.read(buffer)) != -1) {
                    writer.write(buffer, 0, n);
                }

                String json = writer.toString();

                try {
                    JSONObject jObj = new JSONObject(json);
                    data = jObj.getJSONArray("airports");
                } catch (JSONException ex) {
                    ex.printStackTrace();
                }
            }

        } catch (IOException e) {
            Log.e("IOException", e.toString());
            e.printStackTrace();
        } finally {
            if (urlConnection != null) {
                urlConnection.disconnect();
            }
        }

        return null;
    }

    @Override
    protected void onPostExecute(Void result) {
        List<TokenModel> filtered = new ArrayList<>();
        remoteData = getTokenModelObjects(data);
        for (TokenModel item : remoteData) {
            String text = item.getText();
            if (text.toLowerCase().startsWith(filter.toLowerCase())) {
                filtered.add(item);
            }
        }
        remoteCallback.apply(filtered);
        autocomplete.resolveAfterFilter(autocomplete.getTextField().getText().toString(),
                true);

    }

}

public Function2Async<String, List<TokenModel>, List<TokenModel>> STARTS_WITH_REMOTE
        = new Function2Async<String, List<TokenModel>, List<TokenModel>>() {
    @Override
    public void apply(String filterString, List<TokenModel> originalCollection,
                      Procedure<List<TokenModel>> callback) {
        FeedAutoCompleteTask task =
                new FeedAutoCompleteTask(callback, filterString);
        task.execute();
    }
};
```
```C#
public class StartsWithRemote : Java.Lang.Object, IFunction2Async
{
    private RadAutoCompleteTextView autocomplete;

    public StartsWithRemote(RadAutoCompleteTextView autocomplete)
    {
        this.autocomplete = autocomplete;
    }

    public void Apply(Java.Lang.Object autoCompleteText,
                      Java.Lang.Object originalCollection, IProcedure finishedCallback)
    {
        IList list = originalCollection as IList;

        if (list == null)
        {
            FeedAutoCompleteTask task = new FeedAutoCompleteTask(
                finishedCallback, (string)autoCompleteText, this.autocomplete);
            task.Execute();
        }
    }
}

class FeedAutoCompleteTask : Android.OS.AsyncTask<string, string, Java.Lang.Void>
{
    JSONArray data;
    List<TokenModel> remoteData;
    private IProcedure remoteCallback;
    private string filter;
    private RadAutoCompleteTextView autocomplete;

    public FeedAutoCompleteTask(IProcedure callback, string filter, RadAutoCompleteTextView autocomplete)
    {
        this.remoteCallback = callback;
        this.filter = filter;
        this.autocomplete = autocomplete;
        this.data = new JSONArray();
    }

    protected override Java.Lang.Void RunInBackground(params string[] @params)
    {
        HttpURLConnection urlConnection = null;
        try
        {
            URL url = new URL
                ("http://www.telerik.com/docs/default-source/ui-for-ios/airports.json?sfvrsn=2");

            urlConnection = (HttpURLConnection)url.OpenConnection();

            urlConnection.RequestMethod = "GET";
            urlConnection.UseCaches = false;
            urlConnection.AllowUserInteraction = false;
            urlConnection.Connect();
            HttpStatus status = urlConnection.ResponseCode;

            if (status.Equals(HttpStatus.Ok))
            {
                BufferedReader reader = new BufferedReader
                    (new InputStreamReader(urlConnection.InputStream));
                char[] buffer = new char[1024];
                int n;
                Writer writer = new Java.IO.StringWriter();

                while ((n = reader.Read(buffer)) != -1)
                {
                    writer.Write(buffer, 0, n);
                }

                string json = writer.ToString();

                try
                {
                    JSONObject jObj = new JSONObject(json);
                    data = jObj.GetJSONArray("airports");
                }
                catch (JSONException ex)
                {
                    ex.PrintStackTrace();
                }
            }

        }
        catch (Java.IO.IOException e)
        {
            e.PrintStackTrace();
        }
        finally
        {
            if (urlConnection != null)
            {
                urlConnection.Disconnect();
            }
        }

        return null;
    }

    protected override void OnPostExecute(Java.Lang.Void result)
    {
        ArrayList filtered = new ArrayList();
        remoteData = GetTokenModelObjects(data);
        foreach (TokenModel item in remoteData)
        {
            string text = item.Text;
            if (text.ToLower().StartsWith(filter.ToLower()))
            {
                filtered.Add(item);
            }
        }
        remoteCallback.Apply(filtered);
        autocomplete.ResolveAfterFilter(autocomplete.TextField.Text.ToString(), true);
    }
```

In case you want to see this scenario in action, you should check our SDK examples repo on GitHub. You will find there this and a lot of more practicle examples with Telerik UI.

* [Android implementation](https://github.com/telerik/Android-samples/blob/release/Samples-Java/Samples/src/main/java/fragments/autocomplete/AutoCompleteLoadDataFragment.java)
* [Xamarin implementation](https://github.com/telerik/Android-samples/blob/release/Samples-Xamarin/Fragments/Autocomplete/AutoCompleteRemoteDataFragment.cs)









