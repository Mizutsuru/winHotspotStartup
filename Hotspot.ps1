$connectionProfile = [Windows.Networking.Connectivity.NetworkInformation,Windows.Networking.Connectivity,ContentType=WindowsRuntime]::GetInternetConnectionProfile()
$tetheringManager = [Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager,Windows.Networking.NetworkOperators,ContentType=WindowsRuntime]::CreateFromConnectionProfile($connectionProfile)

# Start Mobile Hotspot
$tetheringManager.StartTetheringAsync()

# Stop Mobile Hotspot
#$tetheringManager.StopTetheringAsync()

# Check whether Mobile Hotspot is enabled
#$tetheringManager.TetheringOperationalState