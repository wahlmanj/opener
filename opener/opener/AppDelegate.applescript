--
--  AppDelegate.applescript
--  opener
--
--  Created by user on 11/12/15.
--  Copyright © 2015 user. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
	
	-- IBOutlets
	property theWindow : missing value
	
	on applicationWillFinishLaunching_(aNotification)
        tell application "System Events" to tell process "OpenPlex"
            click menu bar item 1 of menu bar 2
        end tell
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
end script