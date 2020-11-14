function Get-DuplicateChar {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)
        [string]$stringtext
    )
    $hash = @{}
    $stringtext = $stringtext.toCharArray()
    foreach ($char in $$stringtext) {
        if ($hash.ContainsKey($char)) {
            Write-Output "The First duplicate Character is $($char)"
            return $char
        }
        else {
            $hash[$char] = 0
        }
    }
    return "None"
}
