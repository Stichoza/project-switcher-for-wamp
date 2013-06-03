@ECHO off
TITLE Project Switcher for WAMP
ECHO Project Switcher for WAMP by Stichoza ^<me@stichoza.com^>
ECHO.
:STARTPOINT
IF NOT EXIST wampmanager.exe (
    ECHO This is not a WAMP installation directory.
    GOTO NONWAMPDIR
)
:DIRTEST
IF NOT EXIST webx (
	ECHO Initialising ProjectSwitcher...
    MKDIR webx
	ECHO Created directory webx
    IF EXIST www (
        MOVE www webx
        MKLINK /D /H /J www webx\www
    )
    REM CLS
)
:ENTERNAME
SET /P PROJECTNAME=Enter directory name: 
IF EXIST www RMDIR www
IF NOT EXIST webx\%PROJECTNAME% (
    CD webx
	ECHO Directory "%PROJECTNAME%" does not exist in webx.
    MKDIR %PROJECTNAME%
	ECHO Created directory "%PROJECTNAME%".
    CD ..
)
MKLINK /D /H /J www webx\%PROJECTNAME%
ECHO Press any key to exit.
PAUSE>nul
:EXIT
EXIT
#DEFINE_RETURNING_BLOCKS
:NONWAMPDIR
SET /P NONWAMP=Continue? (y/n) 
IF %NONWAMP%==y (GOTO DIRTEST) ELSE (GOTO EXIT)