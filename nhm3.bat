@echo off

REM Prompt user to activate the pws_pyPRMS environment
echo -----------------------------------------------------
echo Please manually activate the 'pws_pyPRMS' environment by running:
echo conda activate pws_pyPRMS
echo Once activated, press Y to continue or N to cancel.
echo -----------------------------------------------------
choice /c YN /m "Continue?"
if errorlevel 2 (
	echo Operation canceled by user.
	exit /b 1
)

REM Install pyPRMS dependencies
echo Installing pyPRMS dependencies...
pip install pygeohydro 
pip install ipyleaflet 
pip install dataretrieval 
pip install pyogrio 
pip install tobler 
pip install matplotlib 
pip install cartopy 
pip install numpy 
pip install netCDF4 
pip install xarray 
pip install pre-commit 
pip install rich  
pip install ipywidgets 
pip install plotly 
pip install hydroeval
pip install hyswap
if errorlevel 1 (
	echo Failed to install pyPRMS dependencies. Exiting...
	exit /b 1
)

REM Install pyPRMS
echo Installing pyPRMS...
pip install git+https://github.com/paknorton/pyPRMS.git@development
if errorlevel 1 (
	echo Failed to install pyPRMS. Exiting...
	exit /b 1
)

REM Deactivate the pws_pyPRMS environment
echo Deactivating the pws_pyPRMS environment...
conda deactivate