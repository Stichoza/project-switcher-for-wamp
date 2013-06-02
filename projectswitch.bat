@ECHO off
TITLE Project Switcher for WAMP
:STARTPOINT
IF NOT EXIST wampmanager.exe (
    ECHO This is not a WAMP installation directory.
    GOTO NONWAMPDIR
)
:DIRTEST
IF NOT EXIST webx (
    MKDIR webx
    IF EXIST www (
        MOVE www webx
        MKLINK /D /H /J www webx\www
    )
    CLS
)
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
:EXIT
EXIT
#DEFINE_RETURNING_BLOCKS
:NONWAMPDIR
SET /P NONWAMP=Continue? (y/n) 
IF %NONWAMP%==y (GOTO DIRTEST) ELSE (GOTO EXIT)