function addToPath($loc)
{
    if(!(test-path($loc)))
    {
        New-Item -Path $loc -ItemType directory -Force
    }

    $Path = Get-ChildItem Env:Path
    $values = $Path.value.Split(";")
    if($values -contains $loc )
    {
        $Path.Value += ";$loc"
        [Environment]::SetEnvironmentVariable($Path.Name, $Path.Value, [System.EnvironmentVariableTarget]::User)
        Write-Host "Added $loc to Variables"
    }
}
function removeFromPath($loc)
{
    $Path = Get-ChildItem Env:Path
    [System.Collections.ArrayList]$values = $Path.value.Split(";")
    Write-Host "Removing Variable"
    if($values -contains $loc)
    {
        $values.Remove("$loc")
        $Path.Value = $values -join ";"
        [Environment]::SetEnvironmentVariable($Path.Name, $Path.Value,[System.EnvironmentVariableTarget]::User)
        Write-Host "Removed $loc to Variable"
    }
}
