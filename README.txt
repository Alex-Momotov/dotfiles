# _____________________________________________________________________________________________
# NEW COMPUTER SETUP 
0. Install brew https://brew.sh     # make sure to run command to setup links
1. curl https://raw.githubusercontent.com/alex-momotov/dotfiles/master/0_pre_install.sh | bash    # installs google drive, creates all dirs
2. login to google drive desktop app and set it to mirror files to ~/_drive (look up google password in bitwarden website, not extention)
3. bash ~/_docs/_projects/dotfiles/1_install.sh
4. Create sym links for openjdk installations (commands are in output of 1_install.sh).
5. Restart computer

apple
- dock on left side, put all apps on it
- trackpad scrolling speed 
- mouth scrolling speed
- turn off scrolling inertia
- shortcut to minimise window with cmd+m
- turn off 'show recent applications in dock'
- minimise motion
- tap to click
- natural scrolling - turn off
- set control key to be left most
- fingerprint
- login to apple account
- doc icons placement
- Settings > Battery > Options > turn off "Slightly dim the display on battery"

vivaldi
- Bitwarden extention. Configure it to not lock on computer lock and to autofil pages
- Login to Vivaldi & enable settings sync
- set it as default browser in System Preferences
- setup shortcuts in ~/_learning/_misc/shortcuts.txt

git
- git config --global user.name Alex-Momotov
- git config --global user.email momotovalex@gmail.com

git - ssh authentication, for git cli commands that use SSH
- cd ~/.ssh && ssh-keygen -t ed25519 -C "momotovalex@gmail.com"		# generate new ssh key, don't use passphrase
- touch ~/.ssh/config # then append following to ~/.ssh/config. Make sure to use correct private key filename
  Host *
    AddKeysToAgent yes
    IdentityFile ~/.ssh/key
- ssh-add -K ~/.ssh/key		# make sure to use correct private key filename
- Add the new key (public part) to your github account via the website > configure SSO > authorise all organisations

git - access token authentication, for hub cli commands that use github API
- touch ~/.config/hub # then append the following to ~/.config/hub. Take github access token value from password manager
  --- 
  github.com: 
  - oauth_token: <GITHUB_ACCESS_TOKEN>
    user: Alex-Momotov

vscode
- activate dracula theme and material icon theme from command palette
- switch between running commands in integrated/external terminal:
  - integrated          workbench.action.terminal.runSelectedText
  - external terminal   run-external.iterm
  * Search 'Open Keyboard Shortcuts (JSON)' and switch up last statement

iterm
- preferences > general tab > 'Preferences' subtab > "Load preferences from a custom folder or URL" > Browse and select .../dotfiles/settings/iterm/iterm_settings/ dir > 'Save current settings to folder' > also select 'save changes': 'automatically'
- close iterm > git checkout settings/iterm/iterm_settings/com.googlecode.iterm2.plist

spectacle
- disable control+arrow key shortcuts used by Spectable under Settings > Keyboard > Shortcuts > Mission control 
- change shortcuts

intellij
'File' > 'Manage IDE Settings' > 'Import settings' > import the saved file
'File' > 'Manage IDE Settings' > 'Export settings' > save intellij_settings.zip in this repo

pycharm
'File' > 'Manage IDE Settings' > 'Import settings' > import the saved file
'File' > 'Manage IDE Settings' > 'Export settings' > save pycharm_settings.zip in this repo

# _____________________________________________________________________________________________
# INFO
bash profile files
Sym links in ~/... point to files in  ~/_projects_my/dotfiles/settings/... for all the below scripts except .company_vars which is stored in ~/... as the only copy.
.bash_profile		  Sources .bashrc
.bashrc 			    Contains main config. Sources .sshrc, .custom_commands, .bash_vars_company
.sshrc				    Tool that copies content of .sshrc to a remote server when doing ssh. Sets command line prompt colour. "brew install sshrc"
.custom_commands	My own bash functions and utils.
.company_vars	    Sensitive company specific vars, the file is never checked into VSC.




