
cp -r ../Source Output

REM rd /s /q markdown-snippet-injector
REM   git clone https://github.com/NativeScript/markdown-snippet-injector.git

cd ../markdown-snippet-injector
call npm install

node . --root=../Xamarin-Forms/Examples/XamarinForms --docsroot=Output --sourceext=".cs|.xaml" --snippettitles="C#|XAML"

cd ../Xamarin-Forms-docs
bash deploy.sh