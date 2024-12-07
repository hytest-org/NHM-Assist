@echo off

REM Clone the pyWatershed repository
echo Cloning pyWatershed repository...
git clone https://github.com/EC-USGS/pywatershed.git
if errorlevel 1 (
	echo Failed to clone pyWatershed repository. Exiting...
	exit /b 1
)

REM Navigate into the pyWatershed directory
cd pywatershed || exit /b 1

REM Move nhm2.bat to the pyWatershed directory
echo Moving nhm2.bat to the pyWatershed directory...
move ..\nhm2.bat .
if errorlevel 1 (
	echo Failed to move nhm2.bat. Exiting...
	exit /b 1
)

REM Move nhm3.bat to the pyWatershed directory
echo Moving nhm3.bat to the pyWatershed directory...
move ..\nhm3.bat .
if errorlevel 1 (
	echo Failed to move nhm2.bat. Exiting...
	exit /b 1
)

REM Move nhm4.bat to the pyWatershed directory
echo Moving nhm4.bat to the pyWatershed directory...
move ..\nhm4.bat .
if errorlevel 1 (
	echo Failed to move nhm2.bat. Exiting...
	exit /b 1
)

REM Create the pws environment
echo Creating the pws environment...
mamba env create -f environment_w_jupyter.yml
if errorlevel 1 (
	echo Failed to create pws environment. Exiting...
	exit /b 1
)


