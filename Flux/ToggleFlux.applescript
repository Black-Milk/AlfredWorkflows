on alfred_script(q)
	set myOption to q as integer
	
	ignoring application responses
		tell application "System Events" to tell process "Flux"
			click menu bar item 1 of menu bar 2
		end tell
	end ignoring
	do shell script "killall System\\ Events"
	delay 0.1
	tell application "System Events" to tell process "Flux"
		tell menu bar item 1 of menu bar 2
			set v to (value of attribute "AXMenuItemMarkChar" of menu item "Disable for an hour" of menu 1) as string
			if (v = "" and myOption = 0) or (v is not equal to "" and myOption = 1) then
				click menu item "Disable for an hour" of menu 1
			else
				key code 53
			end if
		end tell
	end tell
	
end alfred_script