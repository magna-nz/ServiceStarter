#populate the service names here
$services = @("SNMP Trap");

#
foreach ($service in $services)
{
    $serviceObject = Get-Service $service

    if ($serviceObject.Status -eq 'Stopped')
    {
        Start-Service $service
        Write-Host "Started service: "$service -ForegroundColor Green
    }
    else
    {
        Write-Host $service " is already running" -ForegroundColor Magenta
    }
}