; HERO SEARCH
; Assume you're in Hero Search screen already

; Free Advanced Search (left)
search_left()
{
	; Remember current mouse location
	MouseGetPos &x, &y

	; Switch to SoS app 
	WinActivate "ahk_exe sspc.exe"
	
	; Click Free Search
	MouseClick "left", 528, 994
	
	; Wait for animation to finish (10 seconds)
	Sleep 10000

	; Click Confirm
	MouseClick "left", 421, 833
	
	; Let things finish then return to previous mouse location 
	Sleep 500
	;MouseMove x, y
}


; A_Args. Pass the number of searches from command-line 
if (A_Args.Length != 1) {
	MsgBox("No parameter was provided")
	ExitApp 
}
maxSearches := A_Args[1]


; Click Free Search
; A_Index starts counting at 1, so use <=
while (A_Index <= maxSearches)
{
	MsgBox("Advanced Search " A_Index " of " maxSearches, "Hero Search", "T5")
	
	search_left()
	
	; 5 minute cooldown between searches
	; except last one because we're done
	if (A_Index != maxSearches)
	{
		Sleep 300000
	}
}

; Press ESC to abort the script anytime
Esc::ExitApp
