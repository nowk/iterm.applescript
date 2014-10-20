tell application "iTerm"
	make new terminal
	
	set c to (current terminal)
	try
		get c
	on error
		set c to (make new terminal)
	end try

	tell c
		activate current session

		set l to (launch session "Default Session")
		tell l
			write text "$CD_CMD"
		end tell
	end tell
end tell