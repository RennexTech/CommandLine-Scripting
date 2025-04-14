# PowerShell Example: Getting System Info and Creating a File

$OS = Get-WmiObject Win32_OperatingSystem
Write-Host "Operating System: $($OS.Caption) $($OS.Version)"

$Env:USERNAME | Out-File -FilePath "C:\temp\powershell_info.txt"
"PowerShell System Info" | Add-Content -Path "C:\temp\powershell_info.txt"
Write-Host "File created: C:\temp\powershell_info.txt"

Get-Process | Where-Object {$_.CPU -gt 1} | Select-Object Name, CPU, Id | Format-Table -AutoSize
Get-Service | Where-Object {$_.Status -eq "Running"} | Select-Object Name, Status | Format-List

try {
 Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" | Select-Object ProductName
} catch {
 Write-Error "Error reading registry: $($_.Exception.Message)"
}

