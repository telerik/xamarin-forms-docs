---
title: Storage (S3) 
page_title: Storage (S3) 
description: Storage (S3)
slug: cloud-services/aws/storage
tags: cloud,aws,storage
published: True
position: 3
---

# Storage (S3) 

The **Amazon Simple Storage Service** (Amazon S3) is a storage service that allows you to upload any kind of data at any time, from anywhere. This article will demonstrate how one can use this service from a Xamarin application. More specifically, the example shows how to upload an image from the device's library to the **Amazon S3 Storage** client. 

We are going to use the [Media Plugin for Xamarin and Windows](https://github.com/jamesmontemagno/MediaPlugin) to easily access the device's libraries on the different platforms. Please check the documentation of the plugin and perform the required steps in the [Important Permission Information](https://github.com/jamesmontemagno/MediaPlugin#important-permission-information) section in order to use the functionality in the different platforms.

## Step 1: Create the XAML layout

We are going to use the following controls from the Telerik UI for Xamarin suite in order to create the layout which will be a simple view regarding a user of our application - [RadBorder]({%slug border-overview%}), [RadDataForm]({%slug dataform-overview%}), [RadButton]({%slug button-overview%}).

#### **[XAML] Example 1: Defining the view**

	<ContentPage xmlns="http://xamarin.com/schemas/2014/forms"
	             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
	             xmlns:local="clr-namespace:S3sample.Portable"
	             xmlns:input="clr-namespace:Telerik.XamarinForms.Input;assembly=Telerik.XamarinForms.Input"
	             xmlns:primitives="clr-namespace:Telerik.XamarinForms.Primitives;assembly=Telerik.XamarinForms.Primitives"
	             x:Class="S3sample.Portable.StartPage">
	    <Grid>
	        <Grid.Resources>
	            <ResourceDictionary>
	                <local:ImageSourceConverter x:Key="ImageSourceConverter"/>
	            </ResourceDictionary>
	        </Grid.Resources>
	        <Grid.RowDefinitions>
	            <RowDefinition Height="200"/>
	            <RowDefinition />
	            <RowDefinition Height="50"/>
	        </Grid.RowDefinitions>
	        <primitives:RadBorder BackgroundColor="LightGreen">
	            <Image Source="{Binding User.ImageSource, Converter={StaticResource ImageSourceConverter}}" 
	                   x:Name="userImage"/>
	        </primitives:RadBorder>
	        <input:RadDataForm x:Name="dataForm" 
	                           Grid.Row="1"/>
	        <input:RadButton x:Name="upload_button" 
	                        Clicked="btn_Clicked" 
	                        Text="Upload Picture" 
	                        Grid.Row="2"/>
	    </Grid>
	</ContentPage>

The **ImageSourceConverter** is defined as follows:

    public class ImageSourceConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null)
            {
                return string.Empty;
            }

            if (Device.RuntimePlatform == Device.UWP)
            {
                return "Assets/" + value;
            }

            if (Device.RuntimePlatform == Device.iOS)
            {
                return ((string)value).Replace(".png", string.Empty);
            }
            return value;
        }
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

## Step 2: Install the NuGet package

Open the NuGet Package Manager and install the **AWSSDK.S3** package.

![aws-storage-nuget](images/awssdk_nugetpackage.png)

> If you do not have an AWS account in Visual Studio, please check the [Getting Started]({%slug cloud-services/aws/getting-started%}) article.

## Step 3: Create a new bucket

