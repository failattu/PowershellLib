function getIP()
{
  Write-Verbose "Computer ip resolving"
  $comp = gc env:computername
  return (Resolve-DnsName $comp).ip4address
}
