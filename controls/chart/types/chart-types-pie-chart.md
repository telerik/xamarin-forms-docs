---
title: Pie Chart
position: 2
slug: chart-types-pie-chart
---
# RadPieChart #
The **RadPieChart**  visualizes its data points using radial coordinate system. Each data point is represented as a slice from a pie. The ratio between the space consumed by each slice and the space consumed by the whole chart is the same as the ratio between the value of the data point that it represents and the total value of all data points in the series.

![Pie Chart](pie-chart-example.png)
## Supported Series ##
**RadPieChart** can visualize the following types of series:

- **PieSeries**: The PieSeries are used to visualize a single series of data in a pie chart. The sweep of a pie's slices is directly proportional to the magnitude of the data points' values.
## Example ##
1. Define RadPieChart:  
	
		XAML definition:
		<telerikChart:RadPieChart>
		</telerikChart:RadPieChart>

		C# definition:
		var chart = new RadPieChart();

1. After that you can add the series to the RadPieChart.Series collection:

		XAML definition:
		<telerikChart:RadPieChart.Series>
		  <telerikChart:PieSeries ItemsSource="{Binding Data}">
		    <telerikChart:PieSeries.ValueBinding>
		      <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		    </telerikChart:PieSeries.ValueBinding>
		  </telerikChart:PieSeries>
		</telerikChart:RadPieChart.Series>


		C# definition:
		var series = new PieSeries();
		series.SetBinding(PieSeries.ItemsSourceProperty, new Binding("Data"));
		series.ValueBinding = new PropertyNameDataPointBinding("Value");
		chart.Series.Add(series);
1. You also have to set a BindingContext of the chart if none of its parents have a context:
 
		XAML definition:
		<telerikChart:RadPieChart.BindingContext>
		  <local:ViewModel/>
		</telerikChart:RadPieChart.BindingContext>

		C# definition:
		chart.BindingContext = new ViewModel();

Here is the full definition of the chart:

	<telerikChart:RadPieChart>
	  <telerikChart:RadPieChart.BindingContext>
	    <local:ViewModel/>
	  </telerikChart:RadPieChart.BindingContext>
	  <telerikChart:RadPieChart.Series>
	    <telerikChart:PieSeries ItemsSource="{Binding Data}">
	      <telerikChart:PieSeries.ValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
	      </telerikChart:PieSeries.ValueBinding>
	    </telerikChart:PieSeries>
	  </telerikChart:RadPieChart.Series>
	</telerikChart:RadPieChart>

And this is the sample data

	public class Data
	{		
	    public double Value { get; set; }
	}

	public class ViewModel
	{
	    public ViewModel()
	    {
	        this.Data = GetData();
	    }
	
	    public ObservableCollection<Data> Data { get; set; }
	
	    public static ObservableCollection<Data> GetData()
	    {
	        var data = new ObservableCollection<Data>
	        {
	            new Data { Value = 0.63 },
	            new Data { Value = 0.85 },
	            new Data { Value = 0.75 },
	            new Data { Value = 0.96 },
	            new Data { Value = 0.78 },
	        };
	
	        return data;
	    }
	}
