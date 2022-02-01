# Dark Mode
Write-Output 'Enabling Dark Mode'
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 1 -Type Dword -Force  # System level
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0 -Type Dword -Force  # App level

# WSL 2
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --install # If doesnt work, manually download and install the link below
Write-Output 'Download https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi'
wsl --set-default-version 2

# Install Scoop
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
scoop update

# Tools
scoop install sudo
sudo scoop install 7zip git openssh --global
scoop install aria2 curl grep sed less touch vim which nano
scoop bucket add extras
scoop install putty winscp

# Java
scoop bucket add java
scoop install openjdk

# Python
scoop install python scala spark miniconda3
scoop install pyenv
conda init
conda update --all 
conda install jupyter pandas numpy matplotlib

# Applications
scoop install brave docker vscode
scoop install sqlite
