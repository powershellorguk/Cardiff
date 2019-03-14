workflow Get-InventoryData {

    parallel {
        Get-CimInstance -ClassName Win32_ComputerSystem
        Get-CimInstance -ClassName Win32_BIOS
    }
}

Get-InventoryData -PSComputerName 'srv01', 'srv02', 'srv03'

