param (
    [string]$arg
)

switch ($arg) {
    "shecan" {
        Write-Host "shecan" -ForegroundColor Green
        Set-DnsClientServerAddress -InterfaceAlias "Wi-Fi" -ServerAddresses ("178.22.122.100", "185.51.200.2")
    }
    "403" {
        Write-Host "403" -ForegroundColor Blue
        Set-DnsClientServerAddress -InterfaceAlias "Wi-Fi" -ServerAddresses ("10.202.10.202", "10.202.10.102")
    }
    "clear" {
   	 Write-Host "clear" -ForegroundColor Red
    	Set-DnsClientServerAddress -InterfaceAlias "Wi-Fi" -ResetServerAddresses
    }
    default {
        Write-Host "Invalid argument. Usage: dns.ps1 [403|shecan|clear]"
    }
}
