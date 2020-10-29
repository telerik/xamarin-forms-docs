---
title: Overview
page_title: TKDataSource Overview
slug: ios-datasource-overview
position: 1
---

## DataSource for Xamarin.iOS: Overview


DataSource for Xamarin.iOS is a non-visual component that consumes data from various sources. It supports data shaping operations like sorting, filtering and grouping. It adopts the most used data enabled UI controls in iOS: UITableView and UICollectionView to automate the presentation of its data. TLKDataSource works perfectly with TKListView, TKChart and TKCalendar too.

<img width="500" src="../images/datasource-getting-started001.png"/>

**Consuming data**

TLKDataSource can consume various data types: simple arrays, arrays with business objects and dictionaries coming from various sources. Its easy to use API allows loading data from files and web services. 

**Data shaping operations**

TLKDataSource supports the following data shaping operations:

- sorting
- filtering
- grouping

For your convenience TLKDataSource provides three different APIs for data shaping operations.

**Presenting data**

TLKDataSource can present data by using the following UI controls:

- TKListView
- TKChart
- TKCalendar
- UITableView
- UICollectionView

You can use TLKDataSource to present the same data in different UI controls at the same time. In this scenario TLKDataSource syncs the current item in the presented controls.
