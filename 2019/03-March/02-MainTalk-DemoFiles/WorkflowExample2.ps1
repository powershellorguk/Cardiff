workflow Get-InventoryData {
    param (
        [String[]]
        $ComputerName
    )

    foreach -parallel ($Name in $ComputerName) {
        Get-WmiObject -Class Win32_BIOS -PSComputerName $Name
        Get-WmiObject -Class Win32_ComputerSystem -PSComputerName $Name
    }
}