Before proceeding with the example you will have to create a new bucket using the AWS Management Console. You can learn how to do that in the [Creating a Bucket](https://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html) article.

## Step 4: Define the ViewModel

The next step is to create the ViewModel. It will need an [IAmazonS3](https://docs.aws.amazon.com/sdkfornet/latest/apidocs/items/TS3IS3NET45.html) client object which will be used for managing the data. 

#### __[C#] Example 2: Defining the ViewModel__

    internal class ViewModel : NotifyPropertyChangedBase
    {
        private User user;
        public User User
        {
            get { return this.user; }
            set
            {
                this.user = value;
                this.OnPropertyChanged();
            }
        }

        public ViewModel()
        {
            this.User = new User();
        }
    }

And here is how the **User** class is defined:

#### __[C#] Example 3: Defining the User business object__

	public class User : NotifyPropertyChangedBase
    {
        string name = "David";
        double weight = 75.5;
        int height = 178;
        int age = 27;
        private string imageSource = "user_image.png";

        [Ignore]
        public string ImageSource
        {
            get
            {
                return this.imageSource;
            }
            set
            {
                this.imageSource = value;
                OnPropertyChanged();
            }
        }

        [DisplayOptions(Header = "Name")]
        public string Name
        {
            get { return this.name; }
            set
            {
                if (value != this.name)
                {
                    this.name = value;
                    OnPropertyChanged();
                }
            }
        }

        [DisplayOptions(Header = "Age")]
        public int Age
        {
            get { return this.age; }
            set
            {
                if (value != this.age)
                {
                    this.age = value;
                    OnPropertyChanged();
                }
            }
        }

        [DisplayOptions(Header = "Weight (kg)")]
        public double Weight
        {
            get { return this.weight; }
            set
            {
                if (value != this.weight)
                {
                    this.weight = value;
                    OnPropertyChanged();
                }
            }
        }

        [DisplayOptions(Header = "Height (cm)")]
        public int Height
        {
            get { return this.height; }
            set
            {
                if (value != this.height)
                {
                    this.height = value;
                    OnPropertyChanged();
                }
            }
        }
    }
Here is how the page looks at this point:

![dataform S3 storage](images/amazon_s3storage.png)

Now that we have defined the **User** model and the **ViewModel** for our application, let's proceed with setting up the connection to the **S3 Service** as well as registering the editors for the RadDataForm used to show the information for the user. Here is how to do this in the code-behind of the page:

		public TransferUtility s3transferUtility;
        IAmazonS3 s3client;
        public StartPage()
        {
            InitializeComponent();
            this.BindingContext = new ViewModel();
            (this.dataForm as RadDataForm).Source = new User();
            this.dataForm.RegisterEditor(nameof(User.Age), EditorType.IntegerEditor);
            this.dataForm.RegisterEditor(nameof(User.Name), EditorType.TextEditor);
            this.dataForm.RegisterEditor(nameof(User.Weight), EditorType.DecimalEditor);
            this.dataForm.RegisterEditor(nameof(User.Height), EditorType.IntegerEditor);
            setupAWSCredentials();
        }

        public void setupAWSCredentials()
        {

            this.s3client = new AmazonS3Client("your awsAccessKeyId", "your awsSecretKeyId", RegionEndpoint.USEast1);
            var config = new AmazonS3Config() { RegionEndpoint = Amazon.RegionEndpoint.USEast1, Timeout = TimeSpan.FromSeconds(30), UseHttp = true };

            AWSConfigsS3.UseSignatureVersion4 = true;
            this.s3transferUtility = new TransferUtility(s3client);
        } 

We are going to set the following logic in the event handler of the **RadButton** in order to add the functionality to change the profile picture of the User and upload this picture to the S3 storage:

		private async void btn_Clicked(object sender, EventArgs e)
        {
            var media = CrossMedia.Current;
            var file = await media.PickPhotoAsync();

            try
            {
                TransferUtilityUploadRequest request =
                    new TransferUtilityUploadRequest
                    {
                        BucketName = "justmybucket",
                        FilePath = file.Path,
                        Key = string.Format("Login Picture"),
                        ContentType = "image/png"
                    };
				
				//The cancellationToken is not used within this example, however you can pass it to the UploadAsync consutructor as well
                CancellationToken cancellationToken = new CancellationToken();

                await this.s3transferUtility.UploadAsync(request).ContinueWith(((x) =>
                {
                    Debug.WriteLine("Image Uploaded");
                }));
            }
            catch (Exception)
            {
                throw;
            }
          
            userImage.Source = ImageSource.FromStream(() => {
                var stream = file.GetStream();
                file.Dispose();
                return stream;
            });
        }

Clicking on the button will allow you to choose another picture from the device's storage which is set as the picture of the user and uploaded to the bucket you have previously created. 

# See Also

* [DynamoDB]({%slug cloud-services/aws/dynamodb%})
* [Getting started with Amazon S3 Storage](https://aws.amazon.com/s3/getting-started/)
* [Working with Amazon S3 Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html)
