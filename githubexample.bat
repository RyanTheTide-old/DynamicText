@echo off
title A GitHub Bat Example!
color 0b

:main
	:: This is the exampled code, this will call upon the github's text document that can-
	:: ,, be updated at any point updating the batch application too feel free to change!       ,,
powershell "Invoke-RestMethod https://raw.githubusercontent.com/RyanTheTide/DynamicText/master/textdocument/dynamictext.txt"
	:: ^^ This is also essential to space after your text or your code will merge into the last ^^
	:: line in your wall of text.

echo.

:options
CHOICE /N /C:123 /M "GitExample: "
IF ERRORLEVEL ==3 GOTO end
IF ERRORLEVEL ==2 GOTO site
IF ERRORLEVEL ==1 GOTO main
goto end

:site
start https://osgs.net/
goto end

:end
exit