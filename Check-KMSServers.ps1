# Define the list of KMS servers
$servers = @(
    "kms.srv.crsoo.com",
    "cy2617.jios.org",
    "kms.digiboy.ir",
    "kms.cangshui.net",
    "kms.library.hk",
    "hq1.chinancce.com",
    "kms.loli.beer",
    "kms.v0v.bid",
    "54.223.212.31",
    "kms.jm33.me",
    "nb.shenqw.win",
    "kms.izetn.cn",
    "kms.cin.ink",
    "222.184.9.98",
    "kms.ijio.net",
    "fourdeltaone.net",
    "kms.iaini.net",
    "kms.cnlic.com",
    "kms.51it.wang",
    "key.17108.com",
    "kms.chinancce.com",
    "kms.ddns.net",
    "windows.kms.app",
    "kms.ddz.red",
    "franklv.ddns.net",
    "kms.mogeko.me",
    "k.zpale.com",
    "amrice.top",
    "m.zpale.com",
    "mvg.zpale.com",
    "kms.shuax.com",
    "kensol263.imwork.net",
    "xykz.f3322.org",
    "kms789.com",
    "dimanyakms.sytes.net",
    "kms8.MSGuides.com",
    "kms.03k.org",
    "kms.ymgblog.com",
    "kms.bige0.com",
    "kms9.MSGuides.com",
    "kms.cz9.cn",
    "kms.lolico.moe",
    "kms.ddddg.cn",
    "kms.zhuxiaole.org",
    "kms.moeclub.org",
    "kms.lotro.cc",
    "zh.us.to",
    "noair.strangled.net"
)

# Define the port number
$port = 1688

# Function to check if a server is reachable and port is open
function Test-Server {
    param (
        [string]$Server,
        [int]$Port
    )
    
    # Test if the server is reachable (ping)
    $pingResult = Test-Connection -ComputerName $Server -Count 1 -Quiet
    if ($pingResult) {
        Write-Host "$Server is reachable."
        
        # Test if the port is open
        try {
            $tcpConnection = Test-NetConnection -ComputerName $Server -Port $Port
            if ($tcpConnection.TcpTestSucceeded) {
                Write-Host "Port $Port on $Server is open."
            } else {
                Write-Host "Port $Port on $Server is closed."
            }
        } catch {
            # Use string formatting for error messages
            $errorMessage = "Error testing port {0} on {1}: {2}" -f $Port, $Server, $_.Exception.Message
            Write-Host $errorMessage
        }
    } else {
        Write-Host "$Server is not reachable."
    }
}

# Iterate over each server and test it
foreach ($server in $servers) {
    Test-Server -Server $server -Port $port
}
