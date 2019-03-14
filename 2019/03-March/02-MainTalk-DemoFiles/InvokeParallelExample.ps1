Get-ChildItem -Path 'C:\Users\' -Directory |
    Invoke-Parallel `
        -ScriptBlock {
            param (
                [DirectoryInfo]
                $Directory
            )
            # Do work
        } -ThrottleLimit 128

$functionName = 'Function:Start-Cleanup'
$scriptBlock = Get-Item $functionName |
    Select-Object -ExpandProperty ScriptBlock

Get-ChildItem -Path 'C:\Users\' -Directory |
    Invoke-Parallel `
        -ScriptBlock $scriptBlock `
        -ThrottleLimit 128