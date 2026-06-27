# Wind — Windows system-tray controller. Gives self-host users a no-terminal experience: a tray icon
# in the notification area with Show Wind · Restart Wind · Quit Wind. Zero dependencies — it uses the
# WinForms NotifyIcon that ships with .NET on every Windows box. Launch it hidden via wind-tray.vbs
# (double-click), or add that .vbs to shell:startup so Wind comes up with Windows.
#
# It manages the local Wind instance with `docker compose` when a docker-compose.yml is present
# (the recommended self-host path), and falls back to `npm --prefix backend start` otherwise.

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
$ErrorActionPreference = 'SilentlyContinue'

$WindUrl   = if ($env:WIND_URL) { $env:WIND_URL } else { 'http://localhost:3010' }
$RepoRoot  = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)   # scripts\windows -> repo root
$UseDocker = (Get-Command docker -ErrorAction SilentlyContinue) -and (Test-Path (Join-Path $RepoRoot 'docker-compose.yml'))

function Invoke-Compose([string[]]$compArgs) {
  Start-Process -FilePath 'docker' -ArgumentList (@('compose') + $compArgs) -WorkingDirectory $RepoRoot -WindowStyle Hidden -Wait
}
function Start-Wind {
  if ($UseDocker) { Invoke-Compose @('up','-d') }
  else { Start-Process -FilePath 'npm' -ArgumentList @('--prefix','backend','start') -WorkingDirectory $RepoRoot -WindowStyle Hidden }
}
function Stop-Wind {
  if ($UseDocker) { Invoke-Compose @('stop') }
  else {
    Get-CimInstance Win32_Process -Filter "Name='node.exe'" |
      Where-Object { $_.CommandLine -like '*backend*' } |
      ForEach-Object { Stop-Process -Id $_.ProcessId -Force }
  }
}
function Restart-Wind {
  if ($UseDocker) { Invoke-Compose @('restart') } else { Stop-Wind; Start-Sleep -Seconds 1; Start-Wind }
}

# Bring Wind up on launch.
Start-Wind

# Tray icon — prefer the bundled Wind .ico, else the host app icon, else a stock icon.
$icon = New-Object System.Windows.Forms.NotifyIcon
$ico  = Join-Path $RepoRoot 'frontend\public\favicon.ico'
try {
  if (Test-Path $ico) { $icon.Icon = New-Object System.Drawing.Icon($ico) }
  else { $icon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon((Get-Process -Id $PID).Path) }
} catch { $icon.Icon = [System.Drawing.SystemIcons]::Application }
$icon.Text    = 'Wind'
$icon.Visible = $true
$icon.ShowBalloonTip(2500, 'Wind', 'Wind is starting — open it from this tray icon.', [System.Windows.Forms.ToolTipIcon]::Info)

# Context menu.
$menu = New-Object System.Windows.Forms.ContextMenuStrip
$mShow = $menu.Items.Add('Show Wind')
$mShow.add_Click({ Start-Process $WindUrl })
$mRestart = $menu.Items.Add('Restart Wind')
$mRestart.add_Click({ $icon.ShowBalloonTip(2000,'Wind','Restarting…',[System.Windows.Forms.ToolTipIcon]::Info); Restart-Wind })
$menu.Items.Add('-') | Out-Null
$mQuit = $menu.Items.Add('Quit Wind')
$mQuit.add_Click({ Stop-Wind; $icon.Visible = $false; [System.Windows.Forms.Application]::Exit() })
$icon.ContextMenuStrip = $menu

# Double-click the tray icon = Show Wind (open the local dashboard in the default browser).
$icon.add_DoubleClick({ Start-Process $WindUrl })

[System.Windows.Forms.Application]::Run()
