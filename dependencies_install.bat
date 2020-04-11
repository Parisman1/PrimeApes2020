@echo off
echo Installing dependencies, please wait...
call C:\Users\%USERNAME%\Anaconda3\Scripts\activate.bat

pip install opencv-python
conda install -c conda-forge filterpy
conda install -c conda-forge imageio
conda install pyqt
conda install pyqtgraph
conda install numpy
conda install pillow
conda install pandas
pip install -U memory_profiler