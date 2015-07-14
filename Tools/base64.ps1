function convertFromBase64($value)
{
    $decoded = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($value))
    return $decoded
}

function convertToBase64($value)
{
    $value =  [System.Text.Encoding]::UTF8.GetBytes($value)
    $encode = [System.Convert]::ToBase64String($value)
    return $encode
}
