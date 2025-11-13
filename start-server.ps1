param(
    [int]$Port = 8000
)

# Navigate to the script directory so the server serves the project files
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptDir

# Start a Python HTTP server in a new, detached process (minimized window)
# If you prefer the server to show in a terminal window, replace -WindowStyle Minimized with -NoNewWindow
Start-Process -FilePath "py" -ArgumentList "-3 -m http.server $Port" -WindowStyle Minimized

# Give the server a moment to start
Start-Sleep -Milliseconds 500

# Open home.html in the default browser
Start-Process "http://localhost:$Port/home.html"

# Helpful note for users:
# To run this script from PowerShell (current folder):
#   powershell -NoProfile -ExecutionPolicy Bypass -File .\start-server.ps1
# Or double-click the script file in Explorer (ExecutionPolicy may block running it).
