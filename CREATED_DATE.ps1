Echo ���� �������� 
Echo ������� ��� ����:
$date_YYYY= Read-Host
Echo ������� ����� ��:
$date_MM= Read-Host
Echo ������� ���� ��:
$date_DD= Read-Host

$date = Get-Date -Day $date_DD -Month $date_MM -Year $date_YYYY -Hour 12 -Minute 01

dir 'C:\Users\Root\Desktop\��������� �����\' -file | sort -property name | %{$_.CreationTime = $date}