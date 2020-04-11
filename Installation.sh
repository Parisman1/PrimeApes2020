#!/bin/bash

# an example checking if the pandas package is installed
if python -c 'import pkgutil; exit(not pkgutil.find_loader("cv2"))'; then
    echo 'opencv found'
else
    echo 'opencv not found'
    pip install opencv-python
fi

if python -c 'import pkgutil; exit(not pkgutil.find_loader("filterpy"))'; then
    echo 'filterpy found'
else
    echo 'filterpy not found'
    conda install -y -c conda-forge filterpy
fi

if python -c 'import pkgutil; exit(not pkgutil.find_loader("imageio"))'; then
    echo 'imageio found'
else
    echo 'imageio not found'
    conda install -y -c conda-forge imageio
fi

if python -c 'import pkgutil; exit(not pkgutil.find_loader("PyQt5"))'; then
    echo 'pyqt found'
else
    echo 'pyqt not found'
    conda install -y pyqt
fi

if python -c 'import pkgutil; exit(not pkgutil.find_loader("pyqtgraph"))'; then
    echo 'pyqtgraph found'
else
    echo 'pyqtgraph not found'
    conda install -y pyqtgraph
fi

if python -c 'import pkgutil; exit(not pkgutil.find_loader("numpy"))'; then
    echo 'numpy found'
else
    echo 'numpy not found'
    conda install -y numpy
fi

if python -c 'import pkgutil; exit(not pkgutil.find_loader("PIL"))'; then
    echo 'pillow found'
else
    echo 'pillow not found'
    conda install -y pillow
fi

if python -c 'import pkgutil; exit(not pkgutil.find_loader("pandas"))'; then
    echo 'pandas found'
else
    echo 'pandas not found'
    conda install -y pandas
fi

if python -c 'import pkgutil; exit(not pkgutil.find_loader("memory_profiler"))'; then
    echo 'memory_profiler found'
else
    echo 'memory_profiler not found'
    pip install -y -U memory_profiler
fi

python ui_MAIN.py

#pip install opencv-python
#conda install -y -c conda-forge filterpy
#conda install -y -c conda-forge imageio
#conda install -y pyqt
#conda install -y pyqtgraph
#conda install -y numpy
#conda install -y pillow
#conda install -y pandas
#pip install -y -U memory_profiler
