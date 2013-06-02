@ECHO off
:STARTPOINT
IF NOT EXIST webx (
    MKDIR webx
	IF EXIST www (
		MOVE www webx
		MKLINK /D /H /J www webx\www
	)
	CLS
)
:INTRO
echo ProjectSwitch by Stichoza [me@stichoza.com]
@echo.
:ENTERNAME
SET /P PROJECTNAME=Enter directory name: 
@RMDIR www
IF NOT EXIST webx\%PROJECTNAME% (
	CD webx
	MKDIR %PROJECTNAME%
	CD ..
)
MKLINK /D /H /J www webx\%PROJECTNAME%
ECHO Press any key to exit.
PAUSE>nul
EXIT