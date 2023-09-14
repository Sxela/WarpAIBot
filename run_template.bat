@echo off

setlocal

set "python_dir=%~dp0python"
set "scripts_dir=%~dp0python\Scripts"
set "lib_dir=%~dp0python\Lib\site-packages"
set "pip_py=%~dp0get-pip.py"
set "venv_dir=%~dp0env"

REM Check if Git is already installed
git --version > nul 2>&1
if %errorlevel% equ 0 (
    echo Skipping git as it`s installed.
) else ( 
    echo Git not installed, please run install.bat
    echo Exiting.
    exit /b -1 )

if not exist %venv_dir%\Scripts\activate.bat ( 
    echo Virtual env not installed, please run install.bat
    echo Exiting.
    exit /b -1
)

REM Setting var to skip install inside the notebook
set IS_DOCKER=1
set IS_LOCAL_INSTALL=1
set BOT_TOKEN=put your bot token here
set ADMIN=your account id 
set CHANNELS=[list, of, your, channel, ids]

echo Activating virtual environment 
call %venv_dir%\Scripts\activate"

python -c "import torch; from xformers import ops; assert torch.cuda.is_available(), 'Cuda not available, plese run install.bat'"
if %errorlevel% equ 1 (exit /b -1)

call python server.py

echo Deactivating virtual environment...
deactivate
