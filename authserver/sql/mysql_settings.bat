@echo off

set PATH="C:\Program Files\MariaDB 11.4\bin"

set USER=root
set PASS=2420256963tkD
set DBNAME=l2_auth_legacy
set DBHOST=localhost

mysql -h %DBHOST% -u %USER% --password=%PASS% -Bse "use %DBNAME%" > nul 2>&1

if errorlevel 9009 goto notfound
if errorlevel 1 goto error
goto end

:error
echo Can't use %DBNAME%!
exit /b 1

:notfound
echo Can't find mysql binary!
exit /b 1

:END
