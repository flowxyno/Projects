@ECHO off
ECHO Pinging file server. 

ping wlf-vm-svr

pause

ECHO Stopping workstation service

net stop workstation /y

pause

ECHO Starting workstation service

net start workstation

pause

ECHO Establishing file server storage connection.

explorer.exe \\wlf-vm-svr

pause

ECHO Server storage connection achieved.

ECHO on