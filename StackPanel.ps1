Add-Type -AssemblyName PresentationFramework


[xml]$xaml = @'
<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Name="Window" 
    Title="StackPanel" Width="750" Height="500" WindowStartupLocation="CenterScreen">
    
    <StackPanel Width="75" Height="75">
        <Button Content="Button(1)" />
        <Button Content="Button(2)" />
        <Button Content="Button(3)" />
    </StackPanel>


</Window>
'@

$window = [System.Windows.Markup.XamlReader]::Load( [System.Xml.XmlNodeReader]$xaml)
$window.ShowDialog()