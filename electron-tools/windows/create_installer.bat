call config.bat

del %APP_NAME%.exe

copy /y "..\..\dist_electron\%APP_NAME% Setup %APP_VERSION%.exe" "%APP_NAME%.exe"

makensis installer.nsi

pause
