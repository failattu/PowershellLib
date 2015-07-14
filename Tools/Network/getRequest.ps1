Function getRequest($server = "http://127.0.0.1", $port = 8080, $path, $param)
{
    try
    {
        $baseuri = $server +":"+ $port
        $uri = $baseuri+$path+"/?"+$param
        $r = Invoke-WebRequest $uri
        return $r.Content
    }
    catch
    {
            $r = $_.Exception.Response.StatusCode.Value__
            return $r
    }
}

Function getRequestRest($server = "http://127.0.0.1", $port = 8080, $path, $param)
{
    try
    {
      $baseuri = $server +":"+ $port
      $uri = $baseuri+$path+"/?"+$param
      Invoke-RestMethod $uri -Method GET
    }
    catch
    {
      $r = $_.Exception.Response.StatusCode.Value__
      return $r
    }
}
