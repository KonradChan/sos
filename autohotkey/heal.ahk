; HEALING SCRIPT (on right monitor)

; HEAL
heal()
{
	; Remember current mouse location
	MouseGetPos &x, &y

	; Switch to SoS app 
	WinActivate "ahk_exe sspc.exe"
	
	Sleep 500

	; Click Quick Heal to enter healing screen
;	MouseClick "left", 1582, 790
	MouseClick "left", 1713, 778
	Sleep 500

	; Click Quick Select to clear all fields
	MouseClick "left", 1705, 492
	Sleep 500

	; Click on the first field 
	MouseClick "left", 915, 214
	Sleep 500

	; Type the number of troops to heal then press enter to refresh the healing time 
	Send 666
	Send "{Enter}"
	Sleep 500

	; Click the Heal button to get started which also closes the screen
	MouseClick "left", 1680, 923
	Sleep 500

	; Return to previous mouse location 
	MouseMove x, y
}

loop
{
	;MsgBox "Proceed?"
	heal()
	Sleep 8000
}

; Press ESC to quit the script 
Esc::ExitApp
