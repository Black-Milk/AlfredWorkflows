on alfred_script(q)
	set myOption to q as string
	
	ignoring application responses
		tell application "System Events" to tell process "Flux"
			click menu bar item 1 of menu bar 2
		end tell
	end ignoring
	do shell script "killall System\\ Events"
	delay 0.1
	
	tell application "System Events" to tell process "Flux" to tell menu bar item 1 of menu bar 2
		
		click menu item "Lighting at night" of menu 1
		if myOption = "f" then
			click menu item "Fluorescent" of menu 1 of menu item "Lighting at night" of menu 1
		else if myOption = "h" then
			click menu item "Halogen" of menu 1 of menu item "Lighting at night" of menu 1
		else if myOption = "c" then
			click menu item "Candle" of menu 1 of menu item "Lighting at night" of menu 1
		else if myOption = "t" then
			click menu item "Tungsten" of menu 1 of menu item "Lighting at night" of menu 1
		else if myOption = "d" then
			click menu item "Daylight" of menu 1 of menu item "Lighting at night" of menu 1
		else if myOption = "cu" then
			click menu item "Custom" of menu 1 of menu item "Lighting at night" of menu 1
			
		end if
	end tell
	do shell script "killall System\\ Events"
	delay 0.1
	
	
end alfred_script