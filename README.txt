# _____________________________________________________________________________________________
# NEW COMPUTER SETUP 
basics
1. Intall google drive manually and set it up to mirror files to ~/_drive
2. bash 0_new_computer.sh
3. bash 1_recreate_sym_links.sh

vivaldi
- Bitwarden extention. Configure it to not lock on computer lock and to autofil pages
- Login to Vovaldi & enable settings sync
- set it as default browser in System Preferences

vscode
- bash 2_vscode_create_links.sh

intellij
"File" -> "Export settings" -> save intellij_settings.zip in this repo
"File" -> "Import settings" -> import the saved file

pycharm
"File" -> "Export settings" -> save pycharm_settings.zip in this repo
"File" -> "Import settings" -> import the saved file

hub
Add the following to ~/.company_vars (actual token is in the password manager).
export GITHUB_TOKEN=12345

# _____________________________________________________________________________________________
# INFO

bash profile files
Syn links in ~/... point to files in  ~/_projects_my/dotfiles/settings/... for all the below scripts except .bash_vars_company which is stored in ~/... as the only copy.
.bash_profile		Sources .bashrc
.bashrc 			Contains main config. Sources .sshrc, .custom_commands, .bash_vars_company
.sshrc				Tool that copies content of .sshrc to a remote server when doing ssh. Sets command line prompt colour. "brew install sshrc"
.custom_commands	My own bash functions and utils.
.company_vars	    Sensitive company specific vars, the file is never checked into VSC.

iterm2
# Save / load settings
Preferences > General tab > 'Preferences' subtab > "Load preferences from a custom folder or URL" > Browse and select .../dotfiles/settings/iterm/iterm_settings/ dir > 'Save current settings to folder'.

# Theme (only do if theme wasn't ported with settings)
Preferences > Profiles > Colors tab > "Color Presets" dropdown > select "Import" 
> import the iterm/vscode.itermcolors file > Click "Color Presets" dropdown again > select the "vscode" preset.


