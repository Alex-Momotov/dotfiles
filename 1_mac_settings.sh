defaults write -g InitialKeyRepeat -int 20 # Delay before key repeat, default min is 15
defaults write -g KeyRepeat -int 1 # Key repeat speed
defaults write -g com.apple.trackpad.scaling -float 20.0 # Trackpad speed
defaults write com.apple.finder QuitMenuItem -bool true # Able to quit Finder

chsh -s /bin/bash  # make bash the default shell
