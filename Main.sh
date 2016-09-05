
cp -r ../Source Output

cd ../markdown-snippet-injector
call npm install

node . --root=../Xamarin-Forms/Examples/XamarinForms --docsroot=Output --sourceext=".cs|.xaml" --snippettitles="C#|XAML"

cd ../Xamarin-Forms-docs
