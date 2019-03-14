Get-ChildItem -Path 'C:\Users\' -Directory |
    ForEach-Object {
        Start-Job 
            -Name $PSItem.Name `
            -ScriptBlock {
                param (
                    [String]
                    $UserPath
                )
                # Do work
            } -ArgumentList $PSItem.FullName
    }

$functionName = 'Function:Start-Cleanup'
$scriptBlock = Get-Item $functionName |
    Select-Object -ExpandProperty ScriptBlock

Get-ChildItem -Path 'C:\Users\' -Directory |
    ForEach-Object {
        Start-Job -Name $PSItem.Name `
            -ScriptBlock $scriptBlock `
            -ArgumentList $PSItem.FullName
    }
     