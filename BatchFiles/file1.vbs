' VBScript Example: Displaying System Information and Creating a File

Option Explicit ' Forces explicit variable declaration

Dim objWMIService, colItems, objItem, objFSO, objFile

Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colItems = objWMIService.ExecQuery("SELECT * FROM Win32_OperatingSystem")

For Each objItem In colItems
  WScript.Echo "Operating System: " & objItem.Caption & " " & objItem.Version
Next

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.CreateTextFile("C:\temp\vbs_info.txt", True)
objFile.WriteLine("VBScript System Info")
objFile.Close

WScript.Echo "File created: C:\temp\vbs_info.txt"

