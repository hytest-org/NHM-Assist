@echo off
REM Clone the pws_pyPRMS environment to create NHM
echo Cloning the pws_pyPRMS environment to create NHM...
conda create --name NHM --clone pws_pyPRMS
if errorlevel 1 (
	echo Failed to clone pws_pyPRMS environment. Exiting...
	exit /b 1
)


