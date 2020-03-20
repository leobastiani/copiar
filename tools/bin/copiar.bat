@ECHO OFF
set src=%1
set dest=%2

for %%f in (%src%) do (
	if NOT EXIST "%%f\" (
		xcopy /y "%%f" "%dest%"
	)
)

for /D %%f in (%src%) do (
	xcopy /e /i /y "%%f" "%dest%\%%~nf"
)


rem nircmdc shellcopy %* yestoall noerrorui