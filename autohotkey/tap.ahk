; TAP
; Continuously tap on the Assembly Point
; This is useful for helping others heal or build faster

tap()
{
	; Remember current mouse location
	MouseGetPos &x, &y

	; Switch to SoS app 
	WinActivate "ahk_exe sspc.exe"	
	Sleep 500

	; Click on the Assembly Point
	SetMouseDelay 20
	Click 1254, 542, "left", "down"
	Sleep 50
	Click 1254, 542, "left", "up"
	
	Sleep 500


	; Return to previous mouse location 
	MouseMove x, y
}

loop
{
	;MsgBox "Proceed?"
	Sleep 2000
	tap()
}

; Press ESC to abort the script 
Esc::ExitApp
