function FirewallRules($port, $name, $protocol = "both")
{
    if($protocol -eq "both")
    {
        netsh advfirewall firewall add rule name=$name dir=in action=allow protocol=TCP localport=$port
        netsh advfirewall firewall add rule name=$name dir=in action=allow protocol=UDP localport=$port
    }
    ElseIf($protocol -eq "tcp")
    {
        netsh advfirewall firewall add rule name=$name dir=in action=allow protocol=TCP localport=$port
    }
    ElseIf($protocol -eq "udp")
    {
        netsh advfirewall firewall add rule name=$name dir=in action=allow protocol=UDP localport=$port
    }
    ElseIf($protocol -eq "delete")
    {
        netsh advfirewall firewall delete rule name=$name
    }
}
