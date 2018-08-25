#!/bin/bash

#When: 2018-07-28
#Who: Ajinkya Deogade, Shalu Jhanwar
#What: Install conda packages in different env

######################
#set and activate python env
######################
conda create --name py37 python=3.7
conda create --name py27 python=2.7
conda list env
source activate py37
source activate py27

######################
#install python package
######################
conda install numpy scipy pandas matplotlib scikit-learn seaborn urllib3 scikit-image scikit-bio jupyter sqlite tqdm sphinx ipython autopep8 dask holoviews beautifulsoup4 opencv selenium 
conda install pytorch torchvision -c pytorch
conda install opencv selenium

######################
#Enable Jupyter add-ons
######################
conda install -c conda-forge jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
conda install -c conda-forge jupyter_nbextensions_configurator


