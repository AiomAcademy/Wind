' Wind — launch the system-tray controller with NO console window (double-click this file).
' To start Wind automatically with Windows: press Win+R, type  shell:startup , and drop a shortcut
' to this .vbs in the folder that opens.
Dim sh, here
Set sh = CreateObject("WScript.Shell")
here = Left(WScript.ScriptFullName, InStrRev(WScript.ScriptFullName, "\"))
sh.Run "powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File """ & here & "wind-tray.ps1""", 0, False
