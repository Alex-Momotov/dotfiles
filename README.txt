# _____________________________________________________________________________________________
# NEW COMPUTER SETUP 
1. curl https://raw.githubusercontent.com/alex-momotov/dotfiles/master/0_pre_install.sh | bash    # installs brew and google drive, creates all dirs
2. login to google drive desktop app and set it to mirror files to ~/_drive (look up google password in bitwarden website, not extention)
3. bash ~/_docs/_projects/dotfiles/0_install.sh
4. Create sym links for openjdk installations (commands are in output of 0_install.sh).

vivaldi
- Bitwarden extention. Configure it to not lock on computer lock and to autofil pages
- Login to Vivaldi & enable settings sync
- set it as default browser in System Preferences
- shortcut: 'bookmark panel': cmd+B

vscode
- activate dracula theme and material icon theme from command palette

iterm
- preferences > general tab > 'Preferences' subtab > "Load preferences from a custom folder or URL" > Browse and select .../dotfiles/settings/iterm/iterm_settings/ dir > 'Save current settings to folder' > also select 'save changes': 'automatically'
- close iterm > git checkout settings/iterm/iterm_settings/com.googlecode.iterm2.plist

spectacle
- change shortcuts

intellij
'File' > 'Manage IDE Settings' > 'Import settings' > import the saved file
'File' > 'Manage IDE Settings' > 'Export settings' > save intellij_settings.zip in this repo

pycharm
'File' > 'Manage IDE Settings' > 'Import settings' > import the saved file
'File' > 'Manage IDE Settings' > 'Export settings' > save pycharm_settings.zip in this repo

git
- git config --global user.name Alex-Momotov
- git config --global user.email momotovalex@gmail.com
- cd ~/.ssh; ssh-keygen -t ed25519 -C "momotovalex@gmail.com"		# generate new ssh key, don't use passphrase
- touch ~/.ssh/config # then append following to ~/.ssh/config. Make sure to use correct private key filename
  Host *
    AddKeysToAgent yes
    IdentityFile ~/.ssh/key
- ssh-add -K ~/.ssh/key		# make sure to use correct private key filename
- Add the new key (public part) to your github account via the website > configure SSO > authorise all organisations
- Add 'export GITHUB_TOKEN=12345' to ~/.company_vars (actual token is in the password manager).

system preferences
- dock on left side, put all apps on it
- trackpad scrolling speed
- mouth scrolling speed
- turn off scrolling inertia
- shortcut to minimise window with cmd+m
- turn off 'show recent applications in dock'


# _____________________________________________________________________________________________
# INFO
bash profile files
Syn links in ~/... point to files in  ~/_projects_my/dotfiles/settings/... for all the below scripts except .bash_vars_company which is stored in ~/... as the only copy.
.bash_profile		Sources .bashrc
.bashrc 			Contains main config. Sources .sshrc, .custom_commands, .bash_vars_company
.sshrc				Tool that copies content of .sshrc to a remote server when doing ssh. Sets command line prompt colour. "brew install sshrc"
.custom_commands	My own bash functions and utils.
.company_vars	    Sensitive company specific vars, the file is never checked into VSC.




