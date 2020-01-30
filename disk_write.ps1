$Results = Get-Disk | Where-Object BusType -eq USB | Out-GridView -Title 'Select USB Drive to Format' -OutputMode Single | Clear-Disk -RemoveData -RemoveOEM -Confirm:$false -PassThru | New-Partition -UseMaximumSize -IsActive -AssignDriveLetter | Format-Volume -FileSystem FAT32 ; $Volumes = (Get-Volume).Where({$_.DriveLetter}).DriveLetter
Mount-DiskImage -ImagePath D:\�����������_�����.ISO
$ISO = (Compare-Object -ReferenceObject $Volumes -DifferenceObject (Get-Volume).Where({$_.DriveLetter}).DriveLetter).InputObject