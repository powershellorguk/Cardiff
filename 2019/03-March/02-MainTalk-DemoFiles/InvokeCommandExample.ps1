$minDays = 35

Invoke-Command `
    -ComputerName $serverList `
    -ThrottleLimit 365 `
    -ScriptBlock {
        param (
            [Int]
            $MinimumDays
        )
        # ...
    } `
    -ArgumentList $minDays 


