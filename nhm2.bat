@echo off

REM Prompt user to activate the pws environment
echo -----------------------------------------------------
echo Please manually activate the 'pws' environment by running:
echo conda activate pws
echo Once activated, press Y to continue or N to cancel.
echo -----------------------------------------------------
choice /c YN /m "Continue?"
if errorlevel 2 (
	echo Operation canceled by user.
	exit /b 1
)
REM Install pyWatershed in editable mode
pip install -e .
if errorlevel 1 (
	echo Failed to install pyWatershed in editable mode. Exiting...
	exit /b 1
)

REM Clone the pws environment to create pws_pyPRMS
echo Cloning the pws environment to create pws_pyPRMS...
conda create --name pws_pyPRMS --clone pws
if errorlevel 1 (
	echo Failed to clone pws environment. Exiting...
	exit /b 1
)


