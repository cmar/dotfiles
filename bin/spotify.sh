#!/bin/bash

#return "Now Playing: " & name of current track & " by " & artist of current track & " on " & album of current track
test=$(/usr/bin/osascript <<-EOF
    tell application "Spotify"
      return name of current track
    end tell
  EOF)
#& " - " & artist of current track
echo ${test:0:20}

