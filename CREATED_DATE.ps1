Echo Дата создания 
Echo Введите год ГГГГ:
$date_YYYY= Read-Host
Echo Введите месяц мм:
$date_MM= Read-Host
Echo Введите день дд:
$date_DD= Read-Host

$date = Get-Date -Day $date_DD -Month $date_MM -Year $date_YYYY -Hour 12 -Minute 01

dir 'C:\Users\Root\Desktop\Изменение Файла\' -file | sort -property name | %{$_.CreationTime = $date}