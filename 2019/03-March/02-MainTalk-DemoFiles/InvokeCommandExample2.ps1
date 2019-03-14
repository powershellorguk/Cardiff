$minDays = 35

Invoke-Command `
    -ComputerName $serverList `
    -ThrottleLimit 365 `
    -FilePath 'C:\Scripts\ProfileCleanup.ps1'
    -ArgumentList $minDays 



