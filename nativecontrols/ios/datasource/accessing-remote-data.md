---
title: Accessing remote data
page_title: Accessing remote data
position: 6
---

## DataSource for Xamarin.iOS: Accessing remote data

With TLKDataSource it is easy to utilize data coming from remote sources, for example web services. To do this you should call the <code>LoadDataFromURL</code> method like demonstrated below:

<snippet id='remote-data'/>

<snippet id='remote-data-swift'/>

```C#
var chart = new TKChart (this.View.Bounds);
chart.AutoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight;
this.View.Add (chart);
        
string url = "http://www.telerik.com/docs/default-source/ui-for-ios/weather.json?sfvrsn=2";
dataSource.LoadDataFromURL (url, TKDataSourceDataFormat.JSON, "dayList", (NSError err) => {
    if (err != null) {
        Console.WriteLine("Can't connect with the server!");
        return;
    }

    dataSource.Settings.Chart.CreateSeries((TKDataSourceGroup group) => {
        TKChartSeries series = null;
        if (group.ValueKey == "clouds") {
            series = new TKChartColumnSeries();
            series.YAxis = new TKChartNumericAxis(NSObject.FromObject(0), NSObject.FromObject(100));
            series.YAxis.Title = "clouds";
            series.YAxis.Style.TitleStyle.RotationAngle = (float)Math.PI/2.0f;
        }
        else {
            series = new TKChartLineSeries();
            series.YAxis = new TKChartNumericAxis(NSObject.FromObject(-10), NSObject.FromObject(30));
            if (group.ValueKey == "temp.min") {
                series.YAxis.Position = TKChartAxisPosition.Right;
                series.YAxis.Title = "temperature";
                series.YAxis.Style.TitleStyle.RotationAngle = (float)Math.PI/2.0f;
                chart.AddAxis(series.YAxis);
            }
        }
        return series;
    });

    dataSource.Map((NSObject item) => {
        double interval = ((NSNumber)item.ValueForKey(new NSString("dateTime"))).DoubleValue;
        NSDate date = NSDate.FromTimeIntervalSince1970(interval);
        item.SetValueForKey(date, new NSString("dateTime"));
        return item;
    });

    NSObject[] items = this.dataSource.Items;
    NSMutableArray newItems = new NSMutableArray();
    newItems.Add(new TKDataSourceGroup(items, "clouds", "dateTime"));
    newItems.Add(new TKDataSourceGroup(items, "temp.min", "dateTime"));
    newItems.Add(new TKDataSourceGroup(items, "temp.max", "dateTime"));
    dataSource.ItemSource = newItems;

    chart.DataSource = dataSource;

    var formatter = new NSDateFormatter();
    formatter.DateFormat = "dd";
    TKChartDateTimeAxis xAxis = (TKChartDateTimeAxis)chart.XAxis;
    xAxis.MajorTickInterval = 1;
    xAxis.PlotMode = TKChartAxisPlotMode.BetweenTicks;
    xAxis.LabelFormatter = formatter;
    xAxis.Title = "date";
    xAxis.MinorTickIntervalUnit = TKChartDateTimeAxisIntervalUnit.Days;
});
```

The code above downloads a JSON formatted data from the specified web service, sets the ValueKey property and presents the result in TKChart.

## Authenticating

In some cases the data coming from a remote source is protected. In such scenarios you should inherit a class from TLKDataSource and override the appropriate NSURLConnectionDelegate method. TLKDataSource supports all authentication modes supported by NSURLConnection. Further information about authentication modes is available in [Apple documentation](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/URLLoadingSystem/Articles/AuthenticationChallenges.html#//apple_ref/doc/uid/TP40009507-SW1).

The following code demonstrates the usage of basic authentication with TLKDataSource:

<snippet id='remote-auth'/>

<snippet id='remote-auth-swift'/>

```C#
public class DataSourceDocsAuth : TLKDataSource
{
    public DataSourceDocsAuth ()
    {
    }
    public class MyDataSource: TLKDataSource
    {
        [Export ("connection:didReceiveAuthenticationChallenge:")]
        public void ReceivedAuthenticationChallenge (NSUrlConnection connection, NSUrlAuthenticationChallenge challenge) 
        {
            if (challenge.PreviousFailureCount == 0) {
                var credential = new NSUrlCredential ("USER", "PASSWORD", NSUrlCredentialPersistence.ForSession);
                challenge.Sender.UseCredential (credential, challenge);
            }
            else {
                Console.WriteLine("previous authentication failure");
            }
        }
    }
}
```
