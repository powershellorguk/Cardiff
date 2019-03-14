workflow InvokeMe {

    # Execute any standard PowerShell code
    InlineScript {
        Get-AWSRegion
    }

    Get-ChildItem -Path 'C:\Users\' -Directory:$true |
        ForEach-Object {
            InlineScript {
                # Does not work inside ForEach-Object
            }
        }
}

