Write-Verbose "Computer ip resolving"
$computer = gc env:computername
(Resolve-DnsName $computer).ip4address
