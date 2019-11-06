####Get the wallpaper
$url = "https://staticr1.blastingcdn.com/media/photogallery/2019/4/1/660x290/b_1200x680/el-risitas-se-ha-convertido-en-un-meme-a-nivel-internacional_2239269.jpg"
$output = "$env:temp\risihack.jpg"
(New-Object System.Net.WebClient).DownloadFile($url, $output)

####Set Wallpaper
$setwallpapersrc = @"
using System.Runtime.InteropServices;
public class wallpaper
{
public const int SetDesktopWallpaper = 20;
public const int UpdateIniFile = 0x01;
public const int SendWinIniChange = 0x02;
[DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Auto)]
private static extern int SystemParametersInfo (int uAction, int uParam, string lpvParam, int fuWinIni);
public static void SetWallpaper ( string path )
{
SystemParametersInfo( SetDesktopWallpaper, 0, path, UpdateIniFile | SendWinIniChange );
}
}
"@
Add-Type -TypeDefinition $setwallpapersrc
[wallpaper]::SetWallpaper($output)
