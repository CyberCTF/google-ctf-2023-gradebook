#!/bin/sh
# The gradebook greets the player and asks for the password.
# The service runs the challenge in nsjail for each connection and greets the player first.
(sleep 4) | curl -sS --max-time 6 telnet://challenge:1337 2>/dev/null | grep -q "PLEASE LOGON WITH USER PASSWORD"
