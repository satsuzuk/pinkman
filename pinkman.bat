@echo off

@title pinkman
setlocal enabledelayedexpansion
mode con:cols=45 lines=30
set version=1

type nul > fail_log.txt

set red=[41m
set green=[42m
set white=[40m

:pinkman

set yyyy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%
set time2=%time: =0%
set hh=%time2:~0,2%
set mn=%time2:~3,2%

echo --------------------------------------------
echo     (pinkman)       ver.%version%
echo                     %yyyy%-%mm%-%dd% %hh%^:%mn%
echo --------------------------------------------

for /f "tokens=1,2" %%a in (pinkman.conf) do (
	ping -4 -n 1 -w 800 %%b |find "ms TTL=" >nul
	if !errorlevel!==1 ( 
		set pingresult= %red% x
		echo %yyyy%-%mm%-%dd% %hh%^:%mn%	%%b	%%a	fail>>fail_log.txt
		) else (
		set pingresult= %green% o
		)
	set result=!pingresult! %white%  %%a	%%b
	echo !result!
)
timeout /t 3 >nul

cls
goto pinkman
