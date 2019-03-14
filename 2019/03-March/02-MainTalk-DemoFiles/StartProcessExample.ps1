$data | ForEach-Object {
    Start-Process `
        -FilePath 'powershell.exe' `
        -ArgumentList @(
            '-File', 'C:\Scripts\Azure\ResourceGroupJanitor.ps1',
            '-Subscription', $PSItem['SubscriptionId'],
            '-ResourceGroup', $PSItem['ResourceGroupName']
        ) `
        -WindowStyle Hidden `
        # -Wait
}


