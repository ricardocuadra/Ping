$ping = New-Object System.Net.NetworkInformation.Ping
$a = Get-NetAdapter  
$i = 0 
$datorer =1..255
foreach($dator in $datorer) { $ip = "10.130.196.$dator"  
$Res = $ping.send($ip) 
 
if ($Res.Status -eq "Success") 
{ 
$dnamn =[Net.DNS]::GetHostEntry($ip)
$result = $ip + " = $dnamn" 
Write-Host $result 
 
$i++ 
 
} 
 
 
}  
$Hosts = [string]$ip + " Hosts is pingable" 
Write-Host $Hosts 