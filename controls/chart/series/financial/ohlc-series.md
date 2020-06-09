---
title: Ohlc Series
page_title: Xamarin Chart Documentation | Ohlc Series
slug: chart-series-ohlc-series
description: Check our &quot;Ohlc Series&quot; documentation article for Telerik Chart for Xamarin control.
position: 0
---

# Ohlc Series

## Overview

**RadCartesianChart** visualizes each data point from the **OhlcSeries** as a line with open and close value indicators on its side. This is a typical financial series that can be used to visualize the state of a market for a period of time. The series operates with a special kind of data in the form of four parameters defining the stock market - **open**, **high**, **low**, and **close**. The high and low values show the price range (the highest and lowest prices) over one unit of time. The open and close values indicate the opening and closing price of the stock for the corresponding period

## Example

Here is an example of how to create a basic RadCartesianChart with OhlcSeries in XAML and C#:

<snippet id='chart-series-ohlc-xaml'/>
<snippet id='chart-series-ohlc-csharp'/> 

Add the following namespace:

<snippet id='xmlns-telerikchart'/>

Here is how the business model is defined:

<snippet id='chart-ohlc-datapoint-csharp'/>

And here is the result:

![Basic OhlcSeries](images/ohlc_series.png)

>important **SDK Browser** application contains an example that shows how to use the OhlcSeries. You can find the application in the **Examples** folder of your local **Telerik UI for Xamarin** installation.

## See Also

- [Candlestick Series Overview]({%slug chart-series-candlestick-series%})
- [Financial Indicators]({%slug chart-series-financial-indicators%})
