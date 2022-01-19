$ServerName = Get-Content "e:\powershell\servers.txt"
$user = "javadm"

  



foreach ($Server in $ServerName) {  
  
	$Computer = [ADSI]("WinNT://$Server,computer")
    $Group = $Computer.PSBase.Children.Find("Administrators")
    $Group.remove("WinNT://$User")
	    
          
} 


