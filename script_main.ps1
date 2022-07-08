
#######Step 1###########
#######Importing the credentials from a file#################

Set-Variable -Name "counter" 
[string]$user= (Get-Content -Path .\paramimport.txt -TotalCount 6)[-5];
[string]$pass= (Get-Content -Path .\paramimport.txt -TotalCount 6)[-3];
[string]$tenant1= (Get-Content -Path .\paramimport.txt -TotalCount 6)[-1];

#Reference Article 1
#https://mixedanalytics.com/knowledge-base/api-connector-encode-credentials-to-base-64/

$pair = "${user}:${pass}" 
$bytes = [System.Text.Encoding]::ASCII.GetBytes($pair)
$base64 = [Convert]::ToBase64String($bytes)

