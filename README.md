Project Switcher for WAMP
==================
Switch root `www` directories easily without renaming folders

## Usage

 - Move **bin/projectswitch.exe** to WAMP installation directory (ex: C:\wamp) and run.
 - On first run program will automatically create `webx` folder, where you will store your root directories. Current `www` folder will be moved to `webx`.
 - Enter your project name (for example `foo-bar`) and press Enter. If `webx\foo-bar` does not exist, program will automatically create it.
 - Now your root folder is `webx\foo-bar`. Treat it like `www` directory (`http://localhost/test.html` is `webx\foo-bar\test.html`).
 - To switch to a new (or already existing project in webx), just run the program again and enter new or other existing project's direcory name.
 - For example, if you enter `john-doe`, now `http://localhost/test.html` will be `webx\john-doe\test.html` (Previous project files will not be affected).

## Notes

Use only `A-Za-z0-9` and `.-_` chars **(Do not use spaces)**