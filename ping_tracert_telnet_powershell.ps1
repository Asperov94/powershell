$Ports  = cat ports.txt
$ALLIP = cat allip.txt 


ForEach($ip in $Allip){
Foreach ($P in $Ports){
ping -n 1 $ip
tracert -d $ip
telnet $ip $P
}
echo ========================================
}
