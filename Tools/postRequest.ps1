Function postRequest($server = "http://127.0.0.1", $port = 8080, $path, $param, $body)
{
    try
    {
        $baseuri = $server +":"+ $port
        $uri = $baseuri+$path+"/?"+$param
        Invoke-RestMethod $uri -Method POST -Body $check
    }
    catch
    {
        $r = $_.Exception.Response.StatusCode.Value__
        return $r
    }
}
