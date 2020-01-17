$Ports  = cat ./data/ports.txt
$ALLIP = cat ./data/allip.txt 


ForEach($ip in $Allip){
Foreach ($P in $Ports){
ping -n 1 $ip
tracert -d $ip
telnet $ip $P
}
echo ========================================
}
