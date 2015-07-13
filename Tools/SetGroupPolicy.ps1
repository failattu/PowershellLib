function removeMultiUserBlock()
{
  Write-Verbose "Set's group policy that blocks multi user login by remote to allow login"
  Set-ItemProperty 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services' -Name fSingleSessionPerUser -Value 0x00000000
}
