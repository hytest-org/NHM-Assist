# BAT installation process
A bat script is a script that can automate a series of commands, so instead of typing tens of lines of installation scripts, you can just run a few of them and follow them in sequential order. 
First make sure you are in the directory outside of the NHM-ASSIST-MAIN script so the scripts work properly. 


## Part 1:
Make sure you are typing these commands into the conda miniforge script
Instructions at this [link](https://github.com/conda-forge/miniforge)
```
nhm1.bat
```
---

## Part 2: 
```
conda activate pws
```
```
nhm2.bat
```

---

## Part 3: 
```
conda activate pws_pyPRMS
```
```
nhm3.bat
```
---

## Part 4:
```
nhm4.bat
```
---
### Activate the environment:
```
activate NHM
```

### and finally launch Jupyter:
```
jupyter lab
```
