Function deleteRequest($server = "http://127.0.0.1", $port = 8080, $path, $param)
{
    try
    {
        $baseuri = $server +":"+ $port
        $uri = $baseuri+$path+"/?"+$param
        Invoke-RestMethod $uri -Method DELETE
    }
    catch
    {
        $r = $_.Exception.Response.StatusCode.Value__
        return $r
    }
}
