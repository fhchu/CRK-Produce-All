HotKeySet("!d", "start")

Dim $running = False
Dim $crk 
Dim $cooldown = 3
Func start()
	$running = NOT $running
EndFunc

While 1
	If $running = True Then
		; Get active window and mouse for later
		$activeWindow = WinGetHandle("[active]")
		$mousePos = MouseGetPos()
		
		WinActivate("CookieRun: Kingdom")
		$pos = WinGetPos("CookieRun: Kingdom")
		
		; click produce all 
		$x = $pos[2]/25
		$y = $pos[3]/25
		MouseClick("left", $pos[0] + $pos[2] - $x, $pos[1] + $pos[3] - $y, 1)
		
		; click the second button
		$x2 = ($pos[2] / 2) - ($pos[2]/10)
		$y2 = $pos[3]/5
		MouseClick("left", $pos[0] + $pos[2] - $x2, $pos[1] + $pos[3] - $y2, 1)
		
		; click the middle in case an error window or something popped up
		$x3 = ($pos[2] / 2); - ($pos[2]/3)
		$y3 = $pos[3]/4
		MouseClick("left", $pos[0] + $pos[2] - $x3, $pos[1] + $pos[3] - $y3, 1)
		
		; hide crk and put everything else back
		WinSetState("CookieRun: Kingdom", "",@SW_MINIMIZE)
		WinActivate($activeWindow)
		MouseMove($mousePos[0], $mousePos[1], 0)
		; sleeps for x minutes
		Sleep($cooldown * 60 * 1000)
	EndIf
Wend    