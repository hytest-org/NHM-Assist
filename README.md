# NHMassist
Collection of python workflows for evaluating, running and interpreting National Hydrologic Model sub-basin extractions (NHMx)

## Install conda-forge miniforge on your PC
Instructions at this [link](https://github.com/conda-forge/miniforge)

Creating the NHM environment can be done manually, we encourage you to install using our guided series of .bat 
scripts by following the instructions at this link [link](./BAT_SCRIPT.md)
## Install pyWatershed environment

Instructions at this [link](https://github.com/EC-USGS/pywatershed)

Open a miniforge prompt and enter:
```
git clone https://github.com/EC-USGS/pywatershed.git
cd pywatershed
mamba env create -f environment_w_jupyter.yml
activate pws
pip install -e .
```

## Make a copy of the pws environment
```
conda create --name NHM --clone pws
```
## Activate the copy
```
activate NHM
```

## Install additional NHM-Assist dependencies and other needed libraries:
pip install ipyleaflet toblar plotly hydroeval
pip install folium==0.18 --ignore-installed
pip install numpy==2.0.2 --ignore-installed
```

## Now, navigate to your NHM-assist repo directory in your miniforge prompt:
```
cd "paste path here"
```

## and finally launch Jupyter:
```
jupyter lab
```
Ready to go! :+1:
