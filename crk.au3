HotKeySet("!d", "start")

Dim $running = False
Dim $crk 

Func start()
	$running = NOT $running
EndFunc

While 1
	If $running = True Then
		WinActivate("CookieRun: Kingdom")
		$pos = WinGetPos("CookieRun: Kingdom")
		$x = $pos[2]/25
		$y = $pos[3]/25
		MouseClick("left", $pos[0] + $pos[2] - $x, $pos[1] + $pos[3] - $y)
		Sleep(200)
		$x2 = ($pos[2] / 2) - ($pos[2]/10)
		$y2 = $pos[3]/4
		MouseClick("left", $pos[0] + $pos[2] - $x2, $pos[1] + $pos[3] - $y2)
		Sleep(1000)
		$x3 = ($pos[2] / 2); - ($pos[2]/3)
		$y3 = $pos[3]/4
		MouseClick("left", $pos[0] + $pos[2] - $x3, $pos[1] + $pos[3] - $y3)
		WinSetState("CookieRun: Kingdom", "",@SW_MINIMIZE)
		Sleep(3 * 60 * 1000)
	EndIf
Wend    