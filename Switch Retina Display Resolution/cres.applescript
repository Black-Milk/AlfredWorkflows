tell application "System Preferences"
	reveal anchor "displaysDisplayTab" of pane "com.apple.preference.displays"
end tell
tell application "System Events" to tell process "System Preferences"
	tell radio group 1 of group 1 of tab group 1 of window 1
		if value of radio button 4 is true then
			click radio button 5
		else if value of radio button 5 is true then
			click radio button 4
		end if
	end tell
end tell
quit application "System Preferences"