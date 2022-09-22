# mac settings
defaults write -g InitialKeyRepeat -int 24 # Delay before key repeat, default min is 15
defaults write -g KeyRepeat -int 1 # Key repeat speed
defaults write -g com.apple.trackpad.scaling -float 20.0 # Trackpad speed
defaults write com.apple.finder QuitMenuItem -bool true # Able to quit Finder

# install software
brew install --cask visual-studio-code
brew install --cask forklift
brew install --cask vivaldi
brew install --cask iterm2
brew install --cask intellij-idea-ce
brew install --cask pycharm-ce
brew install --cask anki
brew install --cask postman
brew install --cask spectacle
brew install --cask tunnelblick
brew install nano
brew install highlight		# highlighting for nano
brew install wireshark
brew install git
brew install hub
brew install duti
brew install gradle
brew install maven
brew install helm
brew install helmfile
brew install htop
brew install jq
brew install kafka
brew install kafkacat
brew install mysql
brew install nmap
brew install pyenv
brew install wget
brew install ranger
brew install sshrc
brew install tfenv
brew install tree
brew install watch
brew install yt-dlp/taps/yt-dlp		# youtube video downloader
brew install openjdk@11
brew install openjdk@8

# nano highlighting 	(if doesn't work follow instructions at https://github.com/scopatz/nanorc)
wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh

# sshrc
wget https://raw.githubusercontent.com/cdown/sshrc/master/sshrc
chmod +x sshrc
sudo mv sshrc /usr/local/bin

# Duti file associations
duti -s com.microsoft.VSCode .css all
duti -s com.microsoft.VSCode .go all
duti -s com.microsoft.VSCode .java all
duti -s com.microsoft.VSCode .js all
duti -s com.microsoft.VSCode .cfg all
duti -s com.microsoft.VSCode .json all
duti -s com.microsoft.VSCode .md all
duti -s com.microsoft.VSCode .py all
duti -s com.microsoft.VSCode .rb all
duti -s com.microsoft.VSCode .rs all
duti -s com.microsoft.VSCode .sh all
duti -s com.microsoft.VSCode .swift all
duti -s com.microsoft.VSCode .txt all
duti -s com.microsoft.VSCode .conf all
duti -s com.microsoft.VSCode .properties all
duti -s com.microsoft.VSCode .yaml all
duti -s com.microsoft.VSCode .yml all
duti -s com.microsoft.VSCode .xml all
duti -s com.microsoft.VSCode .Jenkinsfile all
duti -s com.microsoft.VSCode Jenkinsfile all

# vscode recreate links
rm /Users/omomotov/Library/Application\ Support/Code/User/settings.json
rm /Users/omomotov/Library/Application\ Support/Code/User/keybindings.json
rm -rf /Users/omomotov/Library/Application\ Support/Code/User/snippets
ln ~/_docs/_projects/dotfiles/settings/vscode/settings.json /Users/omomotov/Library/Application\ Support/Code/User/settings.json
ln ~/_docs/_projects/dotfiles/settings/vscode/keybindings.json /Users/omomotov/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/_docs/_projects/dotfiles/settings/vscode/snippets/ /Users/omomotov/Library/Application\ Support/Code/User/

# vscode extentions
code --install-extension tomoki1207.pdf
code --install-extension mohsen1.prettify-json
code --install-extension PKief.material-icon-theme
code --install-extension rokoroku.vscode-theme-darcula

# bashrc recreate sym links
rm -rf ~/.bashrc
rm -rf ~/.bash_profile
rm -rf ~/.custom_commands
rm -rf ~/.sshrc
rm -rf ~/.vimrc
ln -s ~/_docs/_projects/dotfiles/settings/.bashrc ~/.bashrc
ln -s ~/_docs/_projects/dotfiles/settings/.bash_profile ~/.bash_profile
ln -s ~/_docs/_projects/dotfiles/settings/.custom_commands ~/.custom_commands
ln -s ~/_docs/_projects/dotfiles/settings/.sshrc ~/.sshrc
ln -s ~/_docs/_projects/dotfiles/settings/.vimrc ~/.vimrc
