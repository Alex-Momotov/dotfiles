# _____________________________________________________________________________________________
# IntelliJ Idea
"File" -> "Export settings" -> save intellij_settings.zip in this repo
"File" -> "Import settings" -> import the saved file

# IntelliJ Google code style
Settings > Editor > Code style > Java > click cog icon > Import scheme ... > select path to 'intellij_java_google_style.xml' file > 
> click 'Scheme' drop down, and select 'GoogleStyle' > now you can do 'Reformat Code' shortcut to reformat everything in Google code style.
# _____________________________________________________________________________________________
# Pycharm
"File" -> "Export settings" -> save pycharm_settings.zip in this repo
"File" -> "Import settings" -> import the saved file

# _____________________________________________________________________________________________
# Bash profile
# Syn links in ~/... point to files in  ~/_projects_my/dotfiles/... for all the below 
# scripts except .bash_vars_company which is stored in ~/... as the only copy.
.bash_profile		Sources .bashrc
.bashrc 			Contains main config. Sources .sshrc, .custom_commands, .bash_vars_company
.sshrc				Tool that copies content of .sshrc to a remote server when doing ssh. Sets command line prompt colour. "brew install sshrc"
.custom_commands	My own bash functions and utils.
.company_vars	    Sensitive company specific vars, the file is never checked into VSC.

# _____________________________________________________________________________________________
# VSCode
Original setting files remain under ~/_projects_my/dotfiles/vscode/.
vscode dir contains create_links.sh script. It creates hard links for keybindings.josn and settings.json 
and a symlink for snippets directory. 

If you change vscode settings, the changes will be reflected in the ~/_projects_my/dotfiles/vscode/ dir.
HOWEVER! If you 'git checkout' unwanted chenges in dotfiles dir, your VSCode settings will still be the same.
This is because 'git checkout' does not work with hard links. Instead do this:
1. git checkout unwanted changes
2. git add + git commit wanted changes
3. Run create_links.sh and it will recreate files under "~/Library/Application Support/Code/User/"

To list current extensions run in terminal: code --list-extensions
hashicorp.terraform
mohsen1.prettify-json
ms-azuretools.vscode-docker
nachocab.run-external
puppet.puppet-vscode
sensourceinc.vscode-sql-beautify

# _____________________________________________________________________________________________
# iterm2

# Save / load settings from file
Preferences > General tab > 'Preferences' subtab > "Load preferences from a custom folder or URL" 
> Browse and select .../dotfiles/iterm/iterm/iterm_settings/ dir > 'Save current settings to folder'.

# Theme (only do if theme wasn't ported with settings)
Preferences > Profiles > Colors tab > "Color Presets" dropdown > select "Import" 
> import the iterm/vscode.itermcolors file > Click "Color Presets" dropdown again > select the "vscode" preset.

# _____________________________________________________________________________________________
# All else
brew install --cask google-backup-and-sync
brew install --cask forklift
brew install --cask slack
brew install --cask vivaldi
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask intellij-idea
brew install --cask pycharm
brew install --cask datagrip
brew install --cask postman
brew install --cask anki
brew install --cask postman
brew install --cask spectacle
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

