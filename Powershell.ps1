$Ports  = cat ports.txt
$ALLIP = cat allip.txt 

ForEach($IP in $ALLIP){
Foreach ($P in $Ports){
$check=Test-NetConnection $IP -Port $P -WarningAction SilentlyContinue
If ($check.tcpTestSucceeded -eq $true)
{Write-Host $IP.name $P -ForegroundColor Green -Separator "$IP OK => "}
else
{Write-Host $IP.name $P -Separator "$IP NOOO => " -ForegroundColor Red} #ping_tracert_telnet
}
echo ========================================
}