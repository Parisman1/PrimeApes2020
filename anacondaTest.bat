@echo on

SET mypath=%~dp0

call C:\Users\%USERNAME%\Anaconda3\Scripts\activate.bat

C:\Users\%USERNAME%\Anaconda3\python.exe %mypath%\ui_MAIN.py

pause
