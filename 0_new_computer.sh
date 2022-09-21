# brew, bash, dirs
pushd ~; mkdir mkdir _docs _projects _resources _workspace _workspace2; touch .company_vars; popd;	# create home dirs
chsh -s /bin/bash       # switch default shell to bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"     # install brew

# mac settings
defaults write -g InitialKeyRepeat -int 20 # Delay before key repeat, default min is 15
defaults write -g KeyRepeat -int 1 # Key repeat speed
defaults write -g com.apple.trackpad.scaling -float 20.0 # Trackpad speed
defaults write com.apple.finder QuitMenuItem -bool true # Able to quit Finder

# install software
brew install --cask google-drive
brew install --cask visual-studio-code
brew install --cask forklift
brew install --cask slack
brew install --cask vivaldi
brew install --cask firefox
brew install --cask iterm2
brew install --cask intellij-idea-ce
brew install --cask pycharm-ce
brew install --cask datagrip
brew install --cask postman
brew install --cask anki
brew install --cask postman
brew install --cask spectacle
brew install nano
brew install highlight		# highlighting for nano
brew install wireshark
brew install git
brew install hub
brew install duti
brew install gradle
brew install helm
brew install helmfile
brew install htop
brew install jq
brew install kafka
brew install kafkacat
brew install mysql
brew install maven
brew install nmap
brew install openjdk@11
brew install openjdk@8
brew install pyenv
brew install ranger
brew install sshrc
brew install tfenv
brew install tree
brew install watch
brew install yt-dlp/taps/yt-dlp		# youtube video downloader

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
