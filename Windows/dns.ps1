param (
    [string]$arg
)

switch ($arg) {
    "google" {
        Write-Host "google" -ForegroundColor Magenta
        Set-DnsClientServerAddress -InterfaceAlias "Wi-Fi" -ServerAddresses ("8.8.8.8", "8.8.4.4")
        ipconfig /flushdns
    }
    "shecan" {
        Write-Host "shekan" -ForegroundColor Green
        Set-DnsClientServerAddress -InterfaceAlias "Wi-Fi" -ServerAddresses ("178.22.122.100", "185.51.200.2")
        ipconfig /flushdns
    }
    "403" {
        Write-Host "403" -ForegroundColor Blue
        Set-DnsClientServerAddress -InterfaceAlias "Wi-Fi" -ServerAddresses ("10.202.10.202", "10.202.10.102")
        ipconfig /flushdns
    }
    "clear" {
   	    Write-Host "clear" -ForegroundColor Red
    	Set-DnsClientServerAddress -InterfaceAlias "Wi-Fi" -ResetServerAddresses
	    ipconfig /flushdns
    }
    default {
        Write-Host "Invalid argument. Usage: dns.ps1 [403|shekan|google|clear]"
    }
}
