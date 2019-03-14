Get-ChildItem -Path 'C:\Users\' -Directory |
    ForEach-Object {
        Start-RSJob 
            -Name $PSItem.Name `
            -ScriptBlock {
                param (
                    [String]
                    $UserPath
                )
                # Do work
            } `
            -ArgumentList $PSItem.FullName `
            -Throttle 32 # PoshRSJobs feature
    }

$functionName = 'Function:Start-Cleanup'
$scriptBlock = Get-Item $functionName |
    Select-Object -ExpandProperty ScriptBlock

Get-ChildItem -Path 'C:\Users\' -Directory |
    ForEach-Object {
        Start-RSJob -Name $PSItem.Name `
            -ScriptBlock $scriptBlock `
            -ArgumentList $PSItem.FullName `
            -Throttle 13
    }
    

    