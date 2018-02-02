Add-PSSnapin Microsoft.Sharepoint.Powershell –EA 0
$path =  "C:\Users\Administrator\Documents\visual studio 2015\Projects\SerwisPrasowy\SerwisPrasowy\bin\Debug\SerwisPrasowy.wsp"
$name = "SerwisPrasowy.wsp"
$web = "http://devlab.billennium.pl/sites/serwis-prasowy"
$site = "http://devlab.billennium.pl"
$features = @("36d14636-a271-4468-b902-805f005872b1", "90201d52-3221-4beb-8048-71efca48d684", "0c8b08c2-7727-42cf-a362-737c4cd0498e")
$siteFeatures = @("8c126234-2cf6-4932-b737-e08847c89b46")

$sln = get-spsolution -identity $name

Write-Host -f green "`nUNINSTALL SOLUTION`n"
Uninstall-SPSolution -identity $name -Confirm:$false

#waiting
while($sln.JobExists) { 
Write-Host -f yellow " > Uninstall in progress..."
start-sleep -s 10 
}

Write-Host -f green "`nREMOVE SOLUTION`n"
Remove-SPSolution -identity $name -Confirm:$false

#waiting
while($sln.JobExists) { 
Write-Host -f yellow " > Removing solution in progress..."
start-sleep -s 10 
}

Write-Host -f green "`nADD SOLUTION`n"
Add-SPSolution $path  -Confirm:$false

Write-Host -f green "`nINSTALL SOLUTION`n"
Install-SPSolution -Identity $name -GacDeployment -Confirm:$false

#waiting
while($sln.JobExists) { 
Write-Host -f yellow " > Installing solution in progress..."
start-sleep -s 10 
}

foreach($feature in $features)
{
	Write-Host -f green "`nDISABLE FEATURE`n"
	Disable-SPFeature -Identity $feature -Force -Url $web -Confirm:$false
    
	Write-Host -f green "`nENABLE FEATURE`n"
	Enable-SPFeature -Identity $feature -Force -Url $web -Confirm:$false
}

foreach($feature in $siteFeatures)
{
	Write-Host -f green "`nDISABLE SITE FEATURE`n"
	Disable-SPFeature -Identity $feature -Force -Url $site -Confirm:$false
    
	Write-Host -f green "`nENABLE SITE FEATURE`n"
	Enable-SPFeature -Identity $feature -Force -Url $site -Confirm:$false
}