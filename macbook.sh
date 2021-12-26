#!/bin/zsh

# Ask for admin password
echo "Admin privileges required"
sudo echo

# System Settings
defaults write com.apple.finder AppleShowAllFiles True
defaults write NSGlobalDomain AppleShowAllExtensions True
killall Finder

# Homebrew (https://brew.sh)
echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Python
brew install python3
sudo pip3 install --upgrade pip
sudo pip3 install --upgrade setuptools
ln -sfn python3 /usr/local/bin/python
ln -sfn python /usr/local/bin/py
ln -sfn pip3 /usr/local/bin/pip
brew install pyenv
brew install pyenv-virtualenv
xcode-select --install

# Java 11
brew install java11
sudo ln -sfn /usr/local/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

# Tools
brew install mc
brew install wget
brew install htop
brew install tree
brew install jq
brew install python-yq
brew install hostess
brew install broot; broot --install
brew install gnu-sed; ln -sfn gsed /usr/local/bin/sed
brew install coreutils
brew install nvm
brew install speedtest-cli

# AWS
brew install awscli
brew install aws-iam-authenticator
sudo pip3 install aws-adfs
sudo pip3 install aws-sam-cli

# Docker
brew install --cask docker
xattr -d com.apple.quarantine /Applications/Docker.app
open /Applications/Docker.app &
 
# Kubernetes
brew install kubectx
brew install kubeseal
brew install kubeless
brew install octant

# # Terraform
# brew install terraform
# brew install warrensbox/tap/tfswitch
# tfswitch 1.0.0
# brew install terragrunt --ignore-dependencies
# brew install tflint
# brew install packer

# Git
brew install git
# git config --global credential.helper '!aws codecommit credential-helper $@'
# git config --global credential.UseHttpPath true
# git config --global core.autocrlf input

# Applications
brew install --cask commander-one
brew install --cask github
brew install --cask sublime-text
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask slack
brew install --cask google-chrome
brew install --cask tor-browser
brew install --cask spotify
brew install --cask whatsapp
brew install --cask qbittorrent
brew install --cask virtualbox

# Trading
brew install --cask tradingview
brew install --cask binance

# TODO (via Google Chrome)
# YouTube
# Google Maps
# Google News
# (Google Messages)
