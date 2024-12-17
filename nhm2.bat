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

REM Install NHM-Assist additional dependencies
:: echo Installing NHM-Assist additional dependencies...
:: pip install ipyleaflet 
:: pip install tobler 
:: ip install plotly 
:: pip install hydroeval
:: pip install folium==0.18 --ignore-installed
:: pip install numpy==2.0.2 --ignore-installed

:: if errorlevel 1 (
:: 	echo Failed to install NHM-Assist dependencies. Exiting...
:: 	exit /b 1
:: )


