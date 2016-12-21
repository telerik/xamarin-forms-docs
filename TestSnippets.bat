@echo off
SET SOURCEDIR=C:\work\GitHub\Xamarin-forms\Examples\XamarinForms\SDKBrowser
REM rd /s /q
REM robocopy ../Source Output /s /e

REM rd /s /q markdown-snippet-injector
REM   git clone https://github.com/NativeScript/markdown-snippet-injector.git

cd markdown-snippet-injector
REM call npm install

node . --root=%SOURCEDIR% --docsroot=Output --sourceext=".cs|.xaml" --snippettitles="C#|XAML"

cd ..
