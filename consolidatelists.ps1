# Consolidate pi-hole lists into a single text file while removing comments and blank lines

$conlist = Get-Content ./c2.txt | Where-Object {($_ -ne "") -and ($_ -notlike "#*")}
$conlist += Get-Content ./malware.txt | Where-Object {($_ -ne "") -and ($_ -notlike "#*")}
$conlist += Get-Content ./phishing.txt | Where-Object {($_ -ne "") -and ($_ -notlike "#*")}

$conlist | Sort-Object -Unique | Out-File consolidated.txt