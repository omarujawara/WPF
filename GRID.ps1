Add-Type -AssemblyName PresentationFramework


[xml]$xaml = @'
<Window
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    x:Name="Window" 
    Title="Main Window" Width="750" Height="500" WindowStartupLocation="CenterScreen">
    

    <Grid ShowGridLines="True">
        <Grid.ColumnDefinitions>
            <ColumnDefinition />
            <ColumnDefinition />
        </Grid.ColumnDefinitions>

        <Grid.RowDefinitions>
            <RowDefinition />
            <RowDefinition />
        </Grid.RowDefinitions>

        <Label Content="Row 1, Column 1" 
        Grid.Row="0" Grid.Column="0" />

        <Label Content="Row 1, Column 2" 
        Grid.Row="0" Grid.Column="1" />

        <Label Content="Row 2, Column 1" 
        Grid.Row="1" Grid.Column="0" />

        <Label Content="Row 2, Column 2" 
        Grid.Row="1" Grid.Column="1" />

    </Grid>

</Window>
'@

$window = [System.Windows.Markup.XamlReader]::Load( [System.Xml.XmlNodeReader]$xaml)
$window.ShowDialog()