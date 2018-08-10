---
title: Text Analysis
page_title: Text Analysis
description: Text Analysis
slug: cloud-integration-cognitive-services-text-analysis
tags: cloud,integration,azure,cognitive,services,text,analysis
published: True
position: 2
---

# Text Analysis

&nbsp;

This article will guide you through the process of integrating Azure's [Text Analytics API](https://azure.microsoft.com/en-us/services/cognitive-services/text-analytics/) with the controls from the **Telerik UI for Xamarin** suite. More specifically, we are going to use the **RadButton**, **RadEntry** and **RadHorizontalLinearGauge** controls in a page which can be used to determine whether the text which is entered is in English or not as well as analyze its sentiment. The more positive the input message is - the closer the result will be to 100 on the Gauge scale. 

## Create a Text Analytics API Account

Before you start, you need to create a new Text Analytics API account through the Azure portal. This has been explained in great detail in [this article](https://docs.microsoft.com/en-us/azure/cognitive-services/cognitive-services-apis-create-account).

![Azure Resource Selection](images/create-text-analytics-resource.png)

Once you've created the account, you have to obtain the subscription keys that have been generated for you. You will require them later on in order to make API calls from your application.

## Create the Application

Once you have activated the Text Analytics service, you can proceed with creating a new Xamarin.Forms application. We are going to use the following page for the purposes of the example:

```XML
<ContentPage xmlns="http://xamarin.com/schemas/2014/forms"
	     xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
	     xmlns:local="clr-namespace:AzureXamarin"
	     xmlns:telerikInput="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
	     xmlns:telerikGauges="clr-namespace:Telerik.XamarinForms.DataVisualization.Gauges;assembly=Telerik.XamarinForms.DataVisualization"
	     xmlns:telerikCommon="clr-namespace:Telerik.XamarinForms.Common;assembly=Telerik.XamarinForms.Common"
	     x:Class="AzureXamarin.MainPage">
    <StackLayout Padding="20" Margin="0,40,0,0">
		<telerikInput:RadEntry x:Name="entry" 
				       WatermarkText="Text to analyze..."/>
		<telerikInput:RadButton Text="Analyze"
					BorderRadius="10"
					BorderColor="Red"
					BorderThickness="2"
					x:Name="btn"/>
		<telerikGauges:RadHorizontalGauge x:Name="gauge">
			<telerikGauges:RadHorizontalGauge.Axis>
				<telerikGauges:GaugeLinearAxis Maximum="100" 
							       Minimum="0" 
							       Step="20"/>
			</telerikGauges:RadHorizontalGauge.Axis>
			<telerikGauges:RadHorizontalGauge.Indicators>
				<telerikGauges:GaugeShapeIndicator Value="{Binding Confidence}" />
			</telerikGauges:RadHorizontalGauge.Indicators>
			<telerikGauges:RadHorizontalGauge.Ranges>
				<telerikGauges:GaugeRangesDefinition>
					<telerikGauges:GaugeRange Color="Green" 
								  From="0" 
								  To="80" />
					<telerikGauges:GaugeGradientRange From="80" 
									  To="100">
						<telerikCommon:RadGradientStop Offset="80" 
									       Color="Yellow" />
						<telerikCommon:RadGradientStop Offset="100" 
									       Color="Red" />
					</telerikGauges:GaugeGradientRange>
				</telerikGauges:GaugeRangesDefinition>
			</telerikGauges:RadHorizontalGauge.Ranges>
		</telerikGauges:RadHorizontalGauge>
    </StackLayout>
</ContentPage>
```

## Add the Microsoft.Azure.CognitiveServices.Language NuGet Package

You can now add the **Microsoft.Azure.CognitiveServices.Language.TextAnalytics** NuGet package which provides access to the Microsoft Cognitive Services Language APIs.

![Add the Microsoft.Azure.CognitiveServices.Language NuGet Package](images/text-analytics-nuget-01.png)

>note At the time of writing this article, the package is in preview, be sure to check "Include prerelease" to get a search result.

## Using the Text Analytics API

The following code snippet shows the code-behind of the previously created page where the Text Analytics API is used:

```C#
public partial class MainPage : ContentPage, INotifyPropertyChanged
{
	
	const string subscriptionKey = "your subscription key";
	private ITextAnalyticsAPI client;
	public MainPage()
	{
		InitializeComponent();
		this.BindingContext = this;

		client = new TextAnalyticsAPI();
		client.AzureRegion = AzureRegions.Eastus2;
		client.SubscriptionKey = subscriptionKey;

		btn.Clicked += Btn_ClickedAsync;
	}


	private double confidence;

	public double Confidence
	{
		get { return confidence; }
		set
		{
			this.confidence = value;
			this.NotifyPropertyChanged();
		}
	}

	private async Task<double?> MakeAnalysisRequest(string text)
	{
		LanguageBatchResult languageResult = await client.DetectLanguageAsync(
				new BatchInput(
					new List<Input>()
					{
						new Input("1", text)
					}));

		var language = languageResult.Documents.First().DetectedLanguages.First();

		SentimentBatchResult sentimentResult = await client.SentimentAsync(
			new MultiLanguageBatchInput(new List<MultiLanguageInput>()
			{
				new MultiLanguageInput(language.Iso6391Name, "1", text)
			}));

		var sentiment = sentimentResult.Documents.First();

		return (language.Score + sentiment.Score) / 2;
	}

	private async void Btn_ClickedAsync(object sender, EventArgs e)
	{
		var result = await MakeAnalysisRequest(entry.Text);
		this.Confidence = (double)(result * 100);
	}

	public event PropertyChangedEventHandler PropertyChanged;

	private void NotifyPropertyChanged([CallerMemberName] String propertyName = "")
	{
		if (PropertyChanged != null)
		{
			PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
```

>note Make sure you use the correct region for **client.AzureRegion**. You'll get an unauthorized exception returned from the API if your service is not located in the defined region. You can find where your service is located in the Overview blade:

![Azure Region](images/text-analytics-azure-region.png)


Running the application and typing something positive in English should give you a confidence level close to 100. Here is  the actual result:

![UWP Result](images/text_analyze_api_uwp.png)

## See Also

* [Text Translation]({%slug cloud-integration-text-translation-azure%})
* [Blob Storage]({%slug cloud-integration-azure-blob-storage%})
* [SQL Database]({%slug cloud-integration-azure-sql-database%}) 
* [Cosmos DB]({%slug cloud-integration-cosmosdb%})
