Add-Type -AssemblyName PresentationFramework


[xml]$xaml = @'
<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Name="Window" 
    Title="DockPanel" Width="750" Height="500" WindowStartupLocation="CenterScreen">
    
    <DockPanel>

        <Label Height="50" Background="Gainsboro" DockPanel.Dock="Top" />
        <StackPanel Background="LightBlue" Width="250" DockPanel.Dock="Left" /> 
        <ComboBox Margin="5" DockPanel.Dock="Top" />
        <StackPanel Height="30" Orientation="Horizontal" DockPanel.Dock="Bottom" FlowDirection="RightToLeft">
            <Button Content="Exit" Width="50" Margin="5" />
            <Button Content="Cancel" Width="50" Margin="5" />
            <Button Content="Ok" Width="50" Margin="5" />
        </StackPanel>
        <Label Background="LightCoral" DockPanel.Dock="Top" />
    
    </DockPanel>


</Window>
'@

$window = [System.Windows.Markup.XamlReader]::Load( [System.Xml.XmlNodeReader]$xaml)
$window.ShowDialog()