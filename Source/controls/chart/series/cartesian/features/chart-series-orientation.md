---
title: Categorical Series Orientation
page_title: Categorical Series Orientation
slug: chart-series-orientation
---
# CartegoricalSeries Orientation #

The orientation of the series depends on which chart axis is horizontal and which one is vertical. Here is an example where the CategoricalAxis is vertical and the BarSeries are displayed horizontally.

![Horizontal BarSeries](images/chart-series-features-horizontal-series.png)

	var chart = new RadCartesianChart
	{
	    HorizontalAxis = new NumericalAxis(),
	    VerticalAxis = new CategoricalAxis(),
	    BindingContext = new CategoricalViewModel()
	};
	
	var series = new BarSeries();
	series.SetBinding(BarSeries.ItemsSourceProperty, new Binding("CategoricalData"));   
	series.ValueBinding = new PropertyNameDataPointBinding("Value");
	series.CategoryBinding = new PropertyNameDataPointBinding("Category");
	
	chart.Series.Add(series);



And here is the sample data:

	public class CategoricalData
	{
	    public object Category { get; set; }
	
	    public double Value { get; set; }
	}
	public class CategoricalViewModel
	{
	    private static Random random = new Random();
	    private static string[] categories = new string[] { "Greenings", "Perfecto", "NearBy", "Family", "Fresh" };
	
	    public CategoricalViewModel()
	    {
	        this.CategoricalData = GetCategoricalData();
	    }
	
	    public ObservableCollection<CategoricalData> CategoricalData { get; set; }
	        
	    public static ObservableCollection<CategoricalData> GetCategoricalData()
	    {
	        var data = new ObservableCollection<CategoricalData>();
	        for (int i = 0; i < categories.Length; i++)
	        {
	            data.Add(new CategoricalData() { Value = random.Next(50, 100), Category = categories[i] });
	        }
	
	        return data;
	    }
	}



