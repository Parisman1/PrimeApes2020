    
import subprocess

def install(name):
    subprocess.call(['pip', 'install', name])

def install2(name):
    subprocess.call(['conda', 'install', name])

#pip install opencv-python
try:
    import cv2
    print('opencv found')
except ImportError as e:
    print('opencv not found')
    install('opencv-python')

#conda install -y -c conda-forge filterpy
try:
    from filterpy import *
    print('filterpy found')
except ImportError as e:
    print('filterpy not found')
    install2('-c conda-forge filterpy')
 
#conda install -y -c conda-forge imageio
try:
    import imageio
    print('imageio found')
except ImportError as e:
    print('imageio not found')
    install2('-c conda-forge imageio')

#conda install -y pyqt
try:
    from PyQt5 import *
    print('pyqt found')
except ImportError as e:
    print('pyqt not found')
    install2('pyqt')
    
#conda install -y pyqtgraph
try:
    import pyqtgraph
    print('pyqtgraph found')
except ImportError as e:
    print('pyqtgraph not found')
    install2('pyqtgraph')

#conda install -y numpy
try:
    import numpy
    print('numpy found')
except ImportError as e:
    print('numpy not found')
    install2('numpy')
    
#conda install -y pillow
try:
    from PIL import *
    print('pillow found')
except ImportError as e:
    print('pillow not found')
    install2('pillow')

#conda install -y pandas
try:
    import pandas
    print('pandas found')
except ImportError as e:
    print('pandas not found')
    install2('pandas')

#pip install -y -U memory_profiler
try:
    from memory_profiler import *
    print('memory_profiler found')
except ImportError as e:
    print('memory_profiler not found')
    install('memory_profiler')

print('All the dependencies are properly installed.')
#exec(open("ui_MAIN.py").read())
#subprocess.call("python ui_MAIN.py", shell=True)

#pip install opencv-python
#conda install -y -c conda-forge filterpy
#conda install -y -c conda-forge imageio
#conda install -y pyqt
#conda install -y pyqtgraph
#conda install -y numpy
#conda install -y pillow
#conda install -y pandas
#pip install -y -U memory_profiler
