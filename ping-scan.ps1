# Ping-Scan Tool
# Author: Thomas Kuglin
# Description: Prüft einen IP-Bereich auf erreichbare Hosts.

$network ="192.168.2"
$startIP = 1
$endIP = 20

Write-Host "Starte Ping-Scan für $network.$startIP bis $network.$endIP" -ForegroundColor Cyan

for ($i = $startIP; $i -le $endIP; $i++) {
    $ip = "$network.$i"
    if (Test-Connection -ComputerName $ip -Count 1 -Quiet) {
        Write-Host "$ip ist erreichbar" -ForegroundColor Green
    }
    else {
        Write-Host "$ip ist nicht erreichbar" -ForegroundColor Red
    }
}